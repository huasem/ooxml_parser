# ooxml_parser

_ooxml_parser_ is a Ooxml files (docx, xlsx, pptx) parser written in Ruby.

## Installation

    $ gem install ooxml_parser
    
## Usage

Parse a docx file

    require 'ooxml_parser'
    docx = OoxmlParser::Parser.parse('spec/document/document_properties/page_count.docx')
    p docx.document_properties.pages # 2
    
    
## Configuration

### Units of measurements

Set units of measurements:
Possible units are `:points`, `:centimeters`, `:dxa`, `:inches`, `:emu`
Default is `:centimeters`

    OoxmlParser.configure do |config|
      config.units = :points
    end
    
    

### Accuracy

Accuracy of digits in fraction part
Default is 2 digits in fraction part

    OoxmlParser.configure do |config|
      config.accuracy = 3
    end
