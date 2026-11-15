package com.transsion.push.bean;

import cm.f;
import com.blankj.utilcode.util.k;
import com.blankj.utilcode.util.o;
import com.transsion.mb.config.manager.ConfigBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u001f\u001a\u00020\nJ\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017J\u0006\u0010'\u001a\u00020#R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0002X\u0083T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00058\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0011\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\u001b\u001a\u0004\u0018\u00010\u001c8F¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010\"\u001a\u00020#8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0011\u001a\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/transsion/push/bean/PushConfigHelper;", "", "<init>", "()V", "PUSH_REMIND_NOTIFICATION_TIME", "", "PUSH_PERMANENT_AB_CONFIG", "PUSH_PIC_TYPE_CONFIG_KEY", "PUSH_SIMBA_CONFIG_KEY", "PERMANENT_DEFAULT_TYPE", "", "PERMANENT_A_TYPE", "PERMANENT_B_TYPE", "abType", "getAbType", "()I", "abType$delegate", "Lkotlin/Lazy;", "remindTime", "getRemindTime", "()Ljava/lang/Integer;", "remindTime$delegate", "verticalType", "", "getVerticalType", "()Z", "verticalType$delegate", "simbaConfig", "Lcom/transsion/push/bean/PushSimbaConfig;", "getSimbaConfig", "()Lcom/transsion/push/bean/PushSimbaConfig;", "getCurAbType", "isAbType", "isVerticalType", "timeFloat", "", "getTimeFloat", "()F", "timeFloat$delegate", "getHashTime", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PushConfigHelper {
    public static final int PERMANENT_A_TYPE = 1;
    public static final int PERMANENT_B_TYPE = 2;
    public static final int PERMANENT_DEFAULT_TYPE = 0;
    private static final String PUSH_PERMANENT_AB_CONFIG = "push_permanent_ui_ab_config";
    public static final String PUSH_PIC_TYPE_CONFIG_KEY = "push_pic_type_config";
    private static final String PUSH_REMIND_NOTIFICATION_TIME = "push_remind_notification_time";
    public static final String PUSH_SIMBA_CONFIG_KEY = "push_simba_config";
    private static final PushSimbaConfig simbaConfig = null;
    public static final PushConfigHelper INSTANCE = new PushConfigHelper();

    private static final Lazy abType = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(PushConfigHelper.abType_delegate$lambda$0());
        }
    });

    private static final Lazy remindTime = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PushConfigHelper.remindTime_delegate$lambda$1();
        }
    });

    private static final Lazy verticalType = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(PushConfigHelper.verticalType_delegate$lambda$2());
        }
    });

    private static final Lazy timeFloat = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Float.valueOf(PushConfigHelper.timeFloat_delegate$lambda$4());
        }
    });

    private PushConfigHelper() {
    }

    public static final int abType_delegate$lambda$0() {
        String value;
        ConfigBean configBeanC = f.f17019c.a().c(PUSH_PERMANENT_AB_CONFIG, true);
        Integer numV = (configBeanC == null || (value = configBeanC.getValue()) == null) ? null : StringsKt.v(value);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("push init_abType:");
        sb2.append(numV);
        if (numV != null) {
            return numV.intValue();
        }
        return 1;
    }

    private final int getAbType() {
        return ((Number) abType.getValue()).intValue();
    }

    private final boolean getVerticalType() {
        return ((Boolean) verticalType.getValue()).booleanValue();
    }

    public static final Integer remindTime_delegate$lambda$1() {
        String value;
        ConfigBean configBeanC = f.f17019c.a().c(PUSH_REMIND_NOTIFICATION_TIME, true);
        Integer numV = (configBeanC == null || (value = configBeanC.getValue()) == null) ? null : StringsKt.v(value);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("remindTime:");
        sb2.append(numV);
        return numV;
    }

    public static final float timeFloat_delegate$lambda$4() {
        String strD = k.d();
        Intrinsics.g(strD, "getUniqueDeviceId(...)");
        byte[] bytes = strD.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        UUID uuidNameUUIDFromBytes = UUID.nameUUIDFromBytes(bytes);
        return (float) (UnsignedKt.c(ULong.b(ULong.b(uuidNameUUIDFromBytes.getMostSignificantBits()) ^ ULong.b(uuidNameUUIDFromBytes.getLeastSignificantBits()))) / UnsignedKt.c(-1L));
    }

    public static final boolean verticalType_delegate$lambda$2() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = f.f17019c.a().c(PUSH_PIC_TYPE_CONFIG_KEY, true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) {
            return false;
        }
        return boolM1.booleanValue();
    }

    public final int getCurAbType() {
        return getAbType();
    }

    public final float getHashTime() {
        PushSimbaConfig simbaConfig2 = getSimbaConfig();
        if (simbaConfig2 == null || !simbaConfig2.getRequestHashEnable()) {
            return 0.0f;
        }
        return RangesKt.d(getTimeFloat(), 0.0f);
    }

    public final Integer getRemindTime() {
        return (Integer) remindTime.getValue();
    }

    public final PushSimbaConfig getSimbaConfig() {
        PushSimbaConfig pushSimbaConfig = simbaConfig;
        if (pushSimbaConfig == null) {
            pushSimbaConfig = null;
            try {
                Result.Companion companion = Result.INSTANCE;
                ConfigBean configBeanC = f.f17019c.a().c(PUSH_SIMBA_CONFIG_KEY, true);
                return (PushSimbaConfig) o.d(configBeanC != null ? configBeanC.getValue() : null, PushSimbaConfig.class);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        return pushSimbaConfig;
    }

    public final float getTimeFloat() {
        return ((Number) timeFloat.getValue()).floatValue();
    }

    public final boolean isAbType() {
        return getCurAbType() != 0;
    }

    public final boolean isVerticalType() {
        boolean verticalType2 = getVerticalType();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isVerticalType:");
        sb2.append(verticalType2);
        return getVerticalType();
    }
}
