package com.transsion.home.category.fragment;

import androidx.p009lifecycle.c0;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public abstract class a {

    static final class C0600a implements c0, FunctionAdapter {

        private final Function1 f43687a;

        C0600a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43687a = function;
        }

        @Override
        public final Function a() {
            return this.f43687a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f43687a.invoke(obj);
        }
    }

    public static final String a(Subject subject, String str) {
        String ops;
        String ops2;
        if (subject != null) {
            try {
                ops = subject.getOps();
            } catch (Exception e10) {
                e10.printStackTrace();
                return subject != null ? subject.getOps() : null;
            }
        } else {
            ops = null;
        }
        JSONObject jSONObject = (ops == null || ops.length() == 0 || subject == null || (ops2 = subject.getOps()) == null) ? new JSONObject() : new JSONObject(ops2);
        jSONObject.put("rec_type", str);
        return jSONObject.toString();
    }
}
