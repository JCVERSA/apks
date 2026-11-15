package androidx.window.area.utils;

import android.util.DisplayMetrics;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.x71;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;

@RequiresApi(17)
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000eR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/window/area/utils/DeviceUtils;", "", "()V", "deviceList", "", "Landroidx/window/area/utils/DeviceMetrics;", "getRearDisplayMetrics", "Landroid/util/DisplayMetrics;", CommonUrlParts.MANUFACTURER, "", CommonUrlParts.MODEL, "getRearDisplayMetrics$window_release", "hasDeviceMetrics", "", "hasDeviceMetrics$window_release", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DeviceUtils {
    public static final DeviceUtils INSTANCE = new DeviceUtils();
    private static final List<DeviceMetrics> deviceList;

    static {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.widthPixels = 1080;
        displayMetrics.heightPixels = 2092;
        displayMetrics.density = 2.625f;
        displayMetrics.densityDpi = TypedValues.CycleType.TYPE_EASING;
        zfb zfbVar = zfb.a;
        deviceList = x71.e(new DeviceMetrics("google", "pixel fold", displayMetrics));
    }

    private DeviceUtils() {
    }

    public final DisplayMetrics getRearDisplayMetrics$window_release(String manufacturer, String model) {
        Object next;
        y45.j(manufacturer, CommonUrlParts.MANUFACTURER);
        y45.j(model, CommonUrlParts.MODEL);
        Iterator<T> it = deviceList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            DeviceMetrics deviceMetrics = (DeviceMetrics) next;
            String manufacturer2 = deviceMetrics.getManufacturer();
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = manufacturer.toLowerCase(locale);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (y45.e(manufacturer2, lowerCase)) {
                String model2 = deviceMetrics.getModel();
                y45.i(locale, "US");
                String lowerCase2 = model.toLowerCase(locale);
                y45.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                if (y45.e(model2, lowerCase2)) {
                    break;
                }
            }
        }
        DeviceMetrics deviceMetrics2 = (DeviceMetrics) next;
        if (deviceMetrics2 != null) {
            return deviceMetrics2.getRearDisplayMetrics();
        }
        return null;
    }

    public final boolean hasDeviceMetrics$window_release(String manufacturer, String model) {
        y45.j(manufacturer, CommonUrlParts.MANUFACTURER);
        y45.j(model, CommonUrlParts.MODEL);
        List<DeviceMetrics> list = deviceList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (DeviceMetrics deviceMetrics : list) {
            String manufacturer2 = deviceMetrics.getManufacturer();
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = manufacturer.toLowerCase(locale);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (y45.e(manufacturer2, lowerCase)) {
                String model2 = deviceMetrics.getModel();
                y45.i(locale, "US");
                String lowerCase2 = model.toLowerCase(locale);
                y45.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                if (y45.e(model2, lowerCase2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
