package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.util.SparseArray;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.google.gson.Gson;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.FolderLabelItem;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaInfo;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.TotalVideosBean;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import com.transsion.dbdata.utils.FolderLabelUtils;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.regex.Pattern;

public abstract class qpb {
    public static int p;
    public static String q;
    public static String r;
    public static final String[] a = {".srt", ".ass", ".scc", ".stl"};
    public static final String[] b = {"_id", "title", "_display_name", "mime_type", "datetaken", "date_added", "date_modified", "_data", "duration", "bucket_id", "bucket_display_name", "_size", "resolution", "orientation", "width", "height"};
    public static final String[] c = {"_id", "title", "_display_name", "mime_type", "datetaken", "date_added", "date_modified", "_data", "duration", "bucket_id", "bucket_display_name", "_size", "orientation", "width", "height"};
    public static final String[] d = {"_id", "title", "_display_name", "mime_type", "datetaken", "date_added", "date_modified", "_data", "bucket_id", "bucket_display_name", "_size"};
    public static final String e = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static ArrayList f = new ArrayList();
    public static final Object g = new Object();
    public static final Object h = new Object();
    public static final Object i = new Object();
    public static final Object j = new Object();
    public static final Object k = new Object();
    public static final Object l = new Object();
    public static final Object m = new Object();
    public static final Object n = new Object();
    public static final Object o = new Object();
    public static final ArrayList s = new ArrayList();
    public static final ArrayList t = new ArrayList();
    public static final ArrayList u = new ArrayList();
    public static final ArrayList v = new ArrayList();

    public static ArrayList A(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2) {
        Log.e("VideoDBHelper", "loadAllLongVideoMediaItem count:" + i2 + ", isInternal:" + z);
        TreeSet treeSet = new TreeSet();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(n0(z), b, "(duration IS NULL OR duration > 300000)", null, p());
                if (cursorQuery != null) {
                    Log.e("VideoDBHelper", "loadAllLongVideoMediaItem:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            MediaItem mediaItemJ = j(cursorQuery, z);
                            if (mediaItemJ.duration > 300000) {
                                G(mediaItemJ);
                                arrayList.add(mediaItemJ);
                            }
                            if (arrayList.size() >= i2) {
                                break;
                            }
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (cursorQuery != null) {
                }
            }
            if (arrayList.size() < i2) {
                H(contentResolver, arrayList, z, i2, treeSet, false);
            }
            ArrayList<MediaItem> arrayList2 = new ArrayList(arrayList);
            ns9.sortMediaItem(arrayList2);
            for (MediaItem mediaItem : arrayList2) {
                if (treeSet.size() < 30 && RecentAddDataManager.a().f(mediaItem, true)) {
                    treeSet.add(Integer.valueOf(mediaItem.id));
                }
                if (treeSet.size() == 30) {
                    break;
                }
            }
            RecentAddDataManager.a().l(treeSet, true);
            return m0(arrayList, true);
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static void B(ContentResolver contentResolver, ArrayList arrayList, boolean z, ArrayList arrayList2) {
        ArrayList<MediaItem> arrayList3 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(n0(z), b, null, null, p());
                Log.e("VideoDBHelper", "loadAllMediaItemWithList:" + cursorQuery);
                if (cursorQuery != null) {
                    Log.e("VideoDBHelper", "loadAllMediaItemWithList:" + cursorQuery.getCount() + ", isInternal:" + z);
                    int iE = oa1.e();
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            arrayList3.add(j(cursorQuery, z));
                            if (arrayList3.size() >= iE) {
                                break;
                            }
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (cursorQuery != null) {
                }
            }
            J(contentResolver, arrayList3, z, oa1.e());
            for (MediaItem mediaItem : arrayList3) {
                if (arrayList2 == null || !arrayList2.contains(mediaItem)) {
                    arrayList.add(mediaItem);
                }
            }
            l0(arrayList);
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static ArrayList C(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2) {
        Log.e("VideoDBHelper", "loadAllShortVideoMediaItem count:" + i2 + ", isInternal:" + z);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(n0(z), b, "(duration IS NULL OR duration <= 300000)", null, p());
                if (cursorQuery != null) {
                    Log.e("VideoDBHelper", "loadAllShortVideoMediaItem:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            MediaItem mediaItemJ = j(cursorQuery, z);
                            if (mediaItemJ.duration <= 300000) {
                                G(mediaItemJ);
                                arrayList.add(mediaItemJ);
                            }
                            if (arrayList.size() >= i2) {
                                break;
                            }
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (cursorQuery != null) {
                }
            }
            if (arrayList.size() < i2) {
                H(contentResolver, arrayList, z, i2, null, true);
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static void D(ContentResolver contentResolver, ArrayList arrayList, boolean z) throws Throwable {
        SparseArray sparseArrayP = P();
        Cursor cursor = null;
        try {
            try {
                ArrayList arrayListL = l();
                Cursor cursorQuery = contentResolver.query(n0(z), b, null, null, p());
                if (cursorQuery != null) {
                    try {
                        Log.e("VideoDBHelper", "loadVideoMediaBucketFilterLabelItem:" + cursorQuery.getCount() + ", isInternal:" + z + ", " + arrayListL.size());
                        Q(cursorQuery, arrayList, sparseArrayP, arrayListL, z, false);
                        M(contentResolver, sparseArrayP, arrayList, arrayListL, z);
                    } catch (Exception e2) {
                        e = e2;
                        cursor = cursorQuery;
                        Log.i("VideoDBHelper", e.toString());
                        if (cursor == null) {
                            return;
                        } else {
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                            g0(sparseArrayP);
                        }
                        throw th;
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                    g0(sparseArrayP);
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static ArrayList E(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2) {
        Log.e("VideoDBHelper", "loadAllVideoMediaItem count:" + i2 + ", isInternal:" + z);
        TreeSet treeSet = new TreeSet();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(n0(z), b, null, null, p());
                if (cursorQuery != null) {
                    Log.e("VideoDBHelper", "loadAllVideoMediaItem:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            MediaItem mediaItemJ = j(cursorQuery, z);
                            G(mediaItemJ);
                            arrayList.add(mediaItemJ);
                            if (arrayList.size() >= i2) {
                                break;
                            }
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (cursorQuery != null) {
                }
            }
            if (arrayList.size() < i2) {
                K(contentResolver, arrayList, z, i2, treeSet);
            }
            ArrayList<MediaItem> arrayList2 = new ArrayList(arrayList);
            ns9.sortMediaItem(arrayList2);
            for (MediaItem mediaItem : arrayList2) {
                if (treeSet.size() < 30 && RecentAddDataManager.a().f(mediaItem, true)) {
                    treeSet.add(Integer.valueOf(mediaItem.id));
                }
                if (treeSet.size() == 30) {
                    break;
                }
            }
            RecentAddDataManager.a().l(treeSet, true);
            return m0(arrayList, true);
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static void F() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                qpb.z();
            }
        });
    }

    public static void G(MediaItem mediaItem) {
        synchronized (j) {
            try {
                ArrayList arrayList = s;
                int iIndexOf = arrayList.indexOf(mediaItem);
                MediaItem mediaItem2 = iIndexOf >= 0 ? (MediaItem) arrayList.get(iIndexOf) : null;
                if (mediaItem2 != null) {
                    mediaItem.setPlayPosition(mediaItem2.playPosition);
                    mediaItem.isPlayComplete = mediaItem2.isPlayComplete;
                    mediaItem.setSubtitleIndex(mediaItem2.subtitleIndex);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void H(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2, Set set, boolean z2) {
        if (pp3.w() || pp3.j()) {
            Log.e("VideoDBHelper", "loadLongOrShortVideoFromFilesDbBySuffix :" + arrayList.size());
            Cursor cursorQuery = null;
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("_data LIKE?");
                    int length = hk3.h.length;
                    for (int i3 = 0; i3 < length - 1; i3++) {
                        sb.append(" OR _data LIKE?");
                    }
                    if (z2) {
                        sb.append(" AND (duration IS NULL OR duration <= 300000)");
                    } else {
                        sb.append(" AND (duration IS NULL OR duration > 300000)");
                    }
                    String string = sb.toString();
                    Log.d("VideoDBHelper", "loadLongOrShortVideoFromFilesDbBySuffix selection:" + string);
                    cursorQuery = contentResolver.query(k(z), c, string, hk3.h, p());
                    if (cursorQuery == null) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            return;
                        }
                        return;
                    }
                    Log.e("VideoDBHelper", "loadVideoFromFilesDbBySuffix:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        String string2 = cursorQuery.getString(7);
                        if (w(string2)) {
                            if (!TextUtils.isEmpty(string2) && string2.contains(Consts.DOT)) {
                                if (!hk3.i.contains(string2.substring(string2.lastIndexOf(Consts.DOT)))) {
                                }
                            }
                            MediaItem mediaItemH = h(cursorQuery, z);
                            long j2 = mediaItemH.duration;
                            if ((j2 <= 300000 && z2) || (j2 > 300000 && !z2)) {
                                G(mediaItemH);
                                if (set != null && set.size() < 30 && RecentAddDataManager.a().f(mediaItemH, true)) {
                                    set.add(Integer.valueOf(mediaItemH.id));
                                }
                                if (!arrayList.contains(mediaItemH)) {
                                    arrayList.add(mediaItemH);
                                }
                            }
                            if (arrayList.size() >= i2) {
                                break;
                            }
                        }
                    }
                } catch (Exception e2) {
                    Log.d("VideoDBHelper", "loadLongOrShortVideoFromFilesDbBySuffix " + e2);
                    if (0 == 0) {
                        return;
                    }
                }
                cursorQuery.close();
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public static void I(ContentResolver contentResolver, ArrayList arrayList, boolean z, ArrayList arrayList2, boolean z2) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(n0(z), b, "_id in " + arrayList2.toString().replace("[", "(").replace("]", ")"), null, p());
                Log.i("VideoDBHelper", "loadMediaItemByMediaIds:" + cursorQuery);
                t6c.e(arrayList, arrayList2, false);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                Log.i("VideoDBHelper", "loadMediaItemByMediaIds:" + cursorQuery.getCount() + ", isInternal:" + z);
                int iE = oa1.e();
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(7);
                    if (w(string)) {
                        MediaItem mediaItemH = h(cursorQuery, z);
                        G(mediaItemH);
                        if (!arrayList.contains(mediaItemH)) {
                            arrayList.add(mediaItemH);
                        }
                        if (z2 || arrayList.size() >= iE) {
                            break;
                            break;
                        }
                    } else {
                        Log.e("VideoDBHelper", "loadMediaItemByMediaIds not exist data:" + string);
                    }
                }
                L(contentResolver, arrayList, z, Integer.MAX_VALUE, arrayList2);
                m0(arrayList, true);
                cursorQuery.close();
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (cursorQuery == null) {
                }
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static void J(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2) {
        K(contentResolver, arrayList, z, i2, null);
    }

    public static void K(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2, Set set) {
        if (pp3.w() || pp3.j()) {
            Log.e("VideoDBHelper", "loadVideoFromFilesDbBySuffix :" + arrayList.size());
            Cursor cursorQuery = null;
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("_data LIKE?");
                    int length = hk3.h.length;
                    for (int i3 = 0; i3 < length - 1; i3++) {
                        sb.append(" OR _data LIKE?");
                    }
                    String string = sb.toString();
                    Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix selection:" + string);
                    cursorQuery = contentResolver.query(k(z), c, string, hk3.h, p());
                    if (cursorQuery == null) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            return;
                        }
                        return;
                    }
                    Log.e("VideoDBHelper", "loadVideoFromFilesDbBySuffix:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        String string2 = cursorQuery.getString(7);
                        if (w(string2)) {
                            if (!TextUtils.isEmpty(string2) && string2.contains(Consts.DOT)) {
                                if (!hk3.i.contains(string2.substring(string2.lastIndexOf(Consts.DOT)))) {
                                }
                            }
                            MediaItem mediaItemH = h(cursorQuery, z);
                            G(mediaItemH);
                            if (set != null && set.size() < 30 && RecentAddDataManager.a().f(mediaItemH, true)) {
                                set.add(Integer.valueOf(mediaItemH.id));
                            }
                            if (!arrayList.contains(mediaItemH)) {
                                arrayList.add(mediaItemH);
                            }
                            if (arrayList.size() >= i2) {
                                break;
                            }
                        }
                    }
                } catch (Exception e2) {
                    Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix " + e2);
                    if (0 == 0) {
                        return;
                    }
                }
                cursorQuery.close();
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public static void L(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i2, ArrayList arrayList2) {
        if (!pp3.w() && !pp3.j()) {
            return;
        }
        Log.e("VideoDBHelper", "loadVideoFromFilesDbBySuffix :" + arrayList.size());
        Cursor cursorQuery = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("(_data LIKE?");
                int length = hk3.h.length;
                for (int i3 = 0; i3 < length - 1; i3++) {
                    sb.append(" OR _data LIKE?");
                }
                sb.append(") AND " + ("_id in " + arrayList2.toString().replace("[", "(").replace("]", ")")));
                String string = sb.toString();
                Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix selection:" + string);
                cursorQuery = contentResolver.query(k(z), c, string, hk3.h, p());
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                Log.e("VideoDBHelper", "loadVideoFromFilesDbBySuffix:" + cursorQuery.getCount() + ", isInternal:" + z);
                while (cursorQuery.moveToNext()) {
                    String string2 = cursorQuery.getString(7);
                    if (w(string2)) {
                        if (!TextUtils.isEmpty(string2) && string2.contains(Consts.DOT)) {
                            if (!hk3.i.contains(string2.substring(string2.lastIndexOf(Consts.DOT)))) {
                            }
                        }
                        MediaItem mediaItemH = h(cursorQuery, z);
                        G(mediaItemH);
                        if (!arrayList.contains(mediaItemH)) {
                            arrayList.add(mediaItemH);
                        }
                        if (arrayList.size() >= i2) {
                            break;
                        }
                    }
                }
                cursorQuery.close();
            } catch (Exception e2) {
                Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix " + e2);
                if (0 == 0) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static void M(ContentResolver contentResolver, SparseArray sparseArray, ArrayList arrayList, ArrayList arrayList2, boolean z) {
        if (pp3.w() || pp3.j()) {
            Cursor cursorQuery = null;
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("_data LIKE?");
                    int length = hk3.h.length;
                    for (int i2 = 0; i2 < length - 1; i2++) {
                        sb.append(" OR _data LIKE?");
                    }
                    String string = sb.toString();
                    Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix selection:" + string);
                    cursorQuery = contentResolver.query(k(z), c, string, hk3.h, p());
                    if (cursorQuery == null) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            return;
                        }
                        return;
                    }
                    Log.e("VideoDBHelper", "loadVideoFromFilesDbBySuffix:" + cursorQuery.getCount() + ", isInternal:" + z);
                    Q(cursorQuery, arrayList, sparseArray, arrayList2, z, true);
                } catch (Exception e2) {
                    Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix " + e2);
                    if (0 == 0) {
                        return;
                    }
                }
                cursorQuery.close();
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public static void N(ContentResolver contentResolver, ArrayList arrayList, ArrayList arrayList2, boolean z, int i2) {
        O(contentResolver, arrayList, arrayList2, z, i2, null);
    }

    public static void O(ContentResolver contentResolver, ArrayList arrayList, ArrayList arrayList2, boolean z, int i2, Set set) {
        if (arrayList2.isEmpty()) {
            return;
        }
        Log.e("VideoDBHelper", "loadVideoMediaItemFromFilesDb :" + arrayList.size() + StringUtils.COMMA + arrayList2.size());
        Cursor cursorQuery = null;
        try {
            try {
                String[] strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
                StringBuilder sb = new StringBuilder();
                sb.append("?");
                int length = strArr.length;
                for (int i3 = 0; i3 < length - 1; i3++) {
                    sb.append(",?");
                }
                cursorQuery = contentResolver.query(k(z), c, "_data IN(" + ((Object) sb) + ")", strArr, p());
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                Log.e("VideoDBHelper", "loadVideoMediaItemFromFilesDb:" + cursorQuery.getCount() + ", isInternal:" + z);
                while (cursorQuery.moveToNext()) {
                    if (w(cursorQuery.getString(7))) {
                        MediaItem mediaItemH = h(cursorQuery, z);
                        G(mediaItemH);
                        if (set != null && set.size() < 30 && RecentAddDataManager.a().f(mediaItemH, true)) {
                            set.add(Integer.valueOf(mediaItemH.id));
                        }
                        if (!arrayList.contains(mediaItemH)) {
                            arrayList.add(mediaItemH);
                        }
                        if (arrayList.size() >= i2) {
                            break;
                        }
                    }
                }
                cursorQuery.close();
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                e2.printStackTrace();
                if (0 == 0) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static SparseArray P() {
        synchronized (f) {
            try {
                int size = f.size();
                if (size == 0) {
                    return new SparseArray();
                }
                return (SparseArray) f.get(size - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x000c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0147  */
    /* JADX WARN: Code duplicated, block: B:47:0x014d  */
    /* JADX WARN: Code duplicated, block: B:48:0x014f  */
    /* JADX WARN: Code duplicated, block: B:52:0x016b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0172  */
    /* JADX WARN: Code duplicated, block: B:56:0x017a  */
    /* JADX WARN: Code duplicated, block: B:59:0x0186  */
    /* JADX WARN: Code duplicated, block: B:62:0x0192  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:72:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:90:0x01e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0200 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x01f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x000c A[SYNTHETIC] */
    public static void Q(Cursor cursor, ArrayList arrayList, SparseArray sparseArray, ArrayList arrayList2, boolean z, boolean z2) {
        String str;
        String strQ;
        MediaBucket mediaBucket;
        boolean z3;
        String str2;
        boolean z4;
        MediaBucket mediaBucket2;
        String strR;
        String str3;
        MediaBucket mediaBucket3;
        int iF = oa1.f();
        while (cursor.moveToNext()) {
            int i2 = cursor.getInt(9);
            String string = cursor.getString(2);
            String string2 = cursor.getString(7);
            if (TextUtils.isEmpty(string2) || !string2.contains("visha_hls_") || !string2.toLowerCase().endsWith(".ts")) {
                if (z2 && !TextUtils.isEmpty(string2) && string2.contains(Consts.DOT)) {
                    if (!hk3.i.contains(string2.substring(string2.lastIndexOf(Consts.DOT)))) {
                        continue;
                    }
                }
                String strU = av3.u(string2);
                if (w(string2)) {
                    long j2 = cursor.getLong(6);
                    FolderLabelItem folderLabelItemB = FolderLabelUtils.b(strU, string, false);
                    boolean z5 = (folderLabelItemB == null || folderLabelItemB.getMatchName() == null || "".equals(folderLabelItemB.getMatchName().trim())) ? false : true;
                    MediaBucket mediaBucket4 = (MediaBucket) sparseArray.get(i2);
                    if (z5) {
                        MediaBucket mediaBucket5 = (MediaBucket) sparseArray.get(folderLabelItemB.folderIndex);
                        if (mediaBucket5 == null) {
                            MediaBucket mediaBucket6 = new MediaBucket();
                            strQ = "";
                            mediaBucket = mediaBucket4;
                            mediaBucket6.bucketId = i2;
                            mediaBucket6.fromInternal = z;
                            String strR2 = r(string2, string);
                            mediaBucket6.setParentPath(strU);
                            mediaBucket6.setParentName(folderLabelItemB.folderName);
                            str = string;
                            mediaBucket6.setUri(n(z, cursor.getInt(0)));
                            Log.d("VideoDBHelper", "loadVideoMediaBucketFilterLabelItem virtualBucket bucketId:" + i2 + ",parentPath:" + strU + ",uri:" + mediaBucket6.getUri());
                            mediaBucket6.setIndex(folderLabelItemB.folderIndex);
                            mediaBucket6.setLabelFolder(true);
                            mediaBucket6.setVirtualFolder(true);
                            mediaBucket6.setVirtualFolderMatchName(folderLabelItemB.matchName);
                            mediaBucket6.setDateModified(j2);
                            mediaBucket6.setRelativePath(strR2);
                            mediaBucket6.mediaItemDataList.add(string2);
                            sparseArray.put(folderLabelItemB.folderIndex, mediaBucket6);
                            arrayList.add(mediaBucket6);
                            if (arrayList.size() >= iF) {
                                return;
                            }
                        } else {
                            str = string;
                            strQ = "";
                            mediaBucket = mediaBucket4;
                            if (!mediaBucket5.mediaItemDataList.contains(string2)) {
                                mediaBucket5.mediaItemDataList.add(string2);
                                z3 = true;
                                mediaBucket5.count++;
                            }
                            str2 = str;
                            if (z5) {
                                folderLabelItemB = FolderLabelUtils.b(strU, str2, z3);
                            }
                            if (folderLabelItemB != null) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (mediaBucket == null) {
                                mediaBucket2 = new MediaBucket();
                                mediaBucket2.bucketId = i2;
                                mediaBucket2.fromInternal = z;
                                strR = r(string2, str2);
                                mediaBucket2.setParentPath(strU);
                                mediaBucket2.setRelativePath(strR);
                                mediaBucket2.setDateModified(j2);
                                if (z4) {
                                    mediaBucket2.setParentName(folderLabelItemB.folderName);
                                } else {
                                    if (cursor.getString(10) != null) {
                                        strQ = cursor.getString(10);
                                    }
                                    if (TextUtils.isEmpty(strQ)) {
                                        strQ = av3.q(strU);
                                    }
                                    if (e.equals(strU)) {
                                        strQ = Consts.SUFFIX_ROOT;
                                    }
                                    str3 = strQ;
                                    if (strR != null && strR.equalsIgnoreCase("DCIM/Camera/")) {
                                        str3 = str3 + " (SD)";
                                    }
                                    mediaBucket2.setParentName(str3);
                                }
                                mediaBucket2.setUri(n(z, cursor.getInt(0)));
                                if (z4) {
                                    mediaBucket2.setIndex(folderLabelItemB.folderIndex);
                                    mediaBucket2.setLabelFolder(true);
                                } else {
                                    mediaBucket2.setIndex(p);
                                    p++;
                                }
                                mediaBucket2.mediaItemDataList.add(string2);
                                sparseArray.put(i2, mediaBucket2);
                                arrayList.add(mediaBucket2);
                                if (arrayList.size() >= iF) {
                                    return;
                                }
                            } else {
                                mediaBucket3 = mediaBucket;
                                if (!mediaBucket3.mediaItemDataList.contains(string2)) {
                                    mediaBucket3.mediaItemDataList.add(string2);
                                    mediaBucket3.count++;
                                }
                            }
                        }
                    } else {
                        str = string;
                        strQ = "";
                        mediaBucket = mediaBucket4;
                    }
                    z3 = true;
                    str2 = str;
                    if (z5) {
                        folderLabelItemB = FolderLabelUtils.b(strU, str2, z3);
                    }
                    if (folderLabelItemB != null) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (mediaBucket == null) {
                        mediaBucket2 = new MediaBucket();
                        mediaBucket2.bucketId = i2;
                        mediaBucket2.fromInternal = z;
                        strR = r(string2, str2);
                        mediaBucket2.setParentPath(strU);
                        mediaBucket2.setRelativePath(strR);
                        mediaBucket2.setDateModified(j2);
                        if (z4) {
                            mediaBucket2.setParentName(folderLabelItemB.folderName);
                        } else {
                            if (cursor.getString(10) != null) {
                                strQ = cursor.getString(10);
                            }
                            if (TextUtils.isEmpty(strQ)) {
                                strQ = av3.q(strU);
                            }
                            if (e.equals(strU)) {
                                strQ = Consts.SUFFIX_ROOT;
                            }
                            str3 = strQ;
                            if (strR != null) {
                                str3 = str3 + " (SD)";
                            }
                            mediaBucket2.setParentName(str3);
                        }
                        mediaBucket2.setUri(n(z, cursor.getInt(0)));
                        if (z4) {
                            mediaBucket2.setIndex(folderLabelItemB.folderIndex);
                            mediaBucket2.setLabelFolder(true);
                        } else {
                            mediaBucket2.setIndex(p);
                            p++;
                        }
                        mediaBucket2.mediaItemDataList.add(string2);
                        sparseArray.put(i2, mediaBucket2);
                        arrayList.add(mediaBucket2);
                        if (arrayList.size() >= iF) {
                            return;
                        }
                    } else {
                        mediaBucket3 = mediaBucket;
                        if (!mediaBucket3.mediaItemDataList.contains(string2)) {
                            mediaBucket3.mediaItemDataList.add(string2);
                            mediaBucket3.count++;
                        }
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public static ArrayList R(Context context, boolean z, int i2) {
        ArrayList arrayListA;
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (n) {
            c(context);
            arrayListA = A(contentResolver, arrayList, false, i2);
        }
        return arrayListA;
    }

    public static ArrayList S(Context context, ArrayList arrayList) {
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList2 = new ArrayList();
        synchronized (g) {
            B(contentResolver, arrayList2, false, arrayList);
        }
        return arrayList2;
    }

    public static ArrayList T(Context context, boolean z, int i2) {
        ArrayList arrayListC;
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (m) {
            arrayListC = C(contentResolver, arrayList, false, i2);
        }
        ns9.sortMediaItem(arrayListC);
        Log.d("VideoDBHelper", "queryAllShortVideos count = " + arrayListC.size());
        return arrayListC;
    }

    public static ArrayList U(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (i) {
            p = FolderLabelUtils.c().size() + 1;
            D(contentResolver, arrayList, false);
            arrayList.sort(Comparator.comparing(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Integer.valueOf(((MediaBucket) obj).getIndex());
                }
            }));
        }
        return arrayList;
    }

    public static ArrayList V(Context context, boolean z, int i2) {
        ArrayList arrayListE;
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (h) {
            c(context);
            arrayListE = E(contentResolver, arrayList, false, i2);
        }
        return arrayListE;
    }

    public static ArrayList W(Context context, String str, boolean z) {
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (g) {
            Cursor cursorQuery = null;
            try {
                try {
                    try {
                        cursorQuery = contentResolver.query(n0(z), b, "relative_path LIKE?", new String[]{"%" + str + "%"}, "date_modified DESC");
                        StringBuilder sb = new StringBuilder();
                        sb.append("queryDownloadedVideos:");
                        sb.append(cursorQuery);
                        Log.e("VideoDBHelper", sb.toString());
                        if (cursorQuery == null) {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return arrayList;
                        }
                        Log.e("VideoDBHelper", "queryDownloadedVideos:" + cursorQuery.getCount() + ", isInternal:" + z);
                        int iE = oa1.e();
                        while (cursorQuery.moveToNext()) {
                            if (w(cursorQuery.getString(7))) {
                                MediaItem mediaItemJ = j(cursorQuery, z);
                                arrayList.add(mediaItemJ);
                                for (String str2 : a) {
                                    if (!TextUtils.isEmpty(mediaItemJ.data) && mediaItemJ.data.endsWith(str2)) {
                                        mediaItemJ.type = MediaItem.MediaType.SUBTITLE;
                                        break;
                                    }
                                }
                                if (arrayList.size() >= iE) {
                                    break;
                                }
                            }
                        }
                    } catch (Exception e2) {
                        Log.i("VideoDBHelper", e2.toString());
                        if (cursorQuery != null) {
                            break;
                        }
                        return arrayList;
                    }
                    cursorQuery.close();
                    return arrayList;
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th2;
            }
        }
    }

    public static ArrayList X(ContentResolver contentResolver, ArrayList arrayList, boolean z) {
        ArrayList arrayList2 = new ArrayList();
        I(contentResolver, arrayList2, false, arrayList, z);
        return arrayList2;
    }

    public static MediaItem Y(ContentResolver contentResolver, Uri uri) {
        MediaItem mediaItem = new MediaItem();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = contentResolver.query(uri, b, null, null, null);
                if (cursorQuery == null) {
                    if (uri.getPath() != null) {
                        File file = new File(uri.getPath());
                        if (file.exists()) {
                            mediaItem.displayName = file.getName();
                            mediaItem.dateModified = file.lastModified() / 1000;
                            mediaItem.size = file.length();
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    mediaItem.uri = uri;
                    return mediaItem;
                }
                cursorQuery.moveToFirst();
                if (cursorQuery.getColumnIndex("_display_name") != -1) {
                    mediaItem.displayName = cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                }
                if (cursorQuery.getColumnIndex("_size") != -1) {
                    mediaItem.size = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                }
                if (cursorQuery.getColumnIndex("mime_type") != -1) {
                    mediaItem.mineType = cursorQuery.getString(cursorQuery.getColumnIndex("mime_type"));
                }
                cursorQuery.close();
                if (uri != null) {
                    mediaItem.uri = uri;
                }
                return mediaItem;
            } catch (Exception e2) {
                Log.e("VideoDBHelper", "queryOtherAppVideoItem " + e2);
                if (0 != 0) {
                    cursor.close();
                }
                if (uri != null) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            if (uri != null) {
                mediaItem.uri = uri;
            }
            throw th;
        }
    }

    public static ArrayList Z(Context context, boolean z) {
        ArrayList arrayList;
        synchronized (o) {
            try {
                boolean z2 = false;
                ArrayList<MediaItem> arrayListV = V(context, false, oa1.e());
                arrayList = new ArrayList();
                if (ns9.o() && ns9.p()) {
                    z2 = true;
                }
                if (arrayListV != null) {
                    for (MediaItem mediaItem : arrayListV) {
                        if (RecentAddDataManager.a().g(mediaItem, true) && ((z && !z2) || !mediaItem.isTimeItem)) {
                            arrayList.add(mediaItem);
                        }
                    }
                }
                ns9.y(arrayList);
                if (z && z2) {
                    arrayList = k0(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public static MediaItem a0(ContentResolver contentResolver, int i2) {
        MediaItem mediaItemB0 = b0(contentResolver, i2, false);
        return mediaItemB0 != null ? mediaItemB0 : b0(contentResolver, i2, true);
    }

    public static MediaItem b0(ContentResolver contentResolver, int i2, boolean z) {
        Cursor cursorQuery;
        long jCurrentTimeMillis = System.currentTimeMillis();
        MediaItem mediaItemH = null;
        try {
            cursorQuery = contentResolver.query(k(z), c, "_id = ?", new String[]{String.valueOf(i2)}, null);
        } catch (Exception e2) {
            Log.e("VideoDBHelper", "<queryVideoItem>: [ERROR] query() Exception: " + e2);
            e2.printStackTrace();
            cursorQuery = null;
        }
        if (cursorQuery == null) {
            Log.e("VideoDBHelper", "<queryVideoItem> [ERROR] fail to query()");
            return null;
        }
        try {
            try {
                if (cursorQuery.moveToNext()) {
                    mediaItemH = h(cursorQuery, z);
                }
            } catch (Exception e3) {
                Log.e("VideoDBHelper", "<queryVideoItem>: [ERROR] Exception: " + e3);
                e3.printStackTrace();
            }
            cursorQuery.close();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (mediaItemH != null) {
                Log.d("VideoDBHelper", String.format(Locale.getDefault(), "<queryVideoItem> itemId=%d, path=%s, costTime=%dms", Integer.valueOf(i2), mediaItemH.data, Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)));
            }
            return mediaItemH;
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    public static void c(Context context) {
        synchronized (k) {
            try {
                ArrayList arrayListN = t6c.n(context, false, oa1.e(), false);
                ArrayList arrayList = s;
                arrayList.clear();
                if (arrayListN != null) {
                    arrayList.addAll(arrayListN);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    public static MediaItem c0(ContentResolver contentResolver, String str, boolean z) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        MediaItem mediaItemJ = null;
        try {
            cursorQuery = contentResolver.query(n0(z), b, "_data LIKE?", new String[]{"%" + str + "%"}, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                try {
                    if (cursorQuery.moveToFirst()) {
                        mediaItemJ = j(cursorQuery, z);
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (cursorQuery != null) {
                    }
                    return mediaItemJ;
                }
                cursorQuery.close();
                return mediaItemJ;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0073, code lost:
    
        if (0 != 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        if (0 != 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TotalVideosBean d(Context context, boolean z) {
        int count;
        ContentResolver contentResolver = context.getContentResolver();
        TotalVideosBean totalVideosBean = new TotalVideosBean();
        Cursor cursorQuery = null;
        long j2 = 0;
        int i2 = 0;
        try {
            try {
                cursorQuery = contentResolver.query(n0(z), b, null, null, "date_modified DESC ");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            j2 += cursorQuery.getLong(11);
                        } else {
                            i2++;
                        }
                    }
                    count = cursorQuery.getCount() - i2;
                    totalVideosBean.setTotalCount(count);
                    cursorQuery.close();
                } else if (cursorQuery != null) {
                    count = cursorQuery.getCount();
                    totalVideosBean.setTotalCount(count);
                    cursorQuery.close();
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
            }
        } catch (Throwable unused) {
        }
        totalVideosBean.setTotalSize(j2);
        e(context, z, totalVideosBean);
        totalVideosBean.setTotalCountStr(String.valueOf(totalVideosBean.getTotalCount()));
        totalVideosBean.setTotalSizeStr(Formatter.formatFileSize(context, totalVideosBean.getTotalSize()));
        return totalVideosBean;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x003e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static MediaItem d0(ContentResolver contentResolver, String str, boolean z) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        String[] strArr = {str};
        MediaItem mediaItemH = null;
        try {
            try {
                cursorQuery = contentResolver.query(k(z), c, "_data = ?", strArr, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    contentResolver = cursorQuery;
                    if (zMoveToFirst) {
                        mediaItemH = h(cursorQuery, z);
                        contentResolver = cursorQuery;
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    contentResolver = cursorQuery;
                    if (cursorQuery != null) {
                    }
                    return mediaItemH;
                }
                contentResolver.close();
                return mediaItemH;
            } catch (Throwable th2) {
                th = th2;
                if (contentResolver != 0) {
                    contentResolver.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            contentResolver = 0;
            if (contentResolver != 0) {
                contentResolver.close();
            }
            throw th;
        }
    }

    public static void e(Context context, boolean z, TotalVideosBean totalVideosBean) {
        if (pp3.w() || pp3.j()) {
            ContentResolver contentResolver = context.getContentResolver();
            long totalSize = totalVideosBean.getTotalSize();
            int i2 = 0;
            Cursor cursorQuery = null;
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("_data LIKE?");
                    int length = hk3.h.length;
                    for (int i3 = 0; i3 < length - 1; i3++) {
                        sb.append(" OR _data LIKE?");
                    }
                    String string = sb.toString();
                    Log.d("VideoDBHelper", "loadVideoFromFilesDbBySuffix selection:" + string);
                    cursorQuery = contentResolver.query(k(z), c, string, hk3.h, "date_modified DESC ");
                    if (cursorQuery == null) {
                        if (cursorQuery != null) {
                            totalVideosBean.setTotalCount(totalVideosBean.totalCount + cursorQuery.getCount());
                            cursorQuery.close();
                        }
                        totalVideosBean.setTotalSize(totalSize);
                        return;
                    }
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            totalSize += cursorQuery.getLong(11);
                        } else {
                            i2++;
                        }
                    }
                    totalVideosBean.setTotalCount(totalVideosBean.totalCount + (cursorQuery.getCount() - i2));
                    cursorQuery.close();
                    totalVideosBean.setTotalSize(totalSize);
                } catch (Exception e2) {
                    Log.i("VideoDBHelper", e2.toString());
                    if (0 != 0) {
                    }
                    totalVideosBean.setTotalSize(totalSize);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    totalVideosBean.setTotalCount(totalVideosBean.totalCount + (cursorQuery.getCount() - i2));
                    cursorQuery.close();
                }
                totalVideosBean.setTotalSize(totalSize);
                throw th;
            }
        }
    }

    public static ArrayList e0(ContentResolver contentResolver, MediaBucket mediaBucket) {
        mediaBucket.setFromInternal(true);
        c(Utils.a());
        ArrayList arrayListF0 = f0(contentResolver, mediaBucket, true);
        if (arrayListF0 == null) {
            Log.e("VideoDBHelper", "queryVideosFromBucket video null");
            return arrayListF0;
        }
        mediaBucket.setFromInternal(false);
        ArrayList arrayListF1 = f0(contentResolver, mediaBucket, false);
        if (arrayListF1 != null) {
            arrayListF0.addAll(arrayListF1);
        }
        return arrayListF0;
    }

    public static String f(Context context) {
        Gson gson;
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = contentResolver.query(n0(false), b, null, null, "date_modified DESC ");
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    gson = new Gson();
                } else {
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            String strJ = av3.j(cursorQuery.getString(3));
                            MediaInfo mediaInfo = (MediaInfo) map.get(strJ);
                            if (mediaInfo == null) {
                                MediaInfo mediaInfo2 = new MediaInfo();
                                mediaInfo2.vd_format = strJ;
                                mediaInfo2.cnt = 1;
                                map.put(strJ, mediaInfo2);
                                arrayList.add(mediaInfo2);
                            } else {
                                mediaInfo.cnt++;
                            }
                        }
                    }
                    cursorQuery.close();
                    gson = new Gson();
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (0 != 0) {
                    cursor.close();
                }
                gson = new Gson();
            }
        } catch (Throwable unused) {
            if (0 != 0) {
                cursor.close();
            }
            gson = new Gson();
        }
        return gson.toJson(arrayList);
    }

    public static ArrayList f0(ContentResolver contentResolver, MediaBucket mediaBucket, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                if (mediaBucket.parentPath != null) {
                    arrayList = u(new File(mediaBucket.parentPath), false);
                }
                String[] strArr = {String.valueOf(mediaBucket.bucketId)};
                Log.e("VideoDBHelper", "queryAlbumFromVideo mediaBucket: " + mediaBucket);
                cursorQuery = contentResolver.query(n0(z), b, "bucket_id = ?", strArr, p());
                int iE = oa1.e();
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        if (w(cursorQuery.getString(7))) {
                            String string = cursorQuery.getString(2);
                            if (!mediaBucket.isVirtualFolder || string.startsWith(mediaBucket.virtualFolderMatchName)) {
                                MediaItem mediaItemJ = j(cursorQuery, z);
                                mediaItemJ.isVirtualFolder = mediaBucket.isVirtualFolder;
                                mediaItemJ.virtualFolderMatchName = mediaBucket.virtualFolderMatchName;
                                G(mediaItemJ);
                                arrayList2.add(mediaItemJ);
                                if (arrayList2.size() >= iE) {
                                    break;
                                }
                            }
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e2) {
                Log.e("VideoDBHelper", "<queryAlbumFromVideo>: [ERROR] Exception: " + e2);
                e2.printStackTrace();
                if (cursorQuery != null) {
                }
            }
            N(contentResolver, arrayList2, arrayList, z, oa1.e());
            return m0(arrayList2, true);
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static MediaItem g(MediaItem mediaItem) {
        MediaItem mediaItem2 = new MediaItem(mediaItem.id, mediaItem.bucketId, mediaItem.title, mediaItem.displayName, mediaItem.mineType, mediaItem.bucketDisplayName, mediaItem.data, mediaItem.dateToken, mediaItem.dateAdd, mediaItem.dateModified, mediaItem.resolution, mediaItem.duration, mediaItem.size, mediaItem.uri);
        mediaItem2.setRelativePath(mediaItem.relativePath);
        mediaItem2.dateModified = mediaItem.dateModified;
        mediaItem2.isTimeItem = true;
        return mediaItem2;
    }

    public static void g0(SparseArray sparseArray) {
        if (sparseArray == null) {
            return;
        }
        sparseArray.clear();
        synchronized (f) {
            f.add(sparseArray);
        }
    }

    public static MediaItem h(Cursor cursor, boolean z) {
        return i(cursor, k(z), z, true);
    }

    public static ArrayList h0(Context context, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (g) {
            c(context);
            j0(contentResolver, arrayList, str);
        }
        return arrayList;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public static MediaItem i(Cursor cursor, Uri uri, boolean z, boolean z2) {
        Uri uriWithAppendedPath;
        int i2 = cursor.getInt(0);
        String string = cursor.getString(1);
        String string2 = cursor.getString(3);
        long j2 = cursor.getLong(4);
        long j3 = cursor.getLong(5);
        long j4 = cursor.getLong(6);
        String string3 = cursor.getString(7);
        String string4 = cursor.getString(2);
        int i3 = cursor.getInt(8);
        int i4 = cursor.getInt(9);
        try {
            uriWithAppendedPath = Uri.withAppendedPath(uri, Integer.toString(i2));
        } catch (Exception e2) {
            e2.printStackTrace();
            uriWithAppendedPath = null;
        }
        String string5 = cursor.getString(10);
        long j5 = cursor.getLong(11);
        String string6 = z2 ? null : cursor.getString(12);
        if (string5 == null || string5.length() <= 0) {
            string5 = Build.MODEL;
        }
        MediaItem fromInternal = new MediaItem(i2, i4, string, string4, string2, string5, string3, j2, j3, j4, string6, i3, j5, uriWithAppendedPath).setFromInternal(z);
        fromInternal.setRelativePath(r(string3, string4));
        try {
            fromInternal.setDegree(cursor.getInt(cursor.getColumnIndexOrThrow("orientation")));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            fromInternal.width = cursor.getInt(cursor.getColumnIndexOrThrow("width"));
            fromInternal.height = cursor.getInt(cursor.getColumnIndexOrThrow("height"));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (tr4.c(string3)) {
            tr4.b(new File(string3));
        }
        return fromInternal;
    }

    public static void i0(ContentResolver contentResolver, ArrayList arrayList, String str) {
        if (!pp3.w() && !pp3.j()) {
            return;
        }
        Log.e("VideoDBHelper", "searchVideoFromFilesDbBySuffix :" + arrayList.size());
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Cursor cursorQuery = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("(");
                sb.append("_data LIKE?");
                int length = hk3.h.length;
                for (int i2 = 0; i2 < length - 1; i2++) {
                    sb.append(" OR _data LIKE?");
                }
                sb.append(")");
                sb.append(" AND _display_name LIKE ?");
                String string = sb.toString();
                int length2 = hk3.h.length;
                String[] strArr = new String[length2 + 1];
                int i3 = 0;
                while (true) {
                    String[] strArr2 = hk3.h;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    strArr[i3] = strArr2[i3];
                    i3++;
                }
                strArr[length2] = "%" + str + "%";
                cursorQuery = contentResolver.query(k(false), c, string, strArr, p());
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                int iE = oa1.e();
                while (cursorQuery.moveToNext()) {
                    String string2 = cursorQuery.getString(7);
                    if (string2.contains(str) && w(string2)) {
                        if (!TextUtils.isEmpty(string2) && string2.contains(Consts.DOT)) {
                            if (!hk3.i.contains(string2.substring(string2.lastIndexOf(Consts.DOT)))) {
                            }
                        }
                        MediaItem mediaItemH = h(cursorQuery, false);
                        G(mediaItemH);
                        SearchBean searchBean = new SearchBean();
                        searchBean.setItemType(2);
                        searchBean.setMediaItem(mediaItemH);
                        if (!arrayList.contains(searchBean)) {
                            arrayList.add(searchBean);
                        }
                        if (arrayList.size() >= iE) {
                            break;
                        }
                    }
                }
                cursorQuery.close();
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                e2.printStackTrace();
                if (0 == 0) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static MediaItem j(Cursor cursor, boolean z) {
        return i(cursor, z ? MediaStore.Video.Media.INTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI, z, false);
    }

    public static void j0(ContentResolver contentResolver, ArrayList arrayList, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(n0(false), b, "_display_name LIKE ?", new String[]{"%" + str + "%"}, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    t.clear();
                    return;
                }
                int iE = oa1.e();
                while (cursorQuery.moveToNext()) {
                    if (w(cursorQuery.getString(7))) {
                        MediaItem mediaItemJ = j(cursorQuery, false);
                        G(mediaItemJ);
                        SearchBean searchBean = new SearchBean();
                        searchBean.setItemType(2);
                        searchBean.setMediaItem(mediaItemJ);
                        arrayList.add(searchBean);
                        if (arrayList.size() >= iE) {
                            break;
                        }
                    }
                }
            } catch (Exception e2) {
                Log.i("VideoDBHelper", e2.toString());
                if (0 != 0) {
                    break;
                }
                t.clear();
                i0(contentResolver, arrayList, str);
            }
            cursorQuery.close();
            t.clear();
            i0(contentResolver, arrayList, str);
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            t.clear();
            throw th;
        }
    }

    public static Uri k(boolean z) {
        return MediaStore.Files.getContentUri(z ? "internal" : "external");
    }

    public static ArrayList k0(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            String strO = o(mediaItem.dateModified);
            if (!map.containsKey(strO)) {
                MediaItem mediaItemG = g(mediaItem);
                map.put(strO, mediaItemG);
                arrayList2.add(mediaItemG);
            }
            arrayList2.add(mediaItem);
        }
        map.clear();
        return arrayList2;
    }

    public static ArrayList l() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(v);
        return arrayList;
    }

    public static ArrayList l0(ArrayList arrayList) {
        if (ns9.o()) {
            return k0(arrayList);
        }
        if (arrayList != null) {
            ns9.sortMediaItem(arrayList);
        }
        return arrayList;
    }

    public static Object m(Object obj, String str) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, null);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, null);
        } catch (Exception e2) {
            Log.e("VideoDBHelper", "getDeclaredMethod " + e2.getMessage());
            return null;
        }
    }

    public static ArrayList m0(ArrayList arrayList, boolean z) {
        if (z && ns9.o() && !x(arrayList)) {
            ns9.sortMediaItem(arrayList);
        }
        return l0(arrayList);
    }

    public static Uri n(boolean z, int i2) {
        try {
            return Uri.withAppendedPath(k(z), Integer.toString(i2));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Uri n0(boolean z) {
        return z ? MediaStore.Video.Media.INTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
    }

    public static String o(long j2) {
        return new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).format(Long.valueOf(j2 * 1000));
    }

    public static String p() {
        return ns9.k(true);
    }

    public static String q() {
        return Environment.getExternalStorageDirectory().toString() + "/DCIM/Camera/";
    }

    public static String r(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                String strReplaceAll = str.replaceAll(Pattern.quote("" + str2), "");
                String str3 = q;
                if (str3 == null || !str3.equalsIgnoreCase(strReplaceAll)) {
                    String str4 = r;
                    if (str4 == null || !str4.equalsIgnoreCase(strReplaceAll)) {
                        return "";
                    }
                }
                return "DCIM/Camera/";
            } catch (Exception e2) {
                Log.e("VideoDBHelper", "getRelativePath " + e2);
            }
        }
        return "";
    }

    public static String s(Context context) {
        int iLastIndexOf;
        ArrayList arrayList = new ArrayList();
        for (File file : context.getExternalFilesDirs("external")) {
            if (file != null && !file.equals(context.getExternalFilesDir("external")) && (iLastIndexOf = file.getAbsolutePath().lastIndexOf("/Android/data")) >= 0) {
                String strSubstring = file.getAbsolutePath().substring(0, iLastIndexOf);
                try {
                    strSubstring = new File(strSubstring).getCanonicalPath();
                } catch (IOException unused) {
                }
                arrayList.add(strSubstring);
            }
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        if (strArr == null || strArr.length <= 0) {
            return "";
        }
        return strArr[0] + "/DCIM/Camera/";
    }

    public static void t(final ArrayList arrayList, File file, final boolean z) {
        file.listFiles(new FileFilter() {
            @Override
            public final boolean accept(File file2) {
                return qpb.y(arrayList, z, file2);
            }
        });
    }

    public static ArrayList u(File file, boolean z) {
        ArrayList arrayList = new ArrayList();
        t(arrayList, file, z);
        return arrayList;
    }

    public static void v() {
        synchronized (l) {
            try {
                ArrayList arrayList = new ArrayList();
                List<StorageVolume> storageVolumes = ((StorageManager) se.a().getSystemService("storage")).getStorageVolumes();
                if (storageVolumes != null) {
                    String absolutePath = null;
                    for (StorageVolume storageVolume : storageVolumes) {
                        if (Build.VERSION.SDK_INT < 30) {
                            absolutePath = (String) m(storageVolume, "getPath");
                        } else if (storageVolume.getDirectory() != null) {
                            absolutePath = storageVolume.getDirectory().getAbsolutePath();
                        }
                        if (absolutePath != null && !absolutePath.isEmpty()) {
                            arrayList.add(absolutePath);
                        }
                    }
                }
                ArrayList arrayList2 = u;
                arrayList2.clear();
                arrayList2.addAll(arrayList);
                Log.e("VideoDBHelper", "initMountPointPaths " + arrayList2.size());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final boolean w(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static boolean x(List list) {
        Iterator it = list.iterator();
        MediaItem mediaItem = null;
        while (it.hasNext()) {
            MediaItem mediaItem2 = (MediaItem) it.next();
            if (!mediaItem2.isTimeItem) {
                if (mediaItem != null) {
                    if (ns9.p() && mediaItem.dateModified > mediaItem2.dateModified) {
                        return false;
                    }
                    if (!ns9.p() && mediaItem.dateModified < mediaItem2.dateModified) {
                        return false;
                    }
                }
                mediaItem = mediaItem2;
            }
        }
        return true;
    }

    public static boolean y(ArrayList arrayList, boolean z, File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(Consts.DOT);
        if (iLastIndexOf == -1) {
            if (!z || !file.isDirectory()) {
                return false;
            }
            t(arrayList, file, true);
            return false;
        }
        String strSubstring = name.substring(iLastIndexOf);
        if (strSubstring == null || !hk3.i.contains(strSubstring.toLowerCase())) {
            tr4.b(file);
            return false;
        }
        arrayList.add(file.getPath());
        return false;
    }

    public static void z() {
        Log.d("VideoDBHelper", "loadCameraPath");
        v();
        q = q();
        r = s(Utils.a());
    }
}
