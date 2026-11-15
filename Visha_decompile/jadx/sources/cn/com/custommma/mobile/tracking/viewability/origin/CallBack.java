package cn.com.custommma.mobile.tracking.viewability.origin;

import java.io.Serializable;

public interface CallBack extends Serializable {
    void onFailed(String str);

    void onSuccess(String str);
}
