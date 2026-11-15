package org.acra.collector;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.Display;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.widget.Key;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.display.BuildConfig;
import defpackage.c;
import defpackage.g1a;
import defpackage.ts8;
import defpackage.y45;
import defpackage.y71;
import java.lang.reflect.Field;
import java.util.Collection;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0012¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0012¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u0018\u0010\u0011J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u0019\u0010\u0011J\u001f\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001a\u0010\u0011J\u001f\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001b\u0010\u0011J\u001f\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001c\u0010\u0011J\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001d\u0010\u0011J\u001f\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001e\u0010\u0011J\u001f\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001f\u0010\u0011J\u001f\u0010\u001e\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u000e\u001a\u00020\u000bH\u0012¢\u0006\u0004\b\u001e\u0010\"J%\u0010&\u001a\u00020\u00152\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00150#2\u0006\u0010%\u001a\u00020\u0013H\u0012¢\u0006\u0004\b&\u0010'J7\u00100\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101¨\u00062"}, d2 = {"Lorg/acra/collector/DisplayManagerCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "", "Landroid/view/Display;", "getDisplays", "(Landroid/content/Context;)[Landroid/view/Display;", BuildConfig.FLAVOR, "Lorg/json/JSONObject;", "collectDisplayData", "(Landroid/view/Display;)Lorg/json/JSONObject;", TtmlNode.RUBY_CONTAINER, "Lzfb;", "collectIsValid", "(Landroid/view/Display;Lorg/json/JSONObject;)V", "collectRotation", "", Key.ROTATION, "", "rotationToString", "(I)Ljava/lang/String;", "collectRectSize", "collectSize", "collectRealSize", "collectCurrentSizeRange", "collectFlags", "collectName", "collectMetrics", "collectRealMetrics", "Landroid/util/DisplayMetrics;", "metrics", "(Landroid/util/DisplayMetrics;Lorg/json/JSONObject;)V", "Landroid/util/SparseArray;", "flagNames", "bitfield", "activeFlags", "(Landroid/util/SparseArray;I)Ljava/lang/String;", "Lorg/acra/ReportField;", "reportField", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class DisplayManagerCollector extends BaseReportFieldCollector {
    public DisplayManagerCollector() {
        super(ReportField.DISPLAY);
    }

    private String activeFlags(SparseArray<String> flagNames, int bitfield) {
        StringBuilder sb = new StringBuilder();
        int size = flagNames.size();
        for (int i = 0; i < size; i++) {
            int iKeyAt = flagNames.keyAt(i) & bitfield;
            if (iKeyAt > 0) {
                if (sb.length() > 0) {
                    sb.append('+');
                }
                sb.append(flagNames.get(iKeyAt));
            }
        }
        String string = sb.toString();
        y45.i(string, "result.toString()");
        return string;
    }

    private void collectCurrentSizeRange(Display display, JSONObject container) throws JSONException {
        Point point = new Point();
        Point point2 = new Point();
        display.getCurrentSizeRange(point, point2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("smallest", new JSONArray((Collection) y71.n(Integer.valueOf(point.x), Integer.valueOf(point.y))));
        jSONObject.put("largest", new JSONArray((Collection) y71.n(Integer.valueOf(point2.x), Integer.valueOf(point2.y))));
        container.put("currentSizeRange", jSONObject);
    }

    private JSONObject collectDisplayData(Display display) throws JSONException {
        display.getMetrics(new DisplayMetrics());
        JSONObject jSONObject = new JSONObject();
        collectCurrentSizeRange(display, jSONObject);
        collectFlags(display, jSONObject);
        collectMetrics(display, jSONObject);
        collectRealMetrics(display, jSONObject);
        collectName(display, jSONObject);
        collectRealSize(display, jSONObject);
        collectRectSize(display, jSONObject);
        collectSize(display, jSONObject);
        collectRotation(display, jSONObject);
        collectIsValid(display, jSONObject);
        jSONObject.put("orientation", display.getRotation()).put("refreshRate", display.getRefreshRate()).put("height", display.getHeight()).put("width", display.getWidth()).put("pixelFormat", display.getPixelFormat());
        return jSONObject;
    }

    private void collectFlags(Display display, JSONObject container) throws JSONException {
        SparseArray<String> sparseArray = new SparseArray<>();
        int flags = display.getFlags();
        Field[] fields = display.getClass().getFields();
        y45.i(fields, "display.javaClass.fields");
        for (Field field : fields) {
            String name = field.getName();
            y45.i(name, "field.name");
            if (g1a.R(name, "FLAG_", false, 2, null)) {
                try {
                    sparseArray.put(field.getInt(null), field.getName());
                } catch (IllegalAccessException unused) {
                }
            }
        }
        container.put("flags", activeFlags(sparseArray, flags));
    }

    private void collectIsValid(Display display, JSONObject container) throws JSONException {
        container.put("isValid", display.isValid());
    }

    private void collectMetrics(Display display, JSONObject container) throws JSONException {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getMetrics(displayMetrics);
        JSONObject jSONObject = new JSONObject();
        collectMetrics(displayMetrics, jSONObject);
        container.put("metrics", jSONObject);
    }

    private void collectName(Display display, JSONObject container) throws JSONException {
        container.put("name", display.getName());
    }

    private void collectRealMetrics(Display display, JSONObject container) throws JSONException {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        JSONObject jSONObject = new JSONObject();
        collectMetrics(displayMetrics, jSONObject);
        container.put("realMetrics", jSONObject);
    }

    private void collectRealSize(Display display, JSONObject container) throws JSONException {
        Point point = new Point();
        display.getRealSize(point);
        container.put("realSize", new JSONArray((Collection) y71.n(Integer.valueOf(point.x), Integer.valueOf(point.y))));
    }

    private void collectRectSize(Display display, JSONObject container) throws JSONException {
        Rect rect = new Rect();
        display.getRectSize(rect);
        container.put("rectSize", new JSONArray((Collection) y71.n(Integer.valueOf(rect.top), Integer.valueOf(rect.left), Integer.valueOf(rect.width()), Integer.valueOf(rect.height()))));
    }

    private void collectRotation(Display display, JSONObject container) throws JSONException {
        container.put(Key.ROTATION, rotationToString(display.getRotation()));
    }

    private void collectSize(Display display, JSONObject container) throws JSONException {
        Point point = new Point();
        display.getSize(point);
        container.put(PlayAudioData.TAG_SIZE, new JSONArray((Collection) y71.n(Integer.valueOf(point.x), Integer.valueOf(point.y))));
    }

    private Display[] getDisplays(Context context) {
        Object systemService = context.getSystemService(BuildConfig.FLAVOR);
        y45.h(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
        Display[] displays = ((DisplayManager) systemService).getDisplays();
        y45.i(displays, "{\n            (context.g…nager).displays\n        }");
        return displays;
    }

    private String rotationToString(int rotation) {
        if (rotation == 0) {
            return "ROTATION_0";
        }
        if (rotation == 1) {
            return "ROTATION_90";
        }
        if (rotation != 2) {
            return rotation != 3 ? String.valueOf(rotation) : "ROTATION_270";
        }
        return "ROTATION_180";
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        JSONObject jSONObject = new JSONObject();
        for (Display display : getDisplays(context)) {
            try {
                jSONObject.put(String.valueOf(display.getDisplayId()), collectDisplayData(display));
            } catch (JSONException e) {
                c.d.w(c.c, "Failed to collect data for display " + display.getDisplayId(), e);
            }
        }
        target.i(ReportField.DISPLAY, jSONObject);
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    private void collectMetrics(DisplayMetrics metrics, JSONObject container) throws JSONException {
        container.put("density", metrics.density).put("densityDpi", metrics.densityDpi).put("scaledDensity", "x" + metrics.scaledDensity).put("widthPixels", metrics.widthPixels).put("heightPixels", metrics.heightPixels).put("xdpi", metrics.xdpi).put("ydpi", metrics.ydpi);
    }
}
