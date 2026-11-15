package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.content.Context;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.StepType;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.prepare.steps.o0OoOo0;
import com.cloud.tmc.miniapp.utils.OooOOO;
import kotlin.jvm.internal.Intrinsics;

public final class OooO implements o0OoOo0 {
    public final StepType OooO00o;
    public o0OoOo0 OooO0O0;

    public class OooO00o {
        public static final int[] OooO00o;

        static {
            int[] iArr = new int[StepType.values().length];
            try {
                iArr[StepType.OFFLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StepType.LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StepType.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            OooO00o = iArr;
        }
    }

    public OooO(StepType stepType) {
        Intrinsics.h(stepType, "stepType");
        this.OooO00o = stepType;
    }

    @Override
    public void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
        Context startContext;
        AppModel appModel;
        if (prepareContext == null || (startContext = prepareContext.getStartContext()) == null || (appModel = prepareContext.getAppModel()) == null || !OooOOO.OooO00o(startContext, appModel)) {
            OooO00o(true);
        } else {
            OooO00o(false);
        }
    }

    @Override
    public StepType OooO0O0() {
        return this.OooO00o;
    }

    @Override
    public void finish() {
        o0OoOo0 o0oooo0 = this.OooO0O0;
        if (o0oooo0 != null) {
            o0oooo0.finish();
        }
    }

    @Override
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        o0OoOo0 o0oooo0 = this.OooO0O0;
        if (o0oooo0 != null) {
            o0oooo0.OooO0O0(prepareController, prepareContext, o000oooo);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void OooO00o(boolean z10) {
        o0OoOo0 oooO00o;
        o0OoOo0 oooO0O0;
        o0OoOo0 oooO0OO;
        if (this.OooO0O0 != null) {
            return;
        }
        int i10 = OooO00o.OooO00o[this.OooO00o.ordinal()];
        int i11 = 3;
        String str = null;
        Object[] objArr = 0;
        if (i10 == 1) {
            if (z10) {
                oooO00o = new OooO0OO(str, objArr == true ? 1 : 0, i11);
            } else {
                oooO00o = new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO00o();
            }
            this.OooO0O0 = oooO00o;
            return;
        }
        if (i10 == 2) {
            if (z10) {
                oooO0O0 = new OooO0O0(null, null, 3);
            } else {
                oooO0O0 = new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0O0();
            }
            this.OooO0O0 = oooO0O0;
            return;
        }
        if (i10 != 3) {
            return;
        }
        if (z10) {
            oooO0OO = new OooO0o(null, null, 3);
        } else {
            oooO0OO = new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0OO();
        }
        this.OooO0O0 = oooO0OO;
    }

    @Override
    public boolean OooO00o() {
        o0OoOo0 o0oooo0 = this.OooO0O0;
        if (o0oooo0 != null) {
            return o0oooo0.OooO00o();
        }
        return false;
    }
}
