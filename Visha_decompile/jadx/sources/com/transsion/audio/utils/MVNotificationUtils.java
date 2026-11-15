package com.transsion.audio.utils;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.audio.utils.MVNotificationUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.bx5;
import defpackage.ex5;
import defpackage.se;
import defpackage.u71;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.ToLongFunction;
import org.mozilla.javascript.ES6Iterator;

public abstract class MVNotificationUtils {
    public static Set a = ConcurrentHashMap.newKeySet();
    public static ArrayList b = new ArrayList();
    public static final Boolean c = Boolean.FALSE;

    static {
        bx5.a().c(new bx5.a() {
            @Override
            public final void a(AudioItem audioItem) {
                MVNotificationUtils.i(audioItem);
            }
        });
    }

    public static void b(AudioItem audioItem) {
        c(u71.c(audioItem));
    }

    public static void c(ArrayList arrayList) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((AudioItem) it.next()).dateModified = jCurrentTimeMillis;
        }
        a.addAll(arrayList);
        FindNewAudioNotificationHelper.n(j(), new ex5(), se.a(), null, FindNewAudioNotificationHelper.NotificationType.NEW_MV_NOTIFICATION);
    }

    public static void d(ArrayList arrayList) {
        SharedPreferences.Editor editorEdit = se.a().getSharedPreferences("new_mv_temp_list", 0).edit();
        editorEdit.putString(ES6Iterator.VALUE_PROPERTY, new Gson().toJson(arrayList));
        editorEdit.apply();
    }

    public static void e() {
        synchronized (c) {
            a = ConcurrentHashMap.newKeySet();
        }
    }

    public static void f() {
        synchronized (c) {
            b = j();
            a = ConcurrentHashMap.newKeySet();
        }
    }

    public static ArrayList g() {
        return (ArrayList) new Gson().fromJson(se.a().getSharedPreferences("new_mv_temp_list", 0).getString(ES6Iterator.VALUE_PROPERTY, null), new TypeToken<ArrayList<AudioItem>>() {
        }.getType());
    }

    public static ArrayList h(boolean z) {
        ArrayList arrayListG;
        synchronized (c) {
            if (z) {
                try {
                    f();
                } catch (Throwable th) {
                    throw th;
                }
            }
            arrayListG = b.isEmpty() ? g() : b;
        }
        return arrayListG;
    }

    public static void i(AudioItem audioItem) {
        if (audioItem != null) {
            b(audioItem);
        }
    }

    public static ArrayList j() {
        ArrayList arrayList = new ArrayList(Arrays.asList((AudioItem[]) a.toArray(new AudioItem[0])));
        arrayList.sort(Comparator.comparingLong(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                return ((AudioItem) obj).getModifiedTime();
            }
        }));
        d(arrayList);
        return arrayList;
    }
}
