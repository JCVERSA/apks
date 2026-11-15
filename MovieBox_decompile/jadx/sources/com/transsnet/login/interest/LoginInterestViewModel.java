package com.transsnet.login.interest;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class LoginInterestViewModel extends androidx.p009lifecycle.b {

    private final b0 f58143b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginInterestViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f58143b = new b0();
    }

    public final LiveData d() {
        return this.f58143b;
    }

    public final void e(List list) {
        if (list != null) {
            k.d(u0.a(this), y0.b(), null, new LoginInterestViewModel$postInterest$1$1(this, list, null), 2, null);
        }
    }
}
