package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.RenderAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.a;
import com.cloud.tmc.kernel.utils.TraceLog;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class OooOOO0 {
    public long OooO00o;

    public class OooO00o {
        public static final int[] OooO00o;

        static {
            int[] iArr = new int[RenderAnalyseType.values().length];
            try {
                iArr[RenderAnalyseType.INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderAnalyseType.CREATE_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RenderAnalyseType.CREATE_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RenderAnalyseType.LOAD_URL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RenderAnalyseType.LOAD_FINISH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[RenderAnalyseType.LOAD_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[RenderAnalyseType.ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[RenderAnalyseType.CONSOLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            OooO00o = iArr;
        }
    }

    public OooOOO0() {
        RenderAnalyseType renderAnalyseType = RenderAnalyseType.INIT;
    }

    public void OooO00o(String str, RenderAnalyseType target, String str2) {
        long j10;
        String str3;
        String str4;
        Intrinsics.h(target, "target");
        int i10 = OooO00o.OooO00o[target.ordinal()];
        if (i10 == 3 || i10 == 5) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j11 = this.OooO00o;
            j10 = jCurrentTimeMillis - j11;
        } else {
            j10 = 0;
        }
        if (str2 != null) {
            str3 = "-信息:" + str2;
        } else {
            str3 = "";
        }
        if (j10 != 0) {
            str3 = "-耗时:" + j10 + ((Object) str3);
            ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
            Bundle bundle = new Bundle();
            bundle.putString(RenderAnalyseType.class.getSimpleName() + "." + target.name(), str3);
            Unit unit = Unit.f64096a;
            reportProxy.report(str, EventConstants.ADDRESS_RENDER, bundle);
        }
        if (str != null) {
            str4 = "[" + str + "]:" + target.getDes() + ((Object) str3);
        } else {
            str4 = target.getDes() + ((Object) str3);
        }
        if (target == RenderAnalyseType.ERROR) {
            TraceLog.e(TmcConstants.PERFERENCE_RENDER_TAG, str4, j10 != 0);
        } else {
            TraceLog.d(TmcConstants.PERFERENCE_RENDER_TAG, str4, j10 != 0);
        }
        a.a(target, str4);
        this.OooO00o = System.currentTimeMillis();
    }
}
