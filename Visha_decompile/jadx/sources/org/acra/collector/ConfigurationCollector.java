package org.acra.collector;

import android.content.Context;
import android.content.res.Configuration;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.abb;
import defpackage.c;
import defpackage.e74;
import defpackage.g1a;
import defpackage.jy5;
import defpackage.ts8;
import defpackage.y45;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.a;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0017\u0018\u0000 .2\u00020\u00012\u00020\u0002:\u0002/0B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0012¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\nH\u0012¢\u0006\u0004\b\u000e\u0010\u000fJ9\u0010\u0014\u001a\u00020\u00132\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0012¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\r2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0012¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0012¢\u0006\u0004\b\u001d\u0010\u001eJ7\u0010(\u001a\u00020'2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020'2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b*\u0010+R\u0018\u0010,\u001a\u0004\u0018\u00010\u00078\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, d2 = {"Lorg/acra/collector/ConfigurationCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", "Lorg/acra/collector/ApplicationStartupCollector;", MethodDecl.initName, "()V", "Landroid/content/res/Configuration;", "conf", "Lorg/json/JSONObject;", "configToJson", "(Landroid/content/res/Configuration;)Lorg/json/JSONObject;", "", "Lorg/acra/collector/ConfigurationCollector$Prefix;", "Landroid/util/SparseArray;", "", "getValueArrays", "()Ljava/util/Map;", "valueArrays", "Ljava/lang/reflect/Field;", "f", "", "getFieldValueName", "(Ljava/util/Map;Landroid/content/res/Configuration;Ljava/lang/reflect/Field;)Ljava/lang/Object;", "valueNames", "", "bitfield", "activeFlags", "(Landroid/util/SparseArray;I)Ljava/lang/String;", "Landroid/content/Context;", "context", "collectConfiguration", "(Landroid/content/Context;)Lorg/json/JSONObject;", "Lorg/acra/ReportField;", "reportField", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "Lzfb;", "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "collectApplicationStartUp", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V", "initialConfiguration", "Lorg/json/JSONObject;", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Prefix", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class ConfigurationCollector extends BaseReportFieldCollector implements ApplicationStartupCollector {
    private static final String FIELD_MCC = "mcc";
    private static final String FIELD_MNC = "mnc";
    private static final String FIELD_SCREENLAYOUT = "screenLayout";
    private static final String FIELD_UIMODE = "uiMode";
    private static final String SUFFIX_MASK = "_MASK";
    private JSONObject initialConfiguration;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lorg/acra/collector/ConfigurationCollector$Prefix;", "", "text", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getText", "()Ljava/lang/String;", "UI_MODE", "TOUCHSCREEN", "SCREENLAYOUT", "ORIENTATION", "NAVIGATIONHIDDEN", "NAVIGATION", "KEYBOARDHIDDEN", "KEYBOARD", "HARDKEYBOARDHIDDEN", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum Prefix {
        UI_MODE("UI_MODE_"),
        TOUCHSCREEN("TOUCHSCREEN_"),
        SCREENLAYOUT("SCREENLAYOUT_"),
        ORIENTATION("ORIENTATION_"),
        NAVIGATIONHIDDEN("NAVIGATIONHIDDEN_"),
        NAVIGATION("NAVIGATION_"),
        KEYBOARDHIDDEN("KEYBOARDHIDDEN_"),
        KEYBOARD("KEYBOARD_"),
        HARDKEYBOARDHIDDEN("HARDKEYBOARDHIDDEN_");

        private final String text;

        Prefix(String str) {
            this.text = str;
        }

        public final String getText() {
            return this.text;
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.INITIAL_CONFIGURATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.CRASH_CONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public ConfigurationCollector() {
        super(ReportField.INITIAL_CONFIGURATION, ReportField.CRASH_CONFIGURATION);
    }

    private String activeFlags(SparseArray<String> valueNames, int bitfield) {
        int i;
        StringBuilder sb = new StringBuilder();
        int size = valueNames.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = valueNames.keyAt(i2);
            String str = valueNames.get(iKeyAt);
            y45.i(str, "valueNames[maskValue]");
            if (g1a.D(str, SUFFIX_MASK, false, 2, null) && (i = iKeyAt & bitfield) > 0) {
                if (sb.length() > 0) {
                    sb.append('+');
                }
                sb.append(valueNames.get(i));
            }
        }
        String string = sb.toString();
        y45.i(string, "result.toString()");
        return string;
    }

    private JSONObject collectConfiguration(Context context) {
        try {
            Configuration configuration = context.getResources().getConfiguration();
            y45.i(configuration, "context.resources.configuration");
            return configToJson(configuration);
        } catch (RuntimeException e) {
            c.d.w(c.c, "Couldn't retrieve CrashConfiguration for : " + context.getPackageName(), e);
            return null;
        }
    }

    private JSONObject configToJson(Configuration conf) {
        JSONObject jSONObject = new JSONObject();
        Map<Prefix, SparseArray<String>> valueArrays = getValueArrays();
        Field[] fields = conf.getClass().getFields();
        y45.i(fields, "conf.javaClass.fields");
        for (Field field : fields) {
            try {
                if (!Modifier.isStatic(field.getModifiers())) {
                    String name = field.getName();
                    try {
                        if (y45.e(field.getType(), Integer.TYPE)) {
                            y45.i(field, "f");
                            jSONObject.put(name, getFieldValueName(valueArrays, conf, field));
                        } else if (field.get(conf) != null) {
                            jSONObject.put(name, field.get(conf));
                        }
                    } catch (JSONException e) {
                        c.d.w(c.c, "Could not collect configuration field " + name, e);
                    }
                }
            } catch (IllegalAccessException e2) {
                c.d.e(c.c, "Error while inspecting device configuration: ", e2);
            } catch (IllegalArgumentException e3) {
                c.d.e(c.c, "Error while inspecting device configuration: ", e3);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (r0.equals(org.acra.collector.ConfigurationCollector.FIELD_MCC) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        return java.lang.Integer.valueOf(r10.getInt(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
    
        if (r0.equals(org.acra.collector.ConfigurationCollector.FIELD_MNC) == false) goto L21;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object getFieldValueName(Map<Prefix, ? extends SparseArray<String>> valueArrays, Configuration conf, Field f) throws IllegalAccessException {
        Prefix prefix;
        SparseArray sparseArray;
        String name = f.getName();
        if (name != null) {
            switch (name.hashCode()) {
                case -1896438090:
                    if (name.equals(FIELD_SCREENLAYOUT)) {
                        return activeFlags((SparseArray) a.m(valueArrays, Prefix.SCREENLAYOUT), f.getInt(conf));
                    }
                    break;
                case -845983145:
                    if (name.equals(FIELD_UIMODE)) {
                        return activeFlags((SparseArray) a.m(valueArrays, Prefix.UI_MODE), f.getInt(conf));
                    }
                    break;
                case 107917:
                    break;
                case 108258:
                    break;
            }
        }
        Prefix[] prefixArrValues = Prefix.values();
        int length = prefixArrValues.length;
        int i = 0;
        while (true) {
            if (i < length) {
                prefix = prefixArrValues[i];
                String text = prefix.getText();
                y45.i(name, "fieldName");
                String upperCase = name.toUpperCase(Locale.ROOT);
                y45.i(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                if (!y45.e(text, upperCase + "_")) {
                    i++;
                }
            } else {
                prefix = null;
            }
        }
        if (prefix == null || (sparseArray = (SparseArray) a.m(valueArrays, prefix)) == null) {
            return Integer.valueOf(f.getInt(conf));
        }
        String str = (String) sparseArray.get(f.getInt(conf));
        return str == null ? Integer.valueOf(f.getInt(conf)) : str;
    }

    private Map<Prefix, SparseArray<String>> getValueArrays() {
        Pair pairA;
        Field[] fields = Configuration.class.getFields();
        y45.i(fields, "Configuration::class.java.fields");
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (true) {
            Prefix prefix = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            Field field2 = (Field) next;
            for (Prefix prefix2 : Prefix.values()) {
                String name = field2.getName();
                y45.i(name, "field.name");
                if (g1a.R(name, prefix2.getText(), false, 2, null)) {
                    prefix = prefix2;
                    break;
                }
            }
            Object arrayList2 = linkedHashMap.get(prefix);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(prefix, arrayList2);
            }
            ((List) arrayList2).add(next);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((Prefix) entry.getKey()) != null) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList3 = new ArrayList(linkedHashMap2.size());
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            Prefix prefix3 = (Prefix) entry2.getKey();
            List<Field> list = (List) entry2.getValue();
            y45.g(prefix3);
            SparseArray sparseArray = new SparseArray();
            for (Field field3 : list) {
                try {
                    pairA = abb.a(Integer.valueOf(field3.getInt(null)), field3.getName());
                } catch (IllegalAccessException e) {
                    c.d.w(c.c, "Error while inspecting device configuration: ", e);
                    pairA = null;
                } catch (IllegalArgumentException e2) {
                    c.d.w(c.c, "Error while inspecting device configuration: ", e2);
                    pairA = null;
                }
                if (pairA != null) {
                    sparseArray.put(((Number) pairA.component1()).intValue(), pairA.component2());
                }
            }
            arrayList3.add(abb.a(prefix3, sparseArray));
        }
        return jy5.c(a.z(arrayList3, new EnumMap(Prefix.class)), new e74() {
            @Override
            public final SparseArray<String> invoke(Prefix prefix4) {
                return new SparseArray<>();
            }
        });
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        int i = b.a[reportField.ordinal()];
        if (i == 1) {
            target.i(ReportField.INITIAL_CONFIGURATION, this.initialConfiguration);
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            target.i(ReportField.CRASH_CONFIGURATION, collectConfiguration(context));
        }
    }

    @Override
    public void collectApplicationStartUp(Context context, CoreConfiguration config) {
        y45.j(context, "context");
        y45.j(config, "config");
        if (config.getReportContent().contains(ReportField.INITIAL_CONFIGURATION)) {
            this.initialConfiguration = collectConfiguration(context);
        }
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }
}
