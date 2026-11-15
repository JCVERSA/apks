package androidx.window.layout.adapter.sidecar;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import androidx.annotation.VisibleForTesting;
import androidx.window.core.Bounds;
import androidx.window.core.SpecificationComputer;
import androidx.window.core.VerificationMode;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.livecaption.constant.ICode;
import defpackage.e74;
import defpackage.y45;
import defpackage.y71;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u001c\u0010\n\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u000b2\b\u0010\t\u001a\u0004\u0018\u00010\u000bH\u0002J(\u0010\f\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0002J\u001a\u0010\u000e\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\u000fJ\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\bH\u0000¢\u0006\u0002\b\u0014J\u0018\u0010\u0010\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0017\u001a\u00020\bJ\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u0013\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/window/layout/adapter/sidecar/SidecarAdapter;", "", "verificationMode", "Landroidx/window/core/VerificationMode;", "(Landroidx/window/core/VerificationMode;)V", "isEqualSidecarDeviceState", "", "first", "Landroidx/window/sidecar/SidecarDeviceState;", "second", "isEqualSidecarDisplayFeature", "Landroidx/window/sidecar/SidecarDisplayFeature;", "isEqualSidecarDisplayFeatures", "", "isEqualSidecarWindowLayoutInfo", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "translate", "Landroidx/window/layout/DisplayFeature;", TranThemePackageInfo.FEATURE_KEY, "deviceState", "translate$window_release", "Landroidx/window/layout/WindowLayoutInfo;", "extensionInfo", ICode.CALL.CALL_KEY_STATE, "sidecarDisplayFeatures", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SidecarAdapter {

    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = SidecarAdapter.class.getSimpleName();
    private final VerificationMode verificationMode;

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ'\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0014\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001a\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;", "", MethodDecl.initName, "()V", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "info", "", "Landroidx/window/sidecar/SidecarDisplayFeature;", "getSidecarDisplayFeatures", "(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;", "displayFeatures", "Lzfb;", "setSidecarDisplayFeatures", "(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Ljava/util/List;)V", "Landroidx/window/sidecar/SidecarDeviceState;", "sidecarDeviceState", "", "getSidecarDevicePosture$window_release", "(Landroidx/window/sidecar/SidecarDeviceState;)I", "getSidecarDevicePosture", "getRawSidecarDevicePosture", "posture", "setSidecarDevicePosture", "(Landroidx/window/sidecar/SidecarDeviceState;I)V", "", "kotlin.jvm.PlatformType", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        public final int getRawSidecarDevicePosture(SidecarDeviceState sidecarDeviceState) {
            y45.j(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    return sidecarDeviceState.posture;
                } catch (NoSuchFieldError unused) {
                    Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.Int");
                    return ((Integer) objInvoke).intValue();
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                return 0;
            }
        }

        public final int getSidecarDevicePosture$window_release(SidecarDeviceState sidecarDeviceState) {
            y45.j(sidecarDeviceState, "sidecarDeviceState");
            int rawSidecarDevicePosture = getRawSidecarDevicePosture(sidecarDeviceState);
            if (rawSidecarDevicePosture < 0 || rawSidecarDevicePosture > 4) {
                return 0;
            }
            return rawSidecarDevicePosture;
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        public final List<SidecarDisplayFeature> getSidecarDisplayFeatures(SidecarWindowLayoutInfo info) {
            y45.j(info, "info");
            try {
                try {
                    List<SidecarDisplayFeature> list = info.displayFeatures;
                    return list == null ? y71.k() : list;
                } catch (NoSuchFieldError unused) {
                    Object objInvoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(info, null);
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                    return (List) objInvoke;
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                return y71.k();
            }
            return y71.k();
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        public final void setSidecarDevicePosture(SidecarDeviceState sidecarDeviceState, int posture) {
            y45.j(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    sidecarDeviceState.posture = posture;
                } catch (NoSuchFieldError unused) {
                    SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(posture));
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        public final void setSidecarDisplayFeatures(SidecarWindowLayoutInfo info, List<SidecarDisplayFeature> displayFeatures) {
            y45.j(info, "info");
            y45.j(displayFeatures, "displayFeatures");
            try {
                try {
                    info.displayFeatures = displayFeatures;
                } catch (NoSuchFieldError unused) {
                    SidecarWindowLayoutInfo.class.getMethod("setDisplayFeatures", List.class).invoke(info, displayFeatures);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SidecarAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean isEqualSidecarDisplayFeature(SidecarDisplayFeature first, SidecarDisplayFeature second) {
        if (y45.e(first, second)) {
            return true;
        }
        if (first == null || second == null || first.getType() != second.getType()) {
            return false;
        }
        return y45.e(first.getRect(), second.getRect());
    }

    private final boolean isEqualSidecarDisplayFeatures(List<SidecarDisplayFeature> first, List<SidecarDisplayFeature> second) {
        if (first == second) {
            return true;
        }
        if (first == null || second == null || first.size() != second.size()) {
            return false;
        }
        int size = first.size();
        for (int i = 0; i < size; i++) {
            if (!isEqualSidecarDisplayFeature(first.get(i), second.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final boolean isEqualSidecarDeviceState(SidecarDeviceState first, SidecarDeviceState second) {
        if (y45.e(first, second)) {
            return true;
        }
        if (first == null || second == null) {
            return false;
        }
        Companion companion = INSTANCE;
        return companion.getSidecarDevicePosture$window_release(first) == companion.getSidecarDevicePosture$window_release(second);
    }

    public final boolean isEqualSidecarWindowLayoutInfo(SidecarWindowLayoutInfo first, SidecarWindowLayoutInfo second) {
        if (y45.e(first, second)) {
            return true;
        }
        if (first == null || second == null) {
            return false;
        }
        Companion companion = INSTANCE;
        return isEqualSidecarDisplayFeatures(companion.getSidecarDisplayFeatures(first), companion.getSidecarDisplayFeatures(second));
    }

    public final List<DisplayFeature> translate(List<SidecarDisplayFeature> sidecarDisplayFeatures, SidecarDeviceState deviceState) {
        y45.j(sidecarDisplayFeatures, "sidecarDisplayFeatures");
        y45.j(deviceState, "deviceState");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = sidecarDisplayFeatures.iterator();
        while (it.hasNext()) {
            DisplayFeature displayFeatureTranslate$window_release = translate$window_release((SidecarDisplayFeature) it.next(), deviceState);
            if (displayFeatureTranslate$window_release != null) {
                arrayList.add(displayFeatureTranslate$window_release);
            }
        }
        return arrayList;
    }

    public final DisplayFeature translate$window_release(SidecarDisplayFeature feature, SidecarDeviceState deviceState) {
        HardwareFoldingFeature.Type fold;
        FoldingFeature.State state;
        y45.j(feature, TranThemePackageInfo.FEATURE_KEY);
        y45.j(deviceState, "deviceState");
        SpecificationComputer.Companion companion = SpecificationComputer.INSTANCE;
        String str = TAG;
        y45.i(str, AbstractID3v1Tag.TAG);
        SidecarDisplayFeature sidecarDisplayFeature = (SidecarDisplayFeature) SpecificationComputer.Companion.startSpecification$default(companion, feature, str, this.verificationMode, null, 4, null).require("Type must be either TYPE_FOLD or TYPE_HINGE", new e74() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature sidecarDisplayFeature2) {
                y45.j(sidecarDisplayFeature2, "$this$require");
                boolean z = true;
                if (sidecarDisplayFeature2.getType() != 1 && sidecarDisplayFeature2.getType() != 2) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }).require("Feature bounds must not be 0", new e74() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature sidecarDisplayFeature2) {
                y45.j(sidecarDisplayFeature2, "$this$require");
                return Boolean.valueOf((sidecarDisplayFeature2.getRect().width() == 0 && sidecarDisplayFeature2.getRect().height() == 0) ? false : true);
            }
        }).require("TYPE_FOLD must have 0 area", new e74() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature sidecarDisplayFeature2) {
                y45.j(sidecarDisplayFeature2, "$this$require");
                boolean z = true;
                if (sidecarDisplayFeature2.getType() == 1 && sidecarDisplayFeature2.getRect().width() != 0 && sidecarDisplayFeature2.getRect().height() != 0) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }).require("Feature be pinned to either left or top", new e74() {
            @Override
            public final Boolean invoke(SidecarDisplayFeature sidecarDisplayFeature2) {
                y45.j(sidecarDisplayFeature2, "$this$require");
                return Boolean.valueOf(sidecarDisplayFeature2.getRect().left == 0 || sidecarDisplayFeature2.getRect().top == 0);
            }
        }).compute();
        if (sidecarDisplayFeature == null) {
            return null;
        }
        int type = sidecarDisplayFeature.getType();
        if (type == 1) {
            fold = HardwareFoldingFeature.Type.INSTANCE.getFOLD();
        } else {
            if (type != 2) {
                return null;
            }
            fold = HardwareFoldingFeature.Type.INSTANCE.getHINGE();
        }
        int sidecarDevicePosture$window_release = INSTANCE.getSidecarDevicePosture$window_release(deviceState);
        if (sidecarDevicePosture$window_release == 0 || sidecarDevicePosture$window_release == 1) {
            return null;
        }
        if (sidecarDevicePosture$window_release == 2) {
            state = FoldingFeature.State.HALF_OPENED;
        } else {
            if (sidecarDevicePosture$window_release != 3 && sidecarDevicePosture$window_release == 4) {
                return null;
            }
            state = FoldingFeature.State.FLAT;
        }
        Rect rect = feature.getRect();
        y45.i(rect, "feature.rect");
        return new HardwareFoldingFeature(new Bounds(rect), fold, state);
    }

    public SidecarAdapter(VerificationMode verificationMode) {
        y45.j(verificationMode, "verificationMode");
        this.verificationMode = verificationMode;
    }

    public SidecarAdapter(VerificationMode verificationMode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? VerificationMode.QUIET : verificationMode);
    }

    public final WindowLayoutInfo translate(SidecarWindowLayoutInfo extensionInfo, SidecarDeviceState state) {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        if (extensionInfo == null) {
            return new WindowLayoutInfo(y71.k());
        }
        SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
        Companion companion = INSTANCE;
        companion.setSidecarDevicePosture(sidecarDeviceState, companion.getSidecarDevicePosture$window_release(state));
        return new WindowLayoutInfo(translate(companion.getSidecarDisplayFeatures(extensionInfo), sidecarDeviceState));
    }
}
