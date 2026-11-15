package org.acra.collector;

import android.content.Context;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import defpackage.ly0;
import defpackage.ts8;
import defpackage.y45;
import java.io.PrintWriter;
import java.io.StringWriter;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0012¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\n\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0012¢\u0006\u0004\b\n\u0010\u000bJ7\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lorg/acra/collector/StacktraceCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "", NotificationCompat.CATEGORY_MESSAGE, "", "th", "getStackTrace", "(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;", "getStackTraceHash", "(Ljava/lang/Throwable;)Ljava/lang/String;", "Lorg/acra/ReportField;", "reportField", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "Lorg/acra/collector/Collector$Order;", "getOrder", "()Lorg/acra/collector/Collector$Order;", "order", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class StacktraceCollector extends BaseReportFieldCollector {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.STACK_TRACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.STACK_TRACE_HASH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public StacktraceCollector() {
        super(ReportField.STACK_TRACE, ReportField.STACK_TRACE_HASH);
    }

    private String getStackTrace(String msg, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        if (msg != null) {
            try {
                if (!TextUtils.isEmpty(msg)) {
                    printWriter.println(msg);
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ly0.a(printWriter, th2);
                    throw th3;
                }
            }
        }
        if (th != null) {
            th.printStackTrace(printWriter);
        }
        String string = stringWriter.toString();
        ly0.a(printWriter, null);
        return string;
    }

    private String getStackTraceHash(Throwable th) {
        StringBuilder sb = new StringBuilder();
        while (th != null) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            y45.i(stackTrace, "stackTraceElements");
            for (StackTraceElement stackTraceElement : stackTrace) {
                sb.append(stackTraceElement.getClassName());
                sb.append(stackTraceElement.getMethodName());
            }
            th = th.getCause();
        }
        String hexString = Integer.toHexString(sb.toString().hashCode());
        y45.i(hexString, "toHexString(res.toString().hashCode())");
        return hexString;
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        int i = a.a[reportField.ordinal()];
        if (i == 1) {
            ReportField reportField2 = ReportField.REPORT_ID;
            throw null;
        }
        if (i != 2) {
            throw new IllegalArgumentException();
        }
        ReportField reportField3 = ReportField.REPORT_ID;
        throw null;
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    @Override
    public Collector.Order getOrder() {
        return Collector.Order.FIRST;
    }

    @Override
    public boolean shouldCollect(Context context, CoreConfiguration config, ReportField collect, ts8 reportBuilder) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(collect, "collect");
        y45.j(reportBuilder, "reportBuilder");
        return collect == ReportField.STACK_TRACE || super.shouldCollect(context, config, collect, reportBuilder);
    }
}
