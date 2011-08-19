require 'spec_helper'

class ElementLocatorsTestPageObject
  include PageObject
end


describe PageObject::ElementLocators do
  let(:watir_browser) { mock_watir_browser }
  let(:watir_page_object) { ElementLocatorsTestPageObject.new(watir_browser) }
  
  it "should find a button element" do
    watir_browser.should_receive(:button).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.button_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::Button
  end
  
  it "should find a text field element" do
    watir_browser.should_receive(:text_field).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.text_field_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::TextField
  end
  
  it "should find a hidden field element" do
    watir_browser.should_receive(:hidden).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.hidden_field_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::HiddenField
  end
  
  it "should find a text area element" do
    watir_browser.should_receive(:textarea).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.text_area_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::TextArea
  end
  
  it "should find a select list element" do
    watir_browser.should_receive(:select_list).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.select_list_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::SelectList
  end
  
  it "should find a link element" do
    watir_browser.should_receive(:link).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.link_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::Link
  end
  
  it "should find a check box" do
    watir_browser.should_receive(:checkbox).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.checkbox_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::CheckBox
  end
  
  it "should find a radio button" do
    watir_browser.should_receive(:radio).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.radio_button_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::RadioButton
  end
  
  it "should find a div" do
    watir_browser.should_receive(:div).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.div_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::Div
  end
  
  it "should find a span" do
    watir_browser.should_receive(:span).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.span_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::Span
  end
  
  it "should find a table" do
    watir_browser.should_receive(:table).with(:id => 'blah').and_return(watir_browser)
    element = watir_page_object.table_element(:id => 'blah')
    element.should be_instance_of PageObject::Elements::Table
  end
end