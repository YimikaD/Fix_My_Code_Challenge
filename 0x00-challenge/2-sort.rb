###
##
#  Sort integer arguments (ascending)
#
###
result = []

ARGV.each do |arg|
    # Skip if not an integer
    next if arg !~ /^-?[0-9]+$/

    # Convert to an integer
    i_arg = arg.to_i

    # Find the correct position to insert the integer
    is_inserted = false
    i = 0

    while !is_inserted && i < result.size do
        if result[i] <= i_arg
            i += 1
        else
          result.insert(i, i_arg) # Corrected insertion point.
            is_inserted = true
            break
        end
    end

    result << i_arg if !is_inserted
end

puts result
