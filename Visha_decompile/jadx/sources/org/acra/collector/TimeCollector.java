package org.acra.collector;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.ts8;
import defpackage.y45;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0012¢\u0006\u0004\b\b\u0010\tJ7\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u001a\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lorg/acra/collector/TimeCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", "Lorg/acra/collector/ApplicationStartupCollector;", MethodDecl.initName, "()V", "Ljava/util/Calendar;", "time", "", "getTimeString", "(Ljava/util/Calendar;)Ljava/lang/String;", "Lorg/acra/ReportField;", "reportField", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "collectApplicationStartUp", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/text/SimpleDateFormat;", "appStartDate", "Ljava/util/Calendar;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class TimeCollector extends BaseReportFieldCollector implements ApplicationStartupCollector {
    private Calendar appStartDate;
    private final SimpleDateFormat dateFormat;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.USER_APP_START_DATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.USER_CRASH_DATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public TimeCollector() {
        super(ReportField.USER_APP_START_DATE, ReportField.USER_CRASH_DATE);
        this.dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ", Locale.ENGLISH);
    }

    private String getTimeString(Calendar time) {
        String str = this.dateFormat.format(Long.valueOf(time.getTimeInMillis()));
        y45.i(str, "dateFormat.format(time.timeInMillis)");
        return str;
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) {
        Calendar gregorianCalendar;
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        int i = a.a[reportField.ordinal()];
        if (i == 1) {
            gregorianCalendar = this.appStartDate;
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            gregorianCalendar = new GregorianCalendar();
        }
        y45.g(gregorianCalendar);
        target.h(reportField, getTimeString(gregorianCalendar));
    }

    @Override
    public void collectApplicationStartUp(Context context, CoreConfiguration config) {
        y45.j(context, "context");
        y45.j(config, "config");
        if (config.getReportContent().contains(ReportField.USER_APP_START_DATE)) {
            this.appStartDate = new GregorianCalendar();
        }
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    @Override
    public boolean shouldCollect(Context context, CoreConfiguration config, ReportField collect, ts8 reportBuilder) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(collect, "collect");
        y45.j(reportBuilder, "reportBuilder");
        return collect == ReportField.USER_CRASH_DATE || super.shouldCollect(context, config, collect, reportBuilder);
    }
}
