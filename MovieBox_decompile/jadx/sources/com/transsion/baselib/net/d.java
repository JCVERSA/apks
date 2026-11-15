package com.transsion.baselib.net;

import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class d {

    public static final d f42179a = new d();

    private static final AtomicBoolean f42180b = new AtomicBoolean(false);

    private static final AtomicBoolean f42181c = new AtomicBoolean(true);

    private d() {
    }

    public static final boolean d(Ref.ObjectRef objectRef, Message msg) {
        Intrinsics.h(msg, "msg");
        wf.a.C0922a.r(wf.a.f74274a, "hook", new String[]{"msg= " + msg.what}, false, 4, null);
        AtomicBoolean atomicBoolean = f42180b;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
            int i10 = msg.what;
            int i11 = Build.VERSION.SDK_INT;
            boolean z10 = i11 >= 35 && i10 == 164;
            boolean z11 = i11 >= 28 && i10 == 159;
            boolean z12 = i11 < 28 && i10 == 100;
            if (z11 || z12 || z10) {
                f42181c.set(true);
            } else {
                f42181c.set(false);
            }
        }
        Handler.Callback callback = (Handler.Callback) objectRef.element;
        if (callback != null) {
            return callback.handleMessage(msg);
        }
        return false;
    }

    public final AtomicBoolean b() {
        return f42181c;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [T, android.os.Handler$Callback] */
    public final void c() {
        try {
            Class<?> cls = Class.forName(ProcessUtils.ACTIVITY_THREAD);
            Field declaredField = cls.getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Field declaredField2 = cls.getDeclaredField("mH");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            Field declaredField3 = obj2.getClass().getSuperclass().getDeclaredField("mCallback");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj2);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (obj3 != null) {
                objectRef.element = (Handler.Callback) obj3;
            }
            declaredField3.set(obj2, new Handler.Callback() {
                @Override
                public final boolean handleMessage(Message message) {
                    return d.d(objectRef, message);
                }
            });
        } catch (Exception e10) {
            String message = e10.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("exception= ");
            sb2.append(message);
        }
    }
}
