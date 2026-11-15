package com.transsion.shorttv._channel;

import androidx.p009lifecycle.c0;
import com.transsion.shorttv.bean.Subject;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public abstract class a {

    static final class C0628a implements c0, FunctionAdapter {

        private final Function1 f50573a;

        C0628a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50573a = function;
        }

        @Override
        public final Function a() {
            return this.f50573a;
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
            this.f50573a.invoke(obj);
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
        JSONObject jSONObject = (ops == null || ops.length() == 0 || (ops2 = subject.getOps()) == null) ? new JSONObject() : new JSONObject(ops2);
        jSONObject.put("rec_type", str);
        return jSONObject.toString();
    }
}
