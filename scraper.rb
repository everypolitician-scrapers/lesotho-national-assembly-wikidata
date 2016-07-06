#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

members = WikiData::Category.new('Category:Members of the National Assembly (Lesotho)', 'en').member_titles
speakers = WikiData::Category.new('Category:Speakers of the National Assembly (Lesotho)', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: members | speakers })

