def sort_algo(sample_list)
　　sample_list[0],sample_list[2] = sample_list[2],sample_list[0]
　　return sample_list 
end

sample_list = [5,2,9]
p sort_algo(sample_list)