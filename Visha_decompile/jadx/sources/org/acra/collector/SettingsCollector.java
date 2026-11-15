package org.acra.collector;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c;
import defpackage.g1a;
import defpackage.ts8;
import defpackage.y45;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.text.Regex;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\bH\u0012¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0012¢\u0006\u0004\b\u0010\u0010\u0011J7\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lorg/acra/collector/SettingsCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Ljava/lang/Class;", "settings", "Lorg/json/JSONObject;", "collectSettings", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/json/JSONObject;", "Ljava/lang/reflect/Field;", "key", "", "isAuthorized", "(Lorg/acra/config/CoreConfiguration;Ljava/lang/reflect/Field;)Z", "Lorg/acra/ReportField;", "reportField", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class SettingsCollector extends BaseReportFieldCollector {
    private static final String ERROR = "Error: ";

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.SETTINGS_SYSTEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.SETTINGS_SECURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.SETTINGS_GLOBAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public SettingsCollector() {
        super(ReportField.SETTINGS_SYSTEM, ReportField.SETTINGS_SECURE, ReportField.SETTINGS_GLOBAL);
    }

    private JSONObject collectSettings(Context context, CoreConfiguration config, Class<?> settings) throws NoSuchMethodException {
        JSONObject jSONObject = new JSONObject();
        Field[] fields = settings.getFields();
        Method method = settings.getMethod("getString", ContentResolver.class, String.class);
        y45.i(fields, "keys");
        for (Field field : fields) {
            if (!field.isAnnotationPresent(Deprecated.class) && y45.e(field.getType(), String.class) && isAuthorized(config, field)) {
                try {
                    Object objInvoke = method.invoke(null, context.getContentResolver(), field.get(null));
                    if (objInvoke != null) {
                        jSONObject.put(field.getName(), objInvoke);
                    }
                } catch (Exception e) {
                    c.d.w(c.c, ERROR, e);
                }
            }
        }
        return jSONObject;
    }

    private boolean isAuthorized(CoreConfiguration config, Field key) {
        if (key == null) {
            return false;
        }
        String name = key.getName();
        y45.i(name, "key.name");
        if (g1a.R(name, "WIFI_AP", false, 2, null)) {
            return false;
        }
        for (String str : config.getExcludeMatchingSettingsKeys()) {
            String name2 = key.getName();
            y45.i(name2, "key.name");
            if (new Regex(str).matches(name2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws Exception {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        int i = b.a[reportField.ordinal()];
        if (i == 1) {
            target.i(ReportField.SETTINGS_SYSTEM, collectSettings(context, config, Settings.System.class));
        } else if (i == 2) {
            target.i(ReportField.SETTINGS_SECURE, collectSettings(context, config, Settings.Secure.class));
        } else {
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            target.i(ReportField.SETTINGS_GLOBAL, collectSettings(context, config, Settings.Global.class));
        }
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }
}
