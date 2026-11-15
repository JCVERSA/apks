package org.acra.collector;

import android.content.Context;
import android.os.Process;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c;
import defpackage.e;
import defpackage.e74;
import defpackage.i81;
import defpackage.og9;
import defpackage.ts8;
import defpackage.ty9;
import defpackage.y45;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.greenrobot.greendao.generator.Schema;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 $2\u00020\u0001:\u0001%B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0012¢\u0006\u0004\b\b\u0010\tJ=\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0012¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ7\u0010\u0016\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u0016\u0010\u001fR\u0014\u0010#\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lorg/acra/collector/LogCatCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Lorg/acra/config/CoreConfiguration;", "config", "", "bufferName", "collectLogCat", "(Lorg/acra/config/CoreConfiguration;Ljava/lang/String;)Ljava/lang/String;", "Ljava/io/InputStream;", "input", "Lkotlin/Function1;", "", "filter", "", "limit", "streamToString", "(Lorg/acra/config/CoreConfiguration;Ljava/io/InputStream;Le74;I)Ljava/lang/String;", "Landroid/content/Context;", "context", "Lorg/acra/ReportField;", "collect", "Lts8;", "reportBuilder", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "reportField", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "Lorg/acra/collector/Collector$Order;", "getOrder", "()Lorg/acra/collector/Collector$Order;", "order", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class LogCatCollector extends BaseReportFieldCollector {
    private static final int READ_TIMEOUT = 3000;

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.LOGCAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.EVENTSLOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.RADIOLOG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public LogCatCollector() {
        super(ReportField.LOGCAT, ReportField.EVENTSLOG, ReportField.RADIOLOG);
    }

    private String collectLogCat(CoreConfiguration config, String bufferName) throws IOException {
        Process.myPid();
        ArrayList arrayList = new ArrayList();
        arrayList.add("logcat");
        if (bufferName != null) {
            arrayList.add("-b");
            arrayList.add(bufferName);
        }
        List listB1 = i81.b1(config.getLogcatArguments());
        int iIndexOf = listB1.indexOf("-t");
        int i = -1;
        if (iIndexOf > -1 && iIndexOf < listB1.size()) {
            i = Integer.parseInt((String) listB1.get(iIndexOf + 1));
        }
        arrayList.addAll(listB1);
        Process processStart = new ProcessBuilder(new String[0]).command(arrayList).redirectErrorStream(true).start();
        if (c.b) {
            e eVar = c.d;
            String str = c.c;
            if (bufferName == null) {
                bufferName = Schema.DEFAULT_NAME;
            }
            eVar.d(str, "Retrieving logcat output (buffer:" + bufferName + ")...");
        }
        try {
            InputStream inputStream = processStart.getInputStream();
            y45.i(inputStream, "process.inputStream");
            return streamToString(config, inputStream, null, i);
        } finally {
            processStart.destroy();
        }
    }

    private String streamToString(CoreConfiguration config, InputStream input, e74 filter, int limit) throws IOException {
        ty9 ty9VarF = new ty9(input, 0, 0, null, 14, null).e(filter).f(limit);
        if (config.getLogcatReadNonBlocking()) {
            ty9VarF.g(3000);
        }
        return ty9VarF.a();
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws IOException {
        String str;
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        int i = b.a[reportField.ordinal()];
        if (i == 1) {
            str = null;
        } else if (i == 2) {
            str = "events";
        } else {
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            str = "radio";
        }
        target.h(reportField, collectLogCat(config, str));
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
        return super.shouldCollect(context, config, collect, reportBuilder) && new og9(context, config).a().getBoolean("acra.syslog.enable", true);
    }
}
