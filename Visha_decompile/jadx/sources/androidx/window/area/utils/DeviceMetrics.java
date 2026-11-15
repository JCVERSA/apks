package androidx.window.area.utils;

import android.util.DisplayMetrics;
import androidx.annotation.RequiresApi;
import defpackage.y45;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import kotlin.Metadata;

@RequiresApi(17)
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Landroidx/window/area/utils/DeviceMetrics;", "", CommonUrlParts.MANUFACTURER, "", CommonUrlParts.MODEL, "rearDisplayMetrics", "Landroid/util/DisplayMetrics;", "(Ljava/lang/String;Ljava/lang/String;Landroid/util/DisplayMetrics;)V", "getManufacturer", "()Ljava/lang/String;", "getModel", "getRearDisplayMetrics", "()Landroid/util/DisplayMetrics;", "equals", "", "other", "hashCode", "", "toString", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DeviceMetrics {
    private final String manufacturer;
    private final String model;
    private final DisplayMetrics rearDisplayMetrics;

    public DeviceMetrics(String str, String str2, DisplayMetrics displayMetrics) {
        y45.j(str, CommonUrlParts.MANUFACTURER);
        y45.j(str2, CommonUrlParts.MODEL);
        y45.j(displayMetrics, "rearDisplayMetrics");
        this.manufacturer = str;
        this.model = str2;
        this.rearDisplayMetrics = displayMetrics;
    }

    public boolean equals(Object other) {
        if (other instanceof DeviceMetrics) {
            DeviceMetrics deviceMetrics = (DeviceMetrics) other;
            if (y45.e(this.manufacturer, deviceMetrics.manufacturer) && y45.e(this.model, deviceMetrics.model) && this.rearDisplayMetrics.equals(deviceMetrics.rearDisplayMetrics)) {
                return true;
            }
        }
        return false;
    }

    public final String getManufacturer() {
        return this.manufacturer;
    }

    public final String getModel() {
        return this.model;
    }

    public final DisplayMetrics getRearDisplayMetrics() {
        return this.rearDisplayMetrics;
    }

    public int hashCode() {
        return (((this.manufacturer.hashCode() * 31) + this.model.hashCode()) * 31) + this.rearDisplayMetrics.hashCode();
    }

    public String toString() {
        return "DeviceMetrics{ Manufacturer: " + this.manufacturer + ", model: " + this.model + ", Rear display metrics: " + this.rearDisplayMetrics + " }";
    }
}
