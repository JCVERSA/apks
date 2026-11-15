package org.acra.collector;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.ts8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J/\u0010\u000b\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u000b\u0010\u0014J7\u0010\u000b\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0011H&¢\u0006\u0004\b\u000b\u0010\u0017R\u001c\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018¨\u0006\u0019"}, d2 = {"Lorg/acra/collector/BaseReportFieldCollector;", "Lorg/acra/collector/Collector;", "", "Lorg/acra/ReportField;", "reportFields", MethodDecl.initName, "([Lorg/acra/ReportField;)V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "collect", "Lts8;", "reportBuilder", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "Lorg/acra/data/CrashReportData;", "crashReportData", "Lzfb;", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "reportField", TypedValues.AttributesType.S_TARGET, "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "[Lorg/acra/ReportField;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class BaseReportFieldCollector implements Collector {
    private final ReportField[] reportFields;

    public BaseReportFieldCollector(ReportField... reportFieldArr) {
        y45.j(reportFieldArr, "reportFields");
        this.reportFields = reportFieldArr;
    }

    @Override
    public void collect(Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData crashReportData) throws CollectorException {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(crashReportData, "crashReportData");
        for (ReportField reportField : this.reportFields) {
            try {
                if (shouldCollect(context, config, reportField, reportBuilder)) {
                    collect(reportField, context, config, reportBuilder, crashReportData);
                }
            } catch (Exception e) {
                crashReportData.h(reportField, null);
                throw new CollectorException("Error while retrieving " + reportField.name() + " data:" + e.getMessage(), e);
            }
        }
    }

    public abstract void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws Exception;

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    public boolean shouldCollect(Context context, CoreConfiguration config, ReportField collect, ts8 reportBuilder) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(collect, "collect");
        y45.j(reportBuilder, "reportBuilder");
        return config.getReportContent().contains(collect);
    }
}
