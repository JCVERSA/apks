package org.acra.collector;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.c;
import defpackage.ts8;
import defpackage.ty9;
import defpackage.y45;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0012¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0012¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0012¢\u0006\u0004\b\n\u0010\tJ/\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J7\u0010\u0010\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0010\u0010\u001a¨\u0006\u001b"}, d2 = {"Lorg/acra/collector/MemoryInfoCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "", "collectMemInfo", "()Ljava/lang/String;", "", "getAvailableInternalMemorySize", "()J", "getTotalInternalMemorySize", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lorg/acra/ReportField;", "collect", "Lts8;", "reportBuilder", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "reportField", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class MemoryInfoCollector extends BaseReportFieldCollector {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.DUMPSYS_MEMINFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.TOTAL_MEM_SIZE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.AVAILABLE_MEM_SIZE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public MemoryInfoCollector() {
        super(ReportField.DUMPSYS_MEMINFO, ReportField.TOTAL_MEM_SIZE, ReportField.AVAILABLE_MEM_SIZE);
    }

    private String collectMemInfo() {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("dumpsys");
            arrayList.add("meminfo");
            arrayList.add(String.valueOf(Process.myPid()));
            InputStream inputStream = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[0])).getInputStream();
            y45.i(inputStream, "process.inputStream");
            return new ty9(inputStream, 0, 0, null, 14, null).a();
        } catch (IOException e) {
            c.d.e(c.c, "MemoryInfoCollector.meminfo could not retrieve data", e);
            return null;
        }
    }

    private long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    private long getTotalInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
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
            target.h(ReportField.DUMPSYS_MEMINFO, collectMemInfo());
        } else if (i == 2) {
            target.g(ReportField.TOTAL_MEM_SIZE, getTotalInternalMemorySize());
        } else {
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            target.g(ReportField.AVAILABLE_MEM_SIZE, getAvailableInternalMemorySize());
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
        if (super.shouldCollect(context, config, collect, reportBuilder)) {
            throw null;
        }
        return false;
    }
}
