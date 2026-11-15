package com.cloud.tmc.miniapp.utils.toast.config;

import com.cloud.tmc.miniapp.utils.toast.ToastParams;

public interface IToastInterceptor {
    boolean intercept(ToastParams toastParams);
}
