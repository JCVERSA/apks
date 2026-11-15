package com.google.android.play.core.install;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import gb.a;
import java.util.Locale;

public class InstallException extends ApiException {
    public InstallException(int i10) {
        super(new Status(i10, String.format(Locale.getDefault(), "Install Error(%d): %s", Integer.valueOf(i10), a.a(i10))));
        if (i10 == 0) {
            throw new IllegalArgumentException("errorCode should not be 0.");
        }
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
