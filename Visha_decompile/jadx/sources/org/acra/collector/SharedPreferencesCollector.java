package org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.og9;
import defpackage.ts8;
import defpackage.y45;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.text.Regex;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0012¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u000e\u0010\u000fJ7\u0010\t\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\t\u0010\u0017¨\u0006\u0018"}, d2 = {"Lorg/acra/collector/SharedPreferencesCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lorg/json/JSONObject;", "collect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lorg/json/JSONObject;", "", "key", "", "filteredKey", "(Lorg/acra/config/CoreConfiguration;Ljava/lang/String;)Z", "Lorg/acra/ReportField;", "reportField", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class SharedPreferencesCollector extends BaseReportFieldCollector {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.USER_EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.SHARED_PREFERENCES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public SharedPreferencesCollector() {
        super(ReportField.USER_EMAIL, ReportField.SHARED_PREFERENCES);
    }

    private boolean filteredKey(CoreConfiguration config, String key) {
        Iterator<String> it = config.getExcludeMatchingSharedPreferencesKeys().iterator();
        while (it.hasNext()) {
            if (new Regex(it.next()).matches(key)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws Exception {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        int i = a.a[reportField.ordinal()];
        if (i == 1) {
            target.h(ReportField.USER_EMAIL, new og9(context, config).a().getString("acra.user.email", null));
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            target.i(ReportField.SHARED_PREFERENCES, collect(context, config));
        }
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    private JSONObject collect(Context context, CoreConfiguration config) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        TreeMap treeMap = new TreeMap();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        y45.i(defaultSharedPreferences, "getDefaultSharedPreferences(context)");
        treeMap.put(Schema.DEFAULT_NAME, defaultSharedPreferences);
        for (String str : config.getAdditionalSharedPreferences()) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            y45.i(sharedPreferences, "context.getSharedPrefere…Id, Context.MODE_PRIVATE)");
            treeMap.put(str, sharedPreferences);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String str2 = (String) entry.getKey();
            Map<String, ?> all = ((SharedPreferences) entry.getValue()).getAll();
            if (all.isEmpty()) {
                jSONObject.put(str2, "empty");
            } else {
                Iterator<String> it = all.keySet().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    y45.i(next, "iterator.next()");
                    if (filteredKey(config, next)) {
                        it.remove();
                    }
                }
                jSONObject.put(str2, new JSONObject(all));
            }
        }
        return jSONObject;
    }
}
