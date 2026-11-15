package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.window.core.Version;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarProvider;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class SidecarCompat implements n {

    public static final a f14982f = new a(null);

    private final SidecarInterface f14983a;

    private final SidecarAdapter f14984b;

    private final Map f14985c;

    private final Map f14986d;

    private n.a f14987e;

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0004\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u000e0\u001d8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "Landroidx/window/layout/SidecarAdapter;", "sidecarAdapter", "callbackInterface", "<init>", "(Landroidx/window/layout/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V", "Landroidx/window/sidecar/SidecarDeviceState;", "newDeviceState", "", "onDeviceStateChanged", "(Landroidx/window/sidecar/SidecarDeviceState;)V", "Landroid/os/IBinder;", "token", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "newLayout", "onWindowLayoutChanged", "(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V", "a", "Landroidx/window/layout/SidecarAdapter;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "Ljava/util/concurrent/locks/ReentrantLock;", "c", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/window/sidecar/SidecarDeviceState;", "lastDeviceState", "Ljava/util/WeakHashMap;", "e", "Ljava/util/WeakHashMap;", "mActivityWindowLayoutInfo", "window_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class DistinctSidecarElementCallback implements SidecarInterface.SidecarCallback {

        private final SidecarAdapter sidecarAdapter;

        private final SidecarInterface.SidecarCallback callbackInterface;

        private final ReentrantLock lock;

        private SidecarDeviceState lastDeviceState;

        private final WeakHashMap mActivityWindowLayoutInfo;

        public DistinctSidecarElementCallback(SidecarAdapter sidecarAdapter, SidecarInterface.SidecarCallback callbackInterface) {
            Intrinsics.h(sidecarAdapter, "sidecarAdapter");
            Intrinsics.h(callbackInterface, "callbackInterface");
            this.sidecarAdapter = sidecarAdapter;
            this.callbackInterface = callbackInterface;
            this.lock = new ReentrantLock();
            this.mActivityWindowLayoutInfo = new WeakHashMap();
        }

        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            Intrinsics.h(newDeviceState, "newDeviceState");
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.sidecarAdapter.a(this.lastDeviceState, newDeviceState)) {
                    return;
                }
                this.lastDeviceState = newDeviceState;
                this.callbackInterface.onDeviceStateChanged(newDeviceState);
                Unit unit = Unit.f64096a;
            } finally {
                reentrantLock.unlock();
            }
        }

        public void onWindowLayoutChanged(IBinder token, SidecarWindowLayoutInfo newLayout) {
            Intrinsics.h(token, "token");
            Intrinsics.h(newLayout, "newLayout");
            synchronized (this.lock) {
                if (this.sidecarAdapter.d((SidecarWindowLayoutInfo) this.mActivityWindowLayoutInfo.get(token), newLayout)) {
                    return;
                }
                this.callbackInterface.onWindowLayoutChanged(token, newLayout);
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017¨\u0006\f"}, d2 = {"Landroidx/window/layout/SidecarCompat$TranslatingCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "(Landroidx/window/layout/SidecarCompat;)V", "onDeviceStateChanged", "", "newDeviceState", "Landroidx/window/sidecar/SidecarDeviceState;", "onWindowLayoutChanged", "windowToken", "Landroid/os/IBinder;", "newLayout", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class TranslatingCallback implements SidecarInterface.SidecarCallback {

        final SidecarCompat f14993a;

        public TranslatingCallback(SidecarCompat this$0) {
            Intrinsics.h(this$0, "this$0");
            this.f14993a = this$0;
        }

        @SuppressLint({"SyntheticAccessor"})
        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            SidecarInterface sidecarInterfaceG;
            Intrinsics.h(newDeviceState, "newDeviceState");
            Collection<Activity> collectionValues = this.f14993a.f14985c.values();
            SidecarCompat sidecarCompat = this.f14993a;
            for (Activity activity : collectionValues) {
                IBinder iBinderA = SidecarCompat.f14982f.a(activity);
                SidecarWindowLayoutInfo windowLayoutInfo = null;
                if (iBinderA != null && (sidecarInterfaceG = sidecarCompat.g()) != null) {
                    windowLayoutInfo = sidecarInterfaceG.getWindowLayoutInfo(iBinderA);
                }
                n.a aVar = sidecarCompat.f14987e;
                if (aVar != null) {
                    aVar.a(activity, sidecarCompat.f14984b.e(windowLayoutInfo, newDeviceState));
                }
            }
        }

        @SuppressLint({"SyntheticAccessor"})
        public void onWindowLayoutChanged(IBinder windowToken, SidecarWindowLayoutInfo newLayout) {
            Intrinsics.h(windowToken, "windowToken");
            Intrinsics.h(newLayout, "newLayout");
            Activity activity = (Activity) this.f14993a.f14985c.get(windowToken);
            if (activity == null) {
                Log.w("SidecarCompat", "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?");
                return;
            }
            SidecarAdapter sidecarAdapter = this.f14993a.f14984b;
            SidecarInterface sidecarInterfaceG = this.f14993a.g();
            SidecarDeviceState deviceState = sidecarInterfaceG == null ? null : sidecarInterfaceG.getDeviceState();
            if (deviceState == null) {
                deviceState = new SidecarDeviceState();
            }
            a0 a0VarE = sidecarAdapter.e(newLayout, deviceState);
            n.a aVar = this.f14993a.f14987e;
            if (aVar == null) {
                return;
            }
            aVar.a(activity, a0VarE);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IBinder a(Activity activity) {
            Window window;
            WindowManager.LayoutParams attributes;
            if (activity == null || (window = activity.getWindow()) == null || (attributes = window.getAttributes()) == null) {
                return null;
            }
            return attributes.token;
        }

        public final SidecarInterface b(Context context) {
            Intrinsics.h(context, "context");
            return SidecarProvider.getSidecarImpl(context.getApplicationContext());
        }

        public final Version c() {
            try {
                String apiVersion = SidecarProvider.getApiVersion();
                if (TextUtils.isEmpty(apiVersion)) {
                    return null;
                }
                return Version.f14949f.b(apiVersion);
            } catch (NoClassDefFoundError | UnsupportedOperationException unused) {
                return null;
            }
        }

        private a() {
        }
    }

    private static final class b implements n.a {

        private final n.a f14994a;

        private final ReentrantLock f14995b;

        private final WeakHashMap f14996c;

        public b(n.a callbackInterface) {
            Intrinsics.h(callbackInterface, "callbackInterface");
            this.f14994a = callbackInterface;
            this.f14995b = new ReentrantLock();
            this.f14996c = new WeakHashMap();
        }

        @Override
        public void a(Activity activity, a0 newLayout) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(newLayout, "newLayout");
            ReentrantLock reentrantLock = this.f14995b;
            reentrantLock.lock();
            try {
                if (Intrinsics.c(newLayout, (a0) this.f14996c.get(activity))) {
                    reentrantLock.unlock();
                    return;
                }
                reentrantLock.unlock();
                this.f14994a.a(activity, newLayout);
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
    }

    private static final class c implements View.OnAttachStateChangeListener {

        private final SidecarCompat f14997a;

        private final WeakReference f14998b;

        public c(SidecarCompat sidecarCompat, Activity activity) {
            Intrinsics.h(sidecarCompat, "sidecarCompat");
            Intrinsics.h(activity, "activity");
            this.f14997a = sidecarCompat;
            this.f14998b = new WeakReference(activity);
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            Intrinsics.h(view, "view");
            view.removeOnAttachStateChangeListener(this);
            Activity activity = (Activity) this.f14998b.get();
            IBinder iBinderA = SidecarCompat.f14982f.a(activity);
            if (activity == null || iBinderA == null) {
                return;
            }
            this.f14997a.i(iBinderA, activity);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            Intrinsics.h(view, "view");
        }
    }

    public SidecarCompat(SidecarInterface sidecarInterface, SidecarAdapter sidecarAdapter) {
        Intrinsics.h(sidecarAdapter, "sidecarAdapter");
        this.f14983a = sidecarInterface;
        this.f14984b = sidecarAdapter;
        this.f14985c = new LinkedHashMap();
        this.f14986d = new LinkedHashMap();
    }

    private final void j(Activity activity) {
        if (this.f14986d.get(activity) == null) {
            d dVar = new d(activity);
            this.f14986d.put(activity, dVar);
            activity.registerComponentCallbacks(dVar);
        }
    }

    private final void k(Activity activity) {
        activity.unregisterComponentCallbacks((ComponentCallbacks) this.f14986d.get(activity));
        this.f14986d.remove(activity);
    }

    @Override
    public void a(n.a extensionCallback) {
        Intrinsics.h(extensionCallback, "extensionCallback");
        this.f14987e = new b(extensionCallback);
        SidecarInterface sidecarInterface = this.f14983a;
        if (sidecarInterface == null) {
            return;
        }
        sidecarInterface.setSidecarCallback(new DistinctSidecarElementCallback(this.f14984b, new TranslatingCallback(this)));
    }

    @Override
    public void b(Activity activity) {
        Intrinsics.h(activity, "activity");
        IBinder iBinderA = f14982f.a(activity);
        if (iBinderA != null) {
            i(iBinderA, activity);
        } else {
            activity.getWindow().getDecorView().addOnAttachStateChangeListener(new c(this, activity));
        }
    }

    @Override
    public void c(Activity activity) {
        SidecarInterface sidecarInterface;
        Intrinsics.h(activity, "activity");
        IBinder iBinderA = f14982f.a(activity);
        if (iBinderA == null) {
            return;
        }
        SidecarInterface sidecarInterface2 = this.f14983a;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerRemoved(iBinderA);
        }
        k(activity);
        boolean z10 = this.f14985c.size() == 1;
        this.f14985c.remove(iBinderA);
        if (!z10 || (sidecarInterface = this.f14983a) == null) {
            return;
        }
        sidecarInterface.onDeviceStateListenersChanged(true);
    }

    public final SidecarInterface g() {
        return this.f14983a;
    }

    public final a0 h(Activity activity) {
        Intrinsics.h(activity, "activity");
        IBinder iBinderA = f14982f.a(activity);
        if (iBinderA == null) {
            return new a0(CollectionsKt.l());
        }
        SidecarInterface sidecarInterface = this.f14983a;
        SidecarWindowLayoutInfo windowLayoutInfo = sidecarInterface == null ? null : sidecarInterface.getWindowLayoutInfo(iBinderA);
        SidecarAdapter sidecarAdapter = this.f14984b;
        SidecarInterface sidecarInterface2 = this.f14983a;
        SidecarDeviceState deviceState = sidecarInterface2 != null ? sidecarInterface2.getDeviceState() : null;
        if (deviceState == null) {
            deviceState = new SidecarDeviceState();
        }
        return sidecarAdapter.e(windowLayoutInfo, deviceState);
    }

    public final void i(IBinder windowToken, Activity activity) {
        SidecarInterface sidecarInterface;
        Intrinsics.h(windowToken, "windowToken");
        Intrinsics.h(activity, "activity");
        this.f14985c.put(windowToken, activity);
        SidecarInterface sidecarInterface2 = this.f14983a;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerAdded(windowToken);
        }
        if (this.f14985c.size() == 1 && (sidecarInterface = this.f14983a) != null) {
            sidecarInterface.onDeviceStateListenersChanged(false);
        }
        n.a aVar = this.f14987e;
        if (aVar != null) {
            aVar.a(activity, h(activity));
        }
        j(activity);
    }

    public boolean l() {
        Class<?> cls;
        Class<?> cls2;
        Class<?> cls3;
        Class<?> cls4;
        try {
            SidecarInterface sidecarInterface = this.f14983a;
            Method method = (sidecarInterface == null || (cls = sidecarInterface.getClass()) == null) ? null : cls.getMethod("setSidecarCallback", SidecarInterface.SidecarCallback.class);
            Class<?> returnType = method == null ? null : method.getReturnType();
            Class cls5 = Void.TYPE;
            if (!Intrinsics.c(returnType, cls5)) {
                throw new NoSuchMethodException(Intrinsics.q("Illegal return type for 'setSidecarCallback': ", returnType));
            }
            SidecarInterface sidecarInterface2 = this.f14983a;
            if (sidecarInterface2 != null) {
                sidecarInterface2.getDeviceState();
            }
            SidecarInterface sidecarInterface3 = this.f14983a;
            if (sidecarInterface3 != null) {
                sidecarInterface3.onDeviceStateListenersChanged(true);
            }
            SidecarInterface sidecarInterface4 = this.f14983a;
            Method method2 = (sidecarInterface4 == null || (cls2 = sidecarInterface4.getClass()) == null) ? null : cls2.getMethod("getWindowLayoutInfo", IBinder.class);
            Class<?> returnType2 = method2 == null ? null : method2.getReturnType();
            if (!Intrinsics.c(returnType2, SidecarWindowLayoutInfo.class)) {
                throw new NoSuchMethodException(Intrinsics.q("Illegal return type for 'getWindowLayoutInfo': ", returnType2));
            }
            SidecarInterface sidecarInterface5 = this.f14983a;
            Method method3 = (sidecarInterface5 == null || (cls3 = sidecarInterface5.getClass()) == null) ? null : cls3.getMethod("onWindowLayoutChangeListenerAdded", IBinder.class);
            Class<?> returnType3 = method3 == null ? null : method3.getReturnType();
            if (!Intrinsics.c(returnType3, cls5)) {
                throw new NoSuchMethodException(Intrinsics.q("Illegal return type for 'onWindowLayoutChangeListenerAdded': ", returnType3));
            }
            SidecarInterface sidecarInterface6 = this.f14983a;
            Method method4 = (sidecarInterface6 == null || (cls4 = sidecarInterface6.getClass()) == null) ? null : cls4.getMethod("onWindowLayoutChangeListenerRemoved", IBinder.class);
            Class<?> returnType4 = method4 == null ? null : method4.getReturnType();
            if (!Intrinsics.c(returnType4, cls5)) {
                throw new NoSuchMethodException(Intrinsics.q("Illegal return type for 'onWindowLayoutChangeListenerRemoved': ", returnType4));
            }
            SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
            try {
                sidecarDeviceState.posture = 3;
            } catch (NoSuchFieldError unused) {
                SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, 3);
                Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                if (objInvoke == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
                if (((Integer) objInvoke).intValue() != 3) {
                    throw new Exception("Invalid device posture getter/setter");
                }
            }
            SidecarDisplayFeature sidecarDisplayFeature = new SidecarDisplayFeature();
            Rect rect = sidecarDisplayFeature.getRect();
            Intrinsics.g(rect, "displayFeature.rect");
            sidecarDisplayFeature.setRect(rect);
            sidecarDisplayFeature.getType();
            sidecarDisplayFeature.setType(1);
            SidecarWindowLayoutInfo sidecarWindowLayoutInfo = new SidecarWindowLayoutInfo();
            try {
                List list = sidecarWindowLayoutInfo.displayFeatures;
            } catch (NoSuchFieldError unused2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(sidecarDisplayFeature);
                SidecarWindowLayoutInfo.class.getMethod("setDisplayFeatures", List.class).invoke(sidecarWindowLayoutInfo, arrayList);
                Object objInvoke2 = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(sidecarWindowLayoutInfo, null);
                if (objInvoke2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                }
                if (!Intrinsics.c(arrayList, (List) objInvoke2)) {
                    throw new Exception("Invalid display feature getter/setter");
                }
            }
            return true;
        } catch (Throwable unused3) {
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SidecarCompat(Context context) {
        this(f14982f.b(context), new SidecarAdapter(null, 1, null));
        Intrinsics.h(context, "context");
    }

    public static final class d implements ComponentCallbacks {

        final Activity f15000b;

        d(Activity activity) {
            this.f15000b = activity;
        }

        @Override
        public void onConfigurationChanged(Configuration newConfig) {
            Intrinsics.h(newConfig, "newConfig");
            n.a aVar = SidecarCompat.this.f14987e;
            if (aVar == null) {
                return;
            }
            Activity activity = this.f15000b;
            aVar.a(activity, SidecarCompat.this.h(activity));
        }

        @Override
        public void onLowMemory() {
        }
    }
}
