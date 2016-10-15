
DEBUG = false

def DBG dbg
  print "#{dbg}\n" if DEBUG
end

def dDEBUG_TRACE_N_HEADERS data_hash
  DBG "#{data_hash[HEADERS_KEY].size} header files found in '#{data_hash[DIR_KEY]}'"
#   DBG "\tsource_headers=#{data_hash[HEADERS_KEY]}"
end

def dDEBUG_TRACE_PARSE_CTAG header , symbol , role , line_n , filename , prototype , is_override , is_virtual
  DBG "\n[ENTITY]: #{header}::#{symbol}"                                                     +
      "\n\tfilename=#{filename}\n\tsymbol=#{symbol}\n\trole=#{role}\n\tline_n=#{line_n}"     +
      "\n\tprototype=#{prototype}\n\tis_virtual=#{is_virtual}\n\tis_override=#{is_override}\n"
end

def dDEBUG_TRACE_LOAD_CTAG ctag
  DBG "ctag=" + (((ctag.select {|ea| ea.is_a? String }).to_s.gsub ",",",\n\t").gsub "=>"," => ") + "\n"
end
