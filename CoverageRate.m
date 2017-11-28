function cr = CoverageRate( real_image, fake_image )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    % CR 1 = white and 0 = black
    num_valid = sum(sum(real_image == 0));
    fprintf('Valid pixels: %d \n', num_valid);
    
    num_less = 0;
    num_over = 0;
    for i = 1: size(real_image, 1)
        for j = 1: size(real_image, 2)
            % less
            if real_image(j, i) == 0 && fake_image(j, i) == 1
                num_less = num_less + 1;
            end

            % over
            if real_image(j, i) == 1 && fake_image(j, i) == 0
                num_over = num_over + 1;
            end
        end
    end

    fprintf('Less pixels: %d \n', num_less);
    fprintf('Over pixels: %d \n', num_over);

    cr = 1.0 * (num_valid - num_less - num_over) / num_valid;
end

