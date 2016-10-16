
DEBUG = false

def DBG dbg
  print "#{dbg}\n" if DEBUG
end

def dDEBUG_TRACE_N_HEADERS headers , directory
  DBG "#{headers.size} header files found in '#{directory}'"
#   DBG "\theaders=#{headers}"
end

def dDEBUG_TRACE_PARSE_CTAG filename , identifier , line_n , kind , prototype , is_virtual , is_override
  DBG "\n[ENTITY]: #{filename}::#{identifier}"                                                   +
      "\n\tfilename=#{filename}\n\tidentifier=#{identifier}\n\tkind=#{kind}\n\tline_n=#{line_n}" +
      "\n\tprototype=#{prototype}\n\tis_virtual=#{is_virtual}\n\tis_override=#{is_override}\n"
end

def dDEBUG_TRACE_LOAD_CTAG ctag
  DBG "ctag=" + (((ctag.select {|ea| ea.is_a? String }).to_s.gsub ",",",\n\t").gsub "=>"," => ") + "\n"
end
