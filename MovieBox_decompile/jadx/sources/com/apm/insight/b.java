package com.apm.insight;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONArray;

public final class b implements ICrashCallback, IOOMCallback {

    private IOOMCallback f18705a;

    private ICrashCallback f18706b;

    private String f18707c;

    public b(String str, ICrashCallback iCrashCallback) {
        this.f18707c = str;
        this.f18706b = iCrashCallback;
    }

    public final void a(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j10, JSONArray jSONArray) {
        if (this.f18705a == null || jSONArray == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (TextUtils.equals(a.a(jSONArray.optJSONObject(i10), "header", "aid"), this.f18707c)) {
                this.f18705a.onCrash(crashType, th2, thread, j10);
            }
        }
    }

    @Override
    public final void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
    }

    @Override
    public final void onCrash(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j10) {
    }

    public b(String str, IOOMCallback iOOMCallback) {
        this.f18707c = str;
        this.f18705a = iOOMCallback;
    }

    public final void a(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread, JSONArray jSONArray) {
        if (this.f18706b == null || jSONArray == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (TextUtils.equals(a.a(jSONArray.optJSONObject(i10), "header", "aid"), this.f18707c)) {
                this.f18706b.onCrash(crashType, str, thread);
            }
        }
    }

    public final void a(@NonNull CrashType crashType, @Nullable String str, @Nullable String str2, String str3) {
        d dVarA;
        if (this.f18706b == null || (dVarA = d.a(this.f18707c)) == null || !dVarA.a(str3, str2)) {
            return;
        }
        this.f18706b.onCrash(crashType, str, null);
    }
}
