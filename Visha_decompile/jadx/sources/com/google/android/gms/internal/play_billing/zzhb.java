package com.google.android.gms.internal.play_billing;

import java.io.IOException;

public class zzhb extends IOException {
    public zzhb(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public zzhb(String str) {
        super(str);
    }
}
