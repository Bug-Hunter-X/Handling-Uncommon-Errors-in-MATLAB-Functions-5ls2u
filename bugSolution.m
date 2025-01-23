function result = myFunctionImproved(input)
  %Improved version of the function with error handling
  ...
  if someCondition
    result = someValue;
  else
    result = NaN; % Return NaN instead of an empty array
    warning('Function encountered a condition where result is undefined. Returning NaN.');
  end
 end

 % Example usage with improved error handling
 input = [1,2,3];
 result = myFunctionImproved(input);
 if isnan(result)
    disp('Function returned NaN. Check the function for potential issues.'); % Handle NaN scenario
 end

 % Example of handling matrix singularity
 A = [1 2;3 4];
 b = [5;6];
 if rank(A) < length(b) %Check if A is singular before solving
    error('Matrix A is singular, the system of equation cannot be solved');
 else
    x = A\b;
 end