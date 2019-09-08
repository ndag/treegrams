function D = MinMaxPow(D)

	n = size(D, 1);	

	for k=1:n
	
		i2k = repmat(D(:,k), 1, n);
		k2j = repmat(D(k,:), n, 1);
		%k2k = repmat(D(k,k),n,n);
        %Ck = max(k2k,max(i2k,k2j));
        Ck = max(i2k,k2j);
		D = min(D, Ck);
	
	end

end