package com.apm.insight.k;

import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class c {

    private static ConcurrentLinkedQueue<c> f18988a = new ConcurrentLinkedQueue<>();

    static class AnonymousClass1 {

        static final int[] f18989a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f18989a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18989a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18989a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class a {

        private JSONObject f18990a;

        private JSONObject f18991b;

        private CrashType f18992c;

        a(JSONObject jSONObject, CrashType crashType) {
            this.f18992c = crashType;
            if (crashType == CrashType.LAUNCH) {
                this.f18990a = ((JSONArray) jSONObject.opt("data")).optJSONObject(0);
            } else {
                this.f18990a = jSONObject;
            }
            this.f18991b = jSONObject.optJSONObject("header");
        }

        @Nullable
        public final String a() {
            return this.f18990a.optString("crash_thread_name", null);
        }

        public final long b() {
            return this.f18990a.optInt("app_start_time", -1);
        }

        @Nullable
        public final String c() {
            int i10 = AnonymousClass1.f18989a[this.f18992c.ordinal()];
            if (i10 == 1) {
                return this.f18990a.optString("data", null);
            }
            if (i10 == 2) {
                return this.f18990a.optString("stack", null);
            }
            if (i10 != 3) {
                return null;
            }
            return this.f18990a.optString("data", null);
        }
    }

    static void a(CrashType crashType, JSONObject jSONObject) {
        ConcurrentLinkedQueue<c> concurrentLinkedQueue = f18988a;
        if (concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
            return;
        }
        new a(jSONObject, crashType);
        while (!f18988a.isEmpty()) {
            f18988a.poll();
        }
        f18988a = null;
    }
}
