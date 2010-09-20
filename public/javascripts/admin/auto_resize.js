/* Based on http://stackoverflow.com/questions/7477/autosizing-textarea/948445#948445 Heavily modified by Mario Visic */

if (window.Widget == undefined)
{
  window.Widget = {}; 
}

Widget.Textarea = Class.create(
{
  initialize: function(textarea, options)
  {
    this.textarea = $(textarea);
    this.options  = $H(
    {
      'min_height'  : 280,
       'max_length' : 400
    }).update(options);
    
    this.textarea.setStyle(
    {
      overflow    : 'hidden',
      lineHeight  : '18px'

    });

    this.textarea.observe('keyup', this.refresh.bind(this));

    this._shadow = new Element('div').setStyle(
    {
      lineHeight  : this.textarea.getStyle('lineHeight'),
      fontSize    : this.textarea.getStyle('fontSize'),
      fontFamily  : this.textarea.getStyle('fontFamily'),
      position    : 'absolute',
      top         : '-10000px',
      left        : '-10000px',
      width       : this.textarea.getWidth() + 'px'
    });
    
    this.textarea.insert(
    { 
      after: this._shadow 
    });

    this.refresh();  
  },

  refresh: function()
  { 
    this._shadow.update($F(this.textarea).replace(/\n/g, '<br/>'));
    this.textarea.setStyle(
    {
      height: Math.max(parseInt(this._shadow.getHeight()) + parseInt(this.textarea.getStyle('lineHeight').replace('px', '')), this.options.get('min_height')) + 'px'
    });
  }
});


/* Create widgets for resizing our textareas when the page is loaded */
document.observe('dom:loaded', function() 
{
  $$('textarea').each(function(textarea) 
  {
    new Widget.Textarea(textarea);
  });  
});