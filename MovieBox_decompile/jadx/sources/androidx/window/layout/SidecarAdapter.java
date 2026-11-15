package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.SpecificationComputer;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class SidecarAdapter {

    public static final a f14979b = new a(null);

    private static final String f14980c = SidecarAdapter.class.getSimpleName();

    private final SpecificationComputer.VerificationMode f14981a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(SidecarDeviceState sidecarDeviceState) {
            Intrinsics.h(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    return sidecarDeviceState.posture;
                } catch (NoSuchFieldError unused) {
                    Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                    if (objInvoke != null) {
                        return ((Integer) objInvoke).intValue();
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                return 0;
            }
        }

        public final int b(SidecarDeviceState sidecarDeviceState) {
            Intrinsics.h(sidecarDeviceState, "sidecarDeviceState");
            int iA = a(sidecarDeviceState);
            if (iA < 0 || iA > 4) {
                return 0;
            }
            return iA;
        }

        public final List c(SidecarWindowLayoutInfo info) {
            Intrinsics.h(info, "info");
            try {
                try {
                    List list = info.displayFeatures;
                    return list == null ? CollectionsKt.l() : list;
                } catch (NoSuchFieldError unused) {
                    Object objInvoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(info, null);
                    if (objInvoke != null) {
                        return (List) objInvoke;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                return CollectionsKt.l();
            }
        }

        public final void d(SidecarDeviceState sidecarDeviceState, int i10) {
            Intrinsics.h(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    sidecarDeviceState.posture = i10;
                } catch (NoSuchFieldError unused) {
                    SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i10));
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SidecarAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean b(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (Intrinsics.c(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return Intrinsics.c(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    private final boolean c(List list, List list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            if (!b((SidecarDisplayFeature) list.get(i10), (SidecarDisplayFeature) list2.get(i10))) {
                return false;
            }
            i10 = i11;
        }
        return true;
    }

    public final boolean a(SidecarDeviceState sidecarDeviceState, SidecarDeviceState sidecarDeviceState2) {
        if (Intrinsics.c(sidecarDeviceState, sidecarDeviceState2)) {
            return true;
        }
        if (sidecarDeviceState == null || sidecarDeviceState2 == null) {
            return false;
        }
        a aVar = f14979b;
        return aVar.b(sidecarDeviceState) == aVar.b(sidecarDeviceState2);
    }

    public final boolean d(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarWindowLayoutInfo sidecarWindowLayoutInfo2) {
        if (Intrinsics.c(sidecarWindowLayoutInfo, sidecarWindowLayoutInfo2)) {
            return true;
        }
        if (sidecarWindowLayoutInfo == null || sidecarWindowLayoutInfo2 == null) {
            return false;
        }
        a aVar = f14979b;
        return c(aVar.c(sidecarWindowLayoutInfo), aVar.c(sidecarWindowLayoutInfo2));
    }

    public final a0 e(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarDeviceState state) {
        Intrinsics.h(state, "state");
        if (sidecarWindowLayoutInfo == null) {
            return new a0(CollectionsKt.l());
        }
        SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
        a aVar = f14979b;
        aVar.d(sidecarDeviceState, aVar.b(state));
        return new a0(f(aVar.c(sidecarWindowLayoutInfo), sidecarDeviceState));
    }

    public final List f(List sidecarDisplayFeatures, SidecarDeviceState deviceState) {
        Intrinsics.h(sidecarDisplayFeatures, "sidecarDisplayFeatures");
        Intrinsics.h(deviceState, "deviceState");
        ArrayList arrayList = new ArrayList();
        Iterator it = sidecarDisplayFeatures.iterator();
        while (it.hasNext()) {
            l lVarG = g((SidecarDisplayFeature) it.next(), deviceState);
            if (lVarG != null) {
                arrayList.add(lVarG);
            }
        }
        return arrayList;
    }

    public final l g(SidecarDisplayFeature feature, SidecarDeviceState deviceState) {
        HardwareFoldingFeature.Type typeA;
        r.c cVar;
        Intrinsics.h(feature, "feature");
        Intrinsics.h(deviceState, "deviceState");
        SpecificationComputer.a aVar = SpecificationComputer.f14948a;
        String TAG = f14980c;
        Intrinsics.g(TAG, "TAG");
        SidecarDisplayFeature sidecarDisplayFeature = (SidecarDisplayFeature) SpecificationComputer.a.b(aVar, feature, TAG, this.f14981a, null, 4, null).c("Type must be either TYPE_FOLD or TYPE_HINGE", new Function1<SidecarDisplayFeature, Boolean>() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                boolean z10 = true;
                if (require.getType() != 1 && require.getType() != 2) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        }).c("Feature bounds must not be 0", new Function1<SidecarDisplayFeature, Boolean>() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                return Boolean.valueOf((require.getRect().width() == 0 && require.getRect().height() == 0) ? false : true);
            }
        }).c("TYPE_FOLD must have 0 area", new Function1<SidecarDisplayFeature, Boolean>() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                boolean z10 = true;
                if (require.getType() == 1 && require.getRect().width() != 0 && require.getRect().height() != 0) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        }).c("Feature be pinned to either left or top", new Function1<SidecarDisplayFeature, Boolean>() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                return Boolean.valueOf(require.getRect().left == 0 || require.getRect().top == 0);
            }
        }).a();
        if (sidecarDisplayFeature == null) {
            return null;
        }
        int type = sidecarDisplayFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.INSTANCE.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.INSTANCE.b();
        }
        int iB = f14979b.b(deviceState);
        if (iB == 0 || iB == 1) {
            return null;
        }
        if (iB == 2) {
            cVar = r.c.f15032d;
        } else {
            if (iB != 3 && iB == 4) {
                return null;
            }
            cVar = r.c.f15031c;
        }
        Rect rect = feature.getRect();
        Intrinsics.g(rect, "feature.rect");
        return new HardwareFoldingFeature(new androidx.window.core.b(rect), typeA, cVar);
    }

    public SidecarAdapter(SpecificationComputer.VerificationMode verificationMode) {
        Intrinsics.h(verificationMode, "verificationMode");
        this.f14981a = verificationMode;
    }

    public SidecarAdapter(SpecificationComputer.VerificationMode verificationMode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? SpecificationComputer.VerificationMode.QUIET : verificationMode);
    }
}
