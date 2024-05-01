def flatten_list(lst):
    flattened = []
    for item in lst:
        if isinstance(item, list):
            flattened.extend(flatten_list(item))
        else:
            flattened.append(item)
    return flattened

def reverse_list(lst):
    reversed_list = lst[::-1]
    for i in range(len(reversed_list)):
        if isinstance(reversed_list[i], list):
            reversed_list[i] = reverse_list(reversed_list[i])
    return reversed_list

# Test
input_list = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
flattened_list = flatten_list(input_list)
reversed_list = reverse_list(input_list)

print("Flattened List:", flattened_list)
print("Reversed List:", reversed_list)
