function m_mae = MAE( real_image, fake_image )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    m_err = real_image - fake_image;
    m_abs = abs(m_err);
    m_mae = mean2(m_abs);

end

