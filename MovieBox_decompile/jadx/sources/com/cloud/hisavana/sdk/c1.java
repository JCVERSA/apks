package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c1 {

    public static final a f21121c = new a(null);

    private final String f21122a;

    private final String f21123b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(List list) {
            c1 c1Var;
            if (list == null) {
                return CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
                String codeSeatId = configCodeSeatDTO.getCodeSeatId();
                if (codeSeatId != null) {
                    Intrinsics.e(codeSeatId);
                    c1Var = new c1(codeSeatId, GsonUtil.d(configCodeSeatDTO));
                } else {
                    c1Var = null;
                }
                if (c1Var != null) {
                    arrayList.add(c1Var);
                }
            }
            return arrayList;
        }

        private a() {
        }
    }

    public c1(String codeSeatId, String str) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        this.f21122a = codeSeatId;
        this.f21123b = str;
    }

    public final String a() {
        return this.f21122a;
    }

    public final String b() {
        return this.f21123b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return Intrinsics.c(this.f21122a, c1Var.f21122a) && Intrinsics.c(this.f21123b, c1Var.f21123b);
    }

    public int hashCode() {
        int iHashCode = this.f21122a.hashCode() * 31;
        String str = this.f21123b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CloudConfigEntity(codeSeatId=" + this.f21122a + ", code_seat_bean=" + this.f21123b + ')';
    }
}
