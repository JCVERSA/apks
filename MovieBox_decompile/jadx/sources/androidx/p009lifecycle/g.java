package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;

public final class g implements r {

    private final f f9277a;

    private final r f9278b;

    public class a {

        public static final int[] f9279a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f9279a = iArr;
        }
    }

    public g(f defaultLifecycleObserver, r rVar) {
        Intrinsics.h(defaultLifecycleObserver, "defaultLifecycleObserver");
        this.f9277a = defaultLifecycleObserver;
        this.f9278b = rVar;
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        switch (a.f9279a[event.ordinal()]) {
            case 1:
                this.f9277a.onCreate(source);
                break;
            case 2:
                this.f9277a.onStart(source);
                break;
            case 3:
                this.f9277a.onResume(source);
                break;
            case 4:
                this.f9277a.onPause(source);
                break;
            case 5:
                this.f9277a.onStop(source);
                break;
            case 6:
                this.f9277a.onDestroy(source);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        r rVar = this.f9278b;
        if (rVar != null) {
            rVar.onStateChanged(source, event);
        }
    }
}
