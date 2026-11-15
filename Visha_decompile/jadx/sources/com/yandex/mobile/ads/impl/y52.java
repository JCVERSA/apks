package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.y52;
import java.util.ArrayList;
import java.util.Arrays;

public final class y52 implements km {
    public static final km.a<y52> g = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return y52.a(bundle);
        }
    };
    public final int b;
    public final String c;
    public final int d;
    private final jc0[] e;
    private int f;

    public y52(String str, jc0... jc0VarArr) {
        hg.a(jc0VarArr.length > 0);
        this.c = str;
        this.e = jc0VarArr;
        this.b = jc0VarArr.length;
        int iC = w01.c(jc0VarArr[0].m);
        this.d = iC == -1 ? w01.c(jc0VarArr[0].l) : iC;
        a();
    }

    public final jc0 a(int i) {
        return this.e[i];
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y52.class != obj.getClass()) {
            return false;
        }
        y52 y52Var = (y52) obj;
        return this.c.equals(y52Var.c) && Arrays.equals(this.e, y52Var.e);
    }

    public final int hashCode() {
        if (this.f == 0) {
            this.f = v3.a(this.c, 527, 31) + Arrays.hashCode(this.e);
        }
        return this.f;
    }

    public final int a(jc0 jc0Var) {
        int i = 0;
        while (true) {
            jc0[] jc0VarArr = this.e;
            if (i >= jc0VarArr.length) {
                return -1;
            }
            if (jc0Var == jc0VarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public static y52 a(Bundle bundle) {
        kk0 kk0VarA;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
        if (parcelableArrayList == null) {
            kk0VarA = kk0.h();
        } else {
            kk0VarA = lm.a(jc0.I, parcelableArrayList);
        }
        return new y52(bundle.getString(Integer.toString(1, 36), ""), (jc0[]) kk0VarA.toArray(new jc0[0]));
    }

    private void a() {
        String str = this.e[0].d;
        if (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) {
            str = "";
        }
        int i = this.e[0].f | 16384;
        int i2 = 1;
        while (true) {
            jc0[] jc0VarArr = this.e;
            if (i2 >= jc0VarArr.length) {
                return;
            }
            String str2 = jc0VarArr[i2].d;
            if (str2 == null || str2.equals(C.LANGUAGE_UNDETERMINED)) {
                str2 = "";
            }
            if (!str.equals(str2)) {
                jc0[] jc0VarArr2 = this.e;
                et0.a("TrackGroup", "", new IllegalStateException("Different languages combined in one TrackGroup: '" + jc0VarArr2[0].d + "' (track 0) and '" + jc0VarArr2[i2].d + "' (track " + i2 + ")"));
                return;
            }
            jc0[] jc0VarArr3 = this.e;
            if (i != (jc0VarArr3[i2].f | 16384)) {
                et0.a("TrackGroup", "", new IllegalStateException("Different role flags combined in one TrackGroup: '" + Integer.toBinaryString(jc0VarArr3[0].f) + "' (track 0) and '" + Integer.toBinaryString(this.e[i2].f) + "' (track " + i2 + ")"));
                return;
            }
            i2++;
        }
    }
}
