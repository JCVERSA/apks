package com.transsion.payment.lib;

import com.cloud.tmc.integration.permission.PermissionConstant;
import com.tn.tranpay.logger.LogLevel;
import com.tn.tranpay.logger.LoggerPlugin;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/transsion/payment/lib/PayLoggerPlugin;", "Lcom/tn/tranpay/logger/LoggerPlugin;", "<init>", "()V", "log", "", PermissionConstant.level, "Lcom/tn/tranpay/logger/LogLevel;", "tag", "", "message", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayLoggerPlugin implements LoggerPlugin {

    public class a {

        public static final int[] f45889a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f45889a = iArr;
        }
    }

    @Override
    public void log(LogLevel level, String tag, String message) {
        Intrinsics.h(level, "level");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        int i10 = a.f45889a[level.ordinal()];
        if (i10 == 1) {
            wf.a.C0922a.f(wf.a.f74274a, tag, message, false, 4, null);
            return;
        }
        if (i10 == 2) {
            d.f45901a.a(message);
        } else if (i10 == 3) {
            d.f45901a.c(message);
        } else {
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            d.f45901a.b(message);
        }
    }
}
