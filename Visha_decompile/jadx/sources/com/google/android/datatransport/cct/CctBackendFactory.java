package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import defpackage.a50;
import defpackage.bs0;
import defpackage.gl1;
import defpackage.z8b;

@Keep
public class CctBackendFactory implements a50 {
    @Override
    public z8b create(gl1 gl1Var) {
        return new bs0(gl1Var.b(), gl1Var.e(), gl1Var.d());
    }
}
