package org.acra.collector;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.DropBoxManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c;
import defpackage.d81;
import defpackage.i81;
import defpackage.og9;
import defpackage.ts8;
import defpackage.y45;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.SystemServices;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J/\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lorg/acra/collector/DropBoxCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Lorg/acra/ReportField;", "reportField", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/text/SimpleDateFormat;", "Lorg/acra/collector/Collector$Order;", "getOrder", "()Lorg/acra/collector/Collector$Order;", "order", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class DropBoxCollector extends BaseReportFieldCollector {
    private static final String[] SYSTEM_TAGS = {"system_app_anr", "system_app_wtf", "system_app_crash", "system_server_anr", "system_server_wtf", "system_server_crash", "BATTERY_DISCHARGE_INFO", "SYSTEM_RECOVERY_LOG", "SYSTEM_BOOT", "SYSTEM_LAST_KMSG", "APANIC_CONSOLE", "APANIC_THREADS", "SYSTEM_RESTART", "SYSTEM_TOMBSTONE", "data_app_strictmode"};
    private final SimpleDateFormat dateFormat;

    public DropBoxCollector() {
        super(ReportField.DROPBOX);
        this.dateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.getDefault());
    }

    @Override
    @SuppressLint({"MissingPermission"})
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws Exception {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        DropBoxManager dropBoxManagerA = SystemServices.a(context);
        Calendar calendar = Calendar.getInstance();
        calendar.roll(12, -config.getDropboxCollectionMinutes());
        long timeInMillis = calendar.getTimeInMillis();
        this.dateFormat.format(calendar.getTime());
        ArrayList<String> arrayList = new ArrayList();
        if (config.getIncludeDropBoxSystemTags()) {
            d81.D(arrayList, SYSTEM_TAGS);
        }
        List listB1 = i81.b1(config.getAdditionalDropBoxTags());
        if (!listB1.isEmpty()) {
            arrayList.addAll(listB1);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : arrayList) {
            StringBuilder sb = new StringBuilder();
            DropBoxManager.Entry nextEntry = dropBoxManagerA.getNextEntry(str, timeInMillis);
            if (nextEntry == null) {
                sb.append("Nothing.");
                sb.append('\n');
            } else {
                while (nextEntry != null) {
                    long timeMillis = nextEntry.getTimeMillis();
                    calendar.setTimeInMillis(timeMillis);
                    sb.append('@');
                    sb.append(this.dateFormat.format(calendar.getTime()));
                    sb.append('\n');
                    String text = nextEntry.getText(500);
                    if (text != null) {
                        sb.append("Text: ");
                        sb.append(text);
                        sb.append('\n');
                    } else {
                        sb.append("Not Text!");
                        sb.append('\n');
                    }
                    nextEntry.close();
                    nextEntry = dropBoxManagerA.getNextEntry(str, timeMillis);
                }
                try {
                    jSONObject.put(str, sb.toString());
                } catch (JSONException e) {
                    c.d.w(c.c, "Failed to collect data for tag " + str, e);
                }
            }
        }
        target.i(ReportField.DROPBOX, jSONObject);
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
