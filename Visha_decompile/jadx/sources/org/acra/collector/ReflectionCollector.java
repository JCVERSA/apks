package org.acra.collector;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.g1a;
import defpackage.ts8;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u00020\b2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0012¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0012¢\u0006\u0004\b\u000f\u0010\u0010J7\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lorg/acra/collector/ReflectionCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Ljava/lang/Class;", "someClass", "Lorg/json/JSONObject;", TtmlNode.RUBY_CONTAINER, "Lzfb;", "collectStaticGettersResults", "(Ljava/lang/Class;Lorg/json/JSONObject;)V", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "getBuildConfigClass", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Ljava/lang/Class;", "Lorg/acra/ReportField;", "reportField", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class ReflectionCollector extends BaseReportFieldCollector {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void c(Companion companion, Class cls, JSONObject jSONObject, Collection collection, int i, Object obj) {
            if ((i & 4) != 0) {
                collection = y71.k();
            }
            companion.b(cls, jSONObject, collection);
        }

        public final void b(Class cls, JSONObject jSONObject, Collection collection) {
            Field[] fields = cls.getFields();
            y45.i(fields, "fields");
            for (Field field : fields) {
                if (!collection.contains(field.getName())) {
                    try {
                        Object obj = field.get(null);
                        if (obj != null) {
                            if (field.getType().isArray()) {
                                Object[] objArr = (Object[]) obj;
                                jSONObject.put(field.getName(), new JSONArray((Collection) y71.n(Arrays.copyOf(objArr, objArr.length))));
                            } else {
                                jSONObject.put(field.getName(), obj);
                            }
                        }
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                    }
                }
            }
        }

        public Companion() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.BUILD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.BUILD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.ENVIRONMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public ReflectionCollector() {
        super(ReportField.BUILD, ReportField.BUILD_CONFIG, ReportField.ENVIRONMENT);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003e  */
    /* JADX WARN: Code duplicated, block: B:16:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0055 A[SYNTHETIC] */
    private void collectStaticGettersResults(Class<?> someClass, JSONObject container) throws JSONException {
        Method[] methods = someClass.getMethods();
        y45.i(methods, "methods");
        for (Method method : methods) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            y45.i(parameterTypes, "method.parameterTypes");
            if (parameterTypes.length == 0) {
                String name = method.getName();
                y45.i(name, "method.name");
                if (!g1a.R(name, "get", false, 2, null)) {
                    String name2 = method.getName();
                    y45.i(name2, "method.name");
                    if (g1a.R(name2, "is", false, 2, null)) {
                        if (!y45.e("getClass", method.getName())) {
                            try {
                                container.put(method.getName(), method.invoke(null, null));
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                } else if (!y45.e("getClass", method.getName())) {
                    container.put(method.getName(), method.invoke(null, null));
                }
            }
        }
    }

    private Class<?> getBuildConfigClass(Context context, CoreConfiguration config) throws ClassNotFoundException {
        Class<?> buildConfigClass = config.getBuildConfigClass();
        if (buildConfigClass != null) {
            return buildConfigClass;
        }
        Class<?> cls = Class.forName(context.getPackageName() + ".BuildConfig");
        y45.i(cls, "forName(context.packageName + \".BuildConfig\")");
        return cls;
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws JSONException, ClassNotFoundException {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        JSONObject jSONObject = new JSONObject();
        int i = b.a[reportField.ordinal()];
        if (i == 1) {
            Companion companion = INSTANCE;
            companion.b(Build.class, jSONObject, x71.e("SERIAL"));
            JSONObject jSONObject2 = new JSONObject();
            Companion.c(companion, Build.VERSION.class, jSONObject2, null, 4, null);
            jSONObject.put("VERSION", jSONObject2);
        } else if (i == 2) {
            Companion.c(INSTANCE, getBuildConfigClass(context, config), jSONObject, null, 4, null);
        } else {
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            collectStaticGettersResults(Environment.class, jSONObject);
        }
        target.i(reportField, jSONObject);
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }
}
