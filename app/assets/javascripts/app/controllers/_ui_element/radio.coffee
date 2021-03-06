# coffeelint: disable=camel_case_classes
class App.UiElement.radio extends App.UiElement.ApplicationUiElement
  @render: (attribute, params) ->

    # build options list based on config
    @getConfigOptionList(attribute, params)

    # build options list based on relation
    @getRelationOptionList(attribute, params)

    # add null selection if needed
    @addNullOption(attribute, params)

    # sort attribute.options
    @sortOptions(attribute, params)

    # finde selected/checked item of list
    @selectedOptions(attribute, params)

    # disable item of list
    @disabledOptions(attribute, params)

    # filter attributes
    @filterOption(attribute, params)

    $( App.view('generic/radio')( attribute: attribute ) )
