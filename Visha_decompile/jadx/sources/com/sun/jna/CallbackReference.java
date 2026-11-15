package com.sun.jna;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.t18;
import defpackage.ubc;
import defpackage.vq0;
import defpackage.wq1;
import java.io.Closeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

public abstract class CallbackReference extends WeakReference implements Closeable {
    public static final Map b = new WeakHashMap();
    public static final Map c = new WeakHashMap();
    public static final Map d = new WeakHashMap();
    public static final Map e = Collections.synchronizedMap(new WeakHashMap());
    public static final Map f = new ConcurrentHashMap();
    public static final Method g;
    public static final Class h;
    public static final Map i;

    public static final class CallbackReferenceDisposer implements Runnable {
        private Pointer cbstruct;

        public CallbackReferenceDisposer(Pointer pointer) {
            this.cbstruct = pointer;
        }

        @Override
        public synchronized void run() {
            try {
                Pointer pointer = this.cbstruct;
                if (pointer != null) {
                    try {
                        Native.freeNativeCallback(pointer.b);
                        CallbackReference.f.remove(Long.valueOf(this.cbstruct.b));
                        this.cbstruct.b = 0L;
                        this.cbstruct = null;
                    } catch (Throwable th) {
                        CallbackReference.f.remove(Long.valueOf(this.cbstruct.b));
                        this.cbstruct.b = 0L;
                        this.cbstruct = null;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static {
        try {
            g = vq0.class.getMethod(CmcdData.OBJECT_TYPE_AUDIO_ONLY, Object[].class);
            if (t18.v()) {
                try {
                    h = wq1.class;
                } catch (ClassNotFoundException e2) {
                    throw new Error("Error loading DLLCallback class", e2);
                }
            } else {
                h = null;
            }
            i = new WeakHashMap();
        } catch (Exception unused) {
            throw new Error("Error looking up CallbackProxy.callback() method");
        }
    }

    public static void d() {
        Iterator it = new LinkedList(f.values()).iterator();
        while (it.hasNext()) {
            ubc.a(((Reference) it.next()).get());
        }
    }
}
