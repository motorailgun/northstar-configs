#!/usr/bin/ruby

require "JSON"

file = open("/etc/ns-docker/ns-config.json", "r")
config = JSON[file.read]
file.close

env_string = ""

config.each_pair{|key, val|
    unless key != "NS_EXTRA_ARGUMENTS" then
        env_string += "--env #{key}='#{val}' "
    else
        ex_args = ""
        val.each_pair{|conkey, convar|
            if conver.to_i.to_s.length == conver.length then
                ex_args += "#{conkey} #{conver} "    
            else
                ex_args += "#{conkey} '#{conver}' "
            end
        }
        env_string += "--env #{key}=\"#{ex_args}\""
    end
}

print env_string