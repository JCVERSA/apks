package com.mgtv.ssp.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public final class c {
    public static double a(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height_portrait", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }

    public static Activity b(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static int a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static String a() {
        return new SimpleDateFormat(OSDateTimePicker.FORMAT_H_M, Locale.getDefault()).format(new Date());
    }

    @NonNull
    public static <T> List<T> a(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }
}
