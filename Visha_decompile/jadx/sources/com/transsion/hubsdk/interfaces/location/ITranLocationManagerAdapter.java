package com.transsion.hubsdk.interfaces.location;

import android.os.UserHandle;

public interface ITranLocationManagerAdapter {
    void setLocationEnabledForUser(boolean z, UserHandle userHandle);
}
