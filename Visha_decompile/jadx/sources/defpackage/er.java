package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.AudioResultModel;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.dbdata.utils.PlayCountDataManager;
import com.transsion.utils.MediaMetadataRetrieverUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class er extends zm {
    public static final a t = new a(null);
    public final Object b = new Object();
    public final Object c = new Object();
    public final Object d = new Object();
    public final Object e = new Object();
    public final Object f = new Object();
    public final Object g = new Object();
    public final Object h = new Object();
    public final Object i = new Object();
    public final Object j = new Object();
    public final Object k = new Object();
    public final Object l = new Object();
    public final Object m = new Object();
    public final Object n = new Object();
    public final Object o = new Object();
    public final Object p = new Object();
    public final Object q = new Object();
    public final Object r = new Object();
    public final Object s = new Object();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(ArrayList arrayList, ArrayList arrayList2, String str) {
            zfb zfbVar;
            if (arrayList2 != null) {
                ns9.v(arrayList2);
            }
            if (arrayList != null) {
                ns9.v(arrayList);
            }
            if (ns9.j() == 5) {
                if (str != null) {
                    if (arrayList2 != null) {
                        t55.n(arrayList2, str);
                    }
                    if (arrayList != null) {
                        t55.n(arrayList, str);
                        zfbVar = zfb.a;
                    } else {
                        zfbVar = null;
                    }
                    if (zfbVar != null) {
                        return;
                    }
                }
                if (arrayList2 != null) {
                    t55.o(arrayList2, null, 1, null);
                }
                if (arrayList != null) {
                    t55.o(arrayList, null, 1, null);
                    zfb zfbVar2 = zfb.a;
                }
            }
        }

        public a() {
        }
    }

    public static final CharSequence w(String str) {
        y45.j(str, "it");
        return "?";
    }

    public static ArrayList z(er erVar, ContentResolver contentResolver, String str, MediaBucket mediaBucket, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        String str3 = str;
        if ((i2 & 32) != 0) {
            z = false;
        }
        return erVar.y(contentResolver, str3, mediaBucket, str2, i, z);
    }

    public final ArrayList A(ContentResolver contentResolver, String str, MediaBucket mediaBucket) {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Log.e("AudioItemTypeHandler", "<queryAllAudioFromBucket>," + mediaBucket.parentName);
        try {
            cursorQuery = contentResolver.query(t55.e(mediaBucket.fromInternal), ou4.d, "bucket_id = ? AND is_music = ?", new String[]{String.valueOf(mediaBucket.bucketId), "1"}, t55.j());
        } catch (Exception e) {
            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio>: [ERROR] query() Exception: " + e);
            e.printStackTrace();
            cursorQuery = null;
        }
        if (cursorQuery == null) {
            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio> [ERROR] fail to query()");
            return null;
        }
        Log.e("AudioItemTypeHandler", "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:" + mediaBucket.fromInternal);
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    String string = cursorQuery.getString(4);
                    if (t55.l(string) && !AudioFilterUtils.w(string)) {
                        arrayList.add(t55.f(cursorQuery, mediaBucket.fromInternal));
                    }
                } catch (Exception e2) {
                    Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio>: [ERROR] Exception: " + e2);
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        t.a(arrayList, null, str);
        return arrayList;
    }

    public final ArrayList B(ContentResolver contentResolver, String str, MediaBucket mediaBucket, String str2, long j, int i) {
        MediaBucket bucketId = mediaBucket.setFromInternal(true).setBucketId(j);
        bucketId.parentName = str2;
        y45.g(bucketId);
        ArrayList arrayListZ = z(this, contentResolver, str, bucketId, null, i, false, 32, null);
        if (arrayListZ == null) {
            Log.e("AudioItemTypeHandler", "queryAudioFromBucketPath list is empty");
            return arrayListZ;
        }
        MediaBucket fromInternal = bucketId.setFromInternal(false);
        y45.i(fromInternal, "setFromInternal(...)");
        return z(this, contentResolver, str, fromInternal, null, i, false, 32, null);
    }

    public final ArrayList C(ContentResolver contentResolver, String str, String str2, int i) {
        MediaBucket fromInternal = new MediaBucket().setFromInternal(false);
        fromInternal.parentPath = str2;
        y45.g(fromInternal);
        return z(this, contentResolver, str, fromInternal, str2, i, false, 32, null);
    }

    public final AudioItem D(ContentResolver contentResolver, int i, boolean z) {
        Cursor cursorQuery;
        long jCurrentTimeMillis = System.currentTimeMillis();
        AudioItem audioItemF = null;
        try {
            cursorQuery = contentResolver.query(t55.e(z), ou4.d, "_id = ?", new String[]{String.valueOf(i)}, null);
        } catch (Exception e) {
            Log.e("AudioItemTypeHandler", "<queryVideoItem>: [ERROR] query() Exception: " + e);
            cursorQuery = null;
        }
        if (cursorQuery == null) {
            Log.e("AudioItemTypeHandler", "<queryVideoItem> [ERROR] fail to query()");
            return null;
        }
        try {
            try {
                if (cursorQuery.moveToNext()) {
                    audioItemF = t55.f(cursorQuery, z);
                }
            } catch (Exception e2) {
                Log.e("AudioItemTypeHandler", "<queryVideoItem>: [ERROR] Exception: " + e2);
            }
            cursorQuery.close();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (audioItemF != null) {
                hz9 hz9Var = hz9.a;
                String str = String.format(Locale.getDefault(), "<queryVideoItem> itemId=%d, path=%s, costTime=%dms", Arrays.copyOf(new Object[]{Integer.valueOf(i), audioItemF.data, Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)}, 3));
                y45.i(str, "format(...)");
                Log.d("AudioItemTypeHandler", str);
            }
            return audioItemF;
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    public final ArrayList E(ContentResolver contentResolver, String str, ArrayList arrayList, boolean z) {
        y45.j(contentResolver, "resolver");
        y45.j(arrayList, "mediaIds");
        return s(contentResolver, str, false, arrayList, z);
    }

    public final ArrayList F(ContentResolver contentResolver, String str, boolean z, String str2, ArrayList arrayList, boolean z2) throws Throwable {
        ArrayList arrayList2 = new ArrayList();
        if (arrayList == null || arrayList.size() == 0) {
            return arrayList2;
        }
        Cursor cursor = null;
        try {
            try {
                String string = arrayList.toString();
                y45.i(string, "toString(...)");
                Cursor cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1 and _id in " + g1a.N(g1a.N(string, "[", "(", false, 4, null), "]", ")", false, 4, null) + " and title like '" + str2 + "'", null, t55.j());
                if (cursorQuery == null) {
                    return arrayList2;
                }
                while (cursorQuery.moveToNext()) {
                    try {
                        if (t55.l(cursorQuery.getString(4))) {
                            arrayList2.add(t55.f(cursorQuery, z));
                        }
                    } catch (Exception e) {
                        e = e;
                        cursor = cursorQuery;
                        Log.i("AudioItemTypeHandler", e.toString());
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (z2) {
                    arrayList2.addAll(dw6.c.a().r(arrayList, str2));
                }
                t.a(arrayList2, null, str);
                cursorQuery.close();
                return arrayList2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final AudioItem G(ContentResolver contentResolver, String str, boolean z) throws Throwable {
        y45.j(contentResolver, "resolver");
        y45.j(str, "displayName");
        AudioItem audioItem = new AudioItem();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = contentResolver.query(t55.e(z), ou4.d, "_display_name = ?", new String[]{str}, null);
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    audioItem = cursorQuery.moveToFirst() ? t55.f(cursorQuery, z) : dw6.c.a().o(str);
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    e.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                return audioItem;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final AudioItem H(ContentResolver contentResolver, String str, boolean z) throws Throwable {
        y45.j(contentResolver, "resolver");
        y45.j(str, "path");
        AudioItem audioItem = new AudioItem();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = contentResolver.query(t55.e(z), ou4.d, "_data = ?", new String[]{str}, null);
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    audioItem = cursorQuery.moveToFirst() ? t55.f(cursorQuery, z) : dw6.c.a().s(str);
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    e.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                return audioItem;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final ArrayList I(ContentResolver contentResolver, String str, ArrayList arrayList, int i) throws Throwable {
        if (arrayList == null || arrayList.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayListV = v(contentResolver, str, false, arrayList, i);
        if (arrayListV.isEmpty() && !arrayList.isEmpty()) {
            b00.g();
        }
        return arrayListV;
    }

    public final AudioItem J(ContentResolver contentResolver, Uri uri) {
        y45.j(contentResolver, "resolver");
        y45.j(uri, "uri");
        AudioItem audioItem = new AudioItem();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(uri, null, null, null, null);
                if (cursorQuery == null) {
                    if (uri.getPath() != null) {
                        File file = new File(uri.getPath());
                        if (file.exists()) {
                            audioItem.displayName = file.getName();
                            audioItem.dateModified = file.lastModified() / ((long) 1000);
                            audioItem.size = file.length();
                            audioItem.uri = uri;
                        } else {
                            audioItem.uri = uri;
                        }
                    }
                    return audioItem;
                }
                if (cursorQuery.moveToFirst()) {
                    audioItem.uri = uri;
                    if (cursorQuery.getColumnIndex("_display_name") != -1) {
                        audioItem.displayName = cursorQuery.getString(cursorQuery.getColumnIndex("_display_name"));
                    }
                    if (cursorQuery.getColumnIndex("_size") != -1) {
                        audioItem.size = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                    }
                    if (cursorQuery.getColumnIndex("mime_type") != -1) {
                        audioItem.mineType = cursorQuery.getString(cursorQuery.getColumnIndex("mime_type"));
                    }
                    if (cursorQuery.getColumnIndex("artist") != -1) {
                        audioItem.artistName = cursorQuery.getString(cursorQuery.getColumnIndex("artist"));
                    }
                    if (cursorQuery.getColumnIndex("_data") != -1) {
                        audioItem.data = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                    }
                    if (cursorQuery.getColumnIndex("_id") != -1) {
                        audioItem.id = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                    }
                    if (!TextUtils.isEmpty(audioItem.displayName) && TextUtils.isEmpty(audioItem.artistName)) {
                        String str = audioItem.displayName;
                        y45.i(str, "displayName");
                        AudioItem audioItemG = G(contentResolver, str, false);
                        if (audioItemG != null) {
                            audioItem = audioItemG;
                        }
                    }
                }
                cursorQuery.close();
                return audioItem;
            } catch (Exception e) {
                e.printStackTrace();
                audioItem.uri = uri;
                if (0 != 0) {
                }
                return audioItem;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final ArrayList K(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, boolean z2) {
        int size;
        ArrayList arrayListQ = q(contentResolver, str, z, arrayList, z2, true);
        if (arrayListQ.size() > 0 && (size = arrayListQ.size() - 1) >= 0) {
            while (true) {
                int i = size - 1;
                if (!RecentAddDataManager.a().f((MediaItem) arrayListQ.get(size), false)) {
                    arrayListQ.remove(size);
                }
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        return arrayListQ;
    }

    public final ArrayList L(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, String str2, boolean z2) {
        int size;
        ArrayList arrayListT = t(contentResolver, str, z, arrayList, str2, z2);
        if (arrayListT.size() > 0 && (size = arrayListT.size() - 1) >= 0) {
            while (true) {
                int i = size - 1;
                if (!RecentAddDataManager.a().f((MediaItem) arrayListT.get(size), false)) {
                    arrayListT.remove(size);
                }
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        return arrayListT;
    }

    public final void M(long j) {
        synchronized (this.s) {
            AudioFilterUtils.i = j;
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public List b(ns1 ns1Var) {
        y45.j(ns1Var, Progress.REQUEST);
        if (ns1Var.b() == null || !(ns1Var.b() instanceof cr)) {
            return y71.k();
        }
        Object objB = ns1Var.b();
        if (objB == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput");
        }
        ContentResolver contentResolver = ns1Var.a().getContentResolver();
        y45.i(contentResolver, "getContentResolver(...)");
        return o((cr) objB, contentResolver);
    }

    @Override
    public AudioItem a(ns1 ns1Var) {
        y45.j(ns1Var, Progress.REQUEST);
        if (ns1Var.b() == null || !(ns1Var.b() instanceof cr)) {
            return null;
        }
        Object objB = ns1Var.b();
        if (objB == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput");
        }
        ContentResolver contentResolver = ns1Var.a().getContentResolver();
        y45.i(contentResolver, "getContentResolver(...)");
        return p((cr) objB, contentResolver);
    }

    public final AudioItem n(ContentResolver contentResolver, int i, boolean z) {
        y45.j(contentResolver, "resolver");
        AudioItem audioItemD = D(contentResolver, i, false);
        if (z) {
            if (audioItemD != null) {
                return audioItemD;
            }
            AudioItem audioItemP = dw6.c.a().p(i);
            return audioItemP == null ? D(contentResolver, i, true) : audioItemP;
        }
        if (audioItemD != null) {
            return audioItemD;
        }
        AudioItem audioItemD2 = D(contentResolver, i, true);
        return audioItemD2 == null ? dw6.c.a().p(i) : audioItemD2;
    }

    public final List o(cr crVar, ContentResolver contentResolver) {
        ArrayList arrayListQ;
        if (crVar.n() != null && crVar.g() != null) {
            synchronized (this.b) {
                arrayListQ = F(contentResolver, crVar.l(), false, crVar.g(), crVar.n(), crVar.e());
            }
        } else if (crVar.r() != null && crVar.f() != 0) {
            synchronized (this.c) {
                arrayListQ = I(contentResolver, crVar.l(), crVar.r(), crVar.f());
            }
        } else if (crVar.n() != null) {
            synchronized (this.d) {
                arrayListQ = E(contentResolver, crVar.l(), crVar.n(), crVar.e());
            }
        } else if (crVar.m() != null && crVar.c()) {
            synchronized (this.e) {
                arrayListQ = y(contentResolver, crVar.l(), crVar.m(), crVar.p(), crVar.j(), crVar.e());
            }
        } else if (crVar.m() != null && crVar.j() == 23) {
            synchronized (this.f) {
                arrayListQ = A(contentResolver, crVar.l(), crVar.m());
            }
        } else if (crVar.m() != null) {
            synchronized (this.g) {
                arrayListQ = B(contentResolver, crVar.l(), crVar.m(), crVar.p(), crVar.d(), crVar.j());
            }
        } else if (crVar.p() != null) {
            synchronized (this.h) {
                arrayListQ = C(contentResolver, crVar.l(), crVar.p(), crVar.j());
            }
        } else if (crVar.u() && crVar.g() != null) {
            synchronized (this.i) {
                arrayListQ = L(contentResolver, crVar.l(), crVar.y(), crVar.t(), crVar.g(), crVar.i());
            }
        } else if (crVar.u()) {
            synchronized (this.j) {
                arrayListQ = K(contentResolver, crVar.l(), crVar.y(), crVar.t(), crVar.i());
            }
        } else if (crVar.a() != null && crVar.g() != null) {
            synchronized (this.k) {
                arrayListQ = x(contentResolver, crVar.l(), crVar.a(), "", crVar.g(), crVar.j());
            }
        } else if (crVar.b() != null && crVar.g() != null) {
            synchronized (this.k) {
                arrayListQ = x(contentResolver, crVar.l(), "", crVar.b(), crVar.g(), crVar.j());
            }
        } else if (crVar.s() != 0) {
            synchronized (this.l) {
                arrayListQ = u(contentResolver, crVar.y(), crVar.s(), crVar.i(), crVar.e());
            }
        } else if (crVar.h() != null) {
            synchronized (this.m) {
                arrayListQ = r(contentResolver, crVar.y(), crVar.h());
            }
        } else {
            synchronized (this.n) {
                arrayListQ = q(contentResolver, crVar.l(), crVar.y(), crVar.t(), crVar.i(), crVar.e());
            }
        }
        return arrayListQ;
    }

    public final AudioItem p(cr crVar, ContentResolver contentResolver) {
        AudioItem audioItemJ;
        AudioItem audioItemN;
        AudioItem audioItemG;
        AudioItem audioItemH;
        if (crVar.q() != null) {
            synchronized (this.o) {
                audioItemH = H(contentResolver, crVar.q(), crVar.y());
            }
            return audioItemH;
        }
        if (crVar.g() != null) {
            synchronized (this.p) {
                audioItemG = G(contentResolver, crVar.g(), crVar.y());
            }
            return audioItemG;
        }
        if (crVar.k() != 0) {
            synchronized (this.q) {
                audioItemN = n(contentResolver, crVar.k(), crVar.e());
            }
            return audioItemN;
        }
        Uri uriV = crVar.v();
        if (uriV == null) {
            return null;
        }
        synchronized (this.r) {
            audioItemJ = J(contentResolver, uriV);
        }
        return audioItemJ;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0106  */
    public final ArrayList q(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, boolean z2, boolean z3) {
        Iterator it;
        List<AudioItem> listData;
        TreeSet treeSet = new TreeSet();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1", null, t55.j());
                Log.e("AudioItemTypeHandler", "loadAudioItem:" + cursorQuery);
                if (cursorQuery == null) {
                    return arrayList2;
                }
                Log.e("AudioItemTypeHandler", "loadAudioItem:" + cursorQuery.getCount() + ", isInternal:" + z + ",filtered:" + z2);
                long filterCount = 0;
                while (cursorQuery.moveToNext()) {
                    if (t55.l(cursorQuery.getString(4))) {
                        if (z2 != t55.g(cursorQuery)) {
                            filterCount++;
                        } else {
                            AudioItem audioItemF = t55.f(cursorQuery, z);
                            if (arrayList == null || !arrayList.contains(audioItemF)) {
                                if (z2) {
                                    g(audioItemF);
                                }
                                arrayList2.add(audioItemF);
                            }
                        }
                    }
                }
                if (z3) {
                    AudioResultModel audioResultModelL = dw6.c.a().l(z2);
                    if (audioResultModelL != null && (listData = audioResultModelL.getListData()) != null) {
                        for (AudioItem audioItem : listData) {
                            if (arrayList == null || !arrayList.contains(audioItem)) {
                                arrayList2.add(audioItem);
                            }
                        }
                    }
                    if (audioResultModelL != null) {
                        filterCount += audioResultModelL.getFilterCount();
                    }
                }
                M(filterCount);
                t.a(arrayList2, arrayList, str);
            } catch (Exception e) {
                Log.i("AudioItemTypeHandler", e.toString());
                if (cursorQuery != null) {
                }
                ArrayList arrayList3 = new ArrayList(arrayList2);
                ns9.x(arrayList3);
                it = arrayList3.iterator();
                y45.i(it, "iterator(...)");
                while (it.hasNext()) {
                    AudioItem audioItem2 = (AudioItem) it.next();
                    if (treeSet.size() >= 20) {
                    }
                }
                RecentAddDataManager.a().l(treeSet, false);
                return arrayList2;
            }
            cursorQuery.close();
            ArrayList arrayList4 = new ArrayList(arrayList2);
            ns9.x(arrayList4);
            it = arrayList4.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                AudioItem audioItem3 = (AudioItem) it.next();
                if (treeSet.size() >= 20 && RecentAddDataManager.a().f(audioItem3, false)) {
                    y45.g(audioItem3);
                    treeSet.add(Integer.valueOf(audioItem3.id));
                }
            }
            RecentAddDataManager.a().l(treeSet, false);
            return arrayList2;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final ArrayList r(ContentResolver contentResolver, boolean z, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1", null, t55.j());
        if (cursorQuery == null) {
            return arrayList;
        }
        while (cursorQuery.moveToNext()) {
            String string = cursorQuery.getString(4);
            String strU = av3.u(cursorQuery.getString(4));
            long j = cursorQuery.getLong(12);
            long j2 = cursorQuery.getLong(3);
            int i = cursorQuery.getInt(0);
            if (j2 <= 0 && bx9.t()) {
                try {
                    bya.c();
                    int i2 = MediaMetadataRetrieverUtils.a(string, i).a;
                    if (i2 != 0) {
                        j2 = i2;
                    }
                    Log.d("AudioItemTypeHandler", "loadAudioItemByFilterType: " + string + "/" + i + " duration is 0, set duration:" + j2);
                } catch (Throwable th) {
                    Log.e("AudioItemTypeHandler", "loadAudioItemByFilterType metadata failed", th);
                }
            }
            if (t55.l(string) && !AudioFilterUtils.y(strU) && !AudioFilterUtils.v(string)) {
                if (y45.e(str, "filter_size")) {
                    if (AudioFilterUtils.q(j)) {
                        arrayList.add(t55.f(cursorQuery, z));
                    }
                } else if (!y45.e(str, "filter_duration") || AudioFilterUtils.n(j2)) {
                    arrayList.add(t55.f(cursorQuery, z));
                }
            }
        }
        return arrayList;
    }

    public final ArrayList s(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, boolean z2) throws Throwable {
        y45.j(contentResolver, "resolver");
        ArrayList arrayList2 = new ArrayList();
        if (arrayList == null || arrayList.size() == 0) {
            return arrayList2;
        }
        Cursor cursor = null;
        try {
            try {
                String string = arrayList.toString();
                y45.i(string, "toString(...)");
                String str2 = "is_music=1 and _id in " + g1a.N(g1a.N(string, "[", "(", false, 4, null), "]", ")", false, 4, null);
                Log.w("AudioItemTypeHandler", "loadAudioItemByMediaIds " + str2);
                Cursor cursorQuery = contentResolver.query(t55.e(z), ou4.d, str2, null, t55.j());
                try {
                    Log.e("AudioItemTypeHandler", "loadAudioItemByPlayListMedia:" + cursorQuery);
                    if (cursorQuery == null) {
                        return arrayList2;
                    }
                    Log.e("AudioItemTypeHandler", "loadAudioItemByPlayListMedia:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        if (t55.l(cursorQuery.getString(4))) {
                            arrayList2.add(t55.f(cursorQuery, z));
                        }
                    }
                    if (z2) {
                        arrayList2.addAll(dw6.c.a().q(arrayList));
                    }
                    t.a(arrayList2, null, str);
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i("AudioItemTypeHandler", e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            return arrayList2;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final ArrayList t(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, String str2, boolean z2) {
        new TreeSet();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(t55.e(z), ou4.d, "title LIKE ? AND is_music = ?", new String[]{str2, "1"}, t55.j());
                Log.e("AudioItemTypeHandler", "loadAudioItem:" + cursorQuery);
                if (cursorQuery == null) {
                    return arrayList2;
                }
                Log.e("AudioItemTypeHandler", "loadAudioItem:" + cursorQuery.getCount() + ", isInternal:" + z);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(4);
                    boolean z3 = z2 != t55.g(cursorQuery);
                    if (t55.l(string) && !z3) {
                        AudioItem audioItemF = t55.f(cursorQuery, z);
                        if (arrayList == null || !arrayList.contains(audioItemF)) {
                            arrayList2.add(audioItemF);
                        }
                    }
                }
                t.a(arrayList2, arrayList, str);
                cursorQuery.close();
                return arrayList2;
            } catch (Exception e) {
                Log.i("AudioItemTypeHandler", e.toString());
                if (cursorQuery != null) {
                }
                return arrayList2;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0096  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ac A[LOOP:1: B:31:0x00a6->B:33:0x00ac, LOOP_END] */
    public final ArrayList u(ContentResolver contentResolver, boolean z, int i, boolean z2, boolean z3) {
        Iterator it;
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1", null, t55.j());
                Log.e("AudioItemTypeHandler", "loadAudioItemFrequently:" + cursorQuery);
                if (cursorQuery == null) {
                    return arrayList;
                }
                Log.e("AudioItemTypeHandler", "loadAudioItemFrequently:" + cursorQuery.getCount() + ", isInternal:" + z);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(4);
                    boolean z4 = z2 != t55.g(cursorQuery);
                    if (t55.l(string) && !z4) {
                        AudioItem audioItemF = t55.f(cursorQuery, z);
                        int iA = PlayCountDataManager.b().a(audioItemF.data);
                        audioItemF.playCount = iA;
                        if (iA >= i) {
                            arrayList.add(audioItemF);
                        } else {
                            continue;
                        }
                    }
                }
                cursorQuery.close();
                if (z3) {
                    it = dw6.c.a().n(i).iterator();
                    while (it.hasNext()) {
                        arrayList.add((AudioItem) it.next());
                    }
                }
                return arrayList;
            } catch (Exception e) {
                Log.i("AudioItemTypeHandler", e.toString());
                if (cursorQuery != null) {
                }
                if (z3) {
                    it = dw6.c.a().n(i).iterator();
                    while (it.hasNext()) {
                        arrayList.add((AudioItem) it.next());
                    }
                }
                return arrayList;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final ArrayList v(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, int i) throws Throwable {
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = contentResolver.query(t55.e(z), ou4.d, "_data IN (" + i81.y0(arrayList, StringUtils.COMMA, null, null, 0, null, new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return er.w((String) obj);
                    }
                }, 30, null) + ")", (String[]) arrayList.toArray(new String[0]), t55.j());
                if (cursorQuery == null) {
                    return arrayList2;
                }
                try {
                    Log.e("AudioItemTypeHandler", "loadConverterItem:" + cursorQuery.getCount() + ", isInternal:" + z);
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(4);
                        cursorQuery.getInt(0);
                        if (t55.l(string)) {
                            arrayList2.add(t55.f(cursorQuery, z));
                            if (arrayList2.size() > i) {
                                break;
                            }
                        }
                    }
                    t.a(arrayList2, null, str);
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i("AudioItemTypeHandler", e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                return arrayList2;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    /* JADX WARN: Code duplicated, block: B:17:0x0066  */
    /* JADX WARN: Code duplicated, block: B:20:0x0089 A[Catch: all -> 0x009f, Exception -> 0x00a1, TryCatch #1 {Exception -> 0x00a1, blocks: (B:18:0x0083, B:20:0x0089, B:24:0x0098, B:31:0x00a3), top: B:42:0x0083, outer: #2 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:17:0x0066, please report this as an issue */
    public final ArrayList x(ContentResolver contentResolver, String str, String str2, String str3, String str4, int i) {
        String[] strArr;
        String str5;
        String[] strArr2;
        String str6;
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        try {
            if (i != 43) {
                if (i != 44) {
                    str6 = null;
                    strArr2 = null;
                } else {
                    strArr = new String[]{str2, "1", str4};
                    str5 = "album LIKE ? AND is_music = ? AND title LIKE ?";
                }
                cursorQuery = contentResolver.query(t55.e(false), ou4.d, str6, strArr2, t55.j());
                if (cursorQuery == null) {
                    Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio> [ERROR] fail to query()");
                    return null;
                }
                Log.e("AudioItemTypeHandler", "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:false");
                while (cursorQuery.moveToNext()) {
                    try {
                        try {
                            if (t55.l(cursorQuery.getString(4)) && (i != 22 || !t55.g(cursorQuery))) {
                                arrayList.add(t55.f(cursorQuery, false));
                            }
                        } catch (Exception e) {
                            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio>: [ERROR] Exception: " + e);
                            e.printStackTrace();
                        }
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                }
                cursorQuery.close();
                t.a(arrayList, null, str);
                return arrayList;
            }
            strArr = new String[]{str3, "1", str4};
            str5 = "artist LIKE ? AND is_music = ? AND title LIKE ?";
            cursorQuery = contentResolver.query(t55.e(false), ou4.d, str6, strArr2, t55.j());
        } catch (Exception e2) {
            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio>: [ERROR] query() Exception: " + e2);
            e2.printStackTrace();
            cursorQuery = null;
        }
        strArr2 = strArr;
        str6 = str5;
        if (cursorQuery == null) {
            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio> [ERROR] fail to query()");
            return null;
        }
        Log.e("AudioItemTypeHandler", "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:false");
        while (cursorQuery.moveToNext()) {
            if (t55.l(cursorQuery.getString(4))) {
                arrayList.add(t55.f(cursorQuery, false));
            }
        }
        cursorQuery.close();
        t.a(arrayList, null, str);
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:29:0x00de A[Catch: all -> 0x00f2, Exception -> 0x00f4, TryCatch #2 {Exception -> 0x00f4, blocks: (B:27:0x00d8, B:29:0x00de, B:32:0x00eb, B:39:0x00f6, B:41:0x0102, B:43:0x010e, B:45:0x0114), top: B:53:0x00d8, outer: #0 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x00b6, please report this as an issue */
    public final ArrayList y(ContentResolver contentResolver, String str, MediaBucket mediaBucket, String str2, int i, boolean z) {
        String[] strArr;
        String str3;
        String str4;
        String[] strArr2;
        Cursor cursorQuery;
        AudioResultModel audioResultModelI;
        List<AudioItem> listData;
        ArrayList arrayList = new ArrayList();
        Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio> flag: " + i + StringUtils.COMMA + mediaBucket.parentName);
        try {
            if (i == 22) {
                strArr = new String[]{String.valueOf(mediaBucket.bucketId), "1"};
                str3 = "bucket_id = ? AND is_music = ?";
            } else if (i == 34) {
                strArr = new String[]{str2};
                str3 = "relative_path = ?";
            } else if (i == 42) {
                strArr = new String[]{mediaBucket.parentName, "1"};
                str3 = "title LIKE ? AND is_music = ?";
            } else {
                if (i != 25) {
                    if (i != 26) {
                        str4 = null;
                        strArr2 = null;
                    } else {
                        strArr = new String[]{mediaBucket.parentName, "1"};
                        str3 = "artist LIKE ? AND is_music = ?";
                    }
                    cursorQuery = contentResolver.query(t55.e(mediaBucket.fromInternal), ou4.d, str4, strArr2, t55.j());
                    if (cursorQuery == null) {
                        Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio> [ERROR] fail to query()");
                        return null;
                    }
                    Log.e("AudioItemTypeHandler", "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:" + mediaBucket.fromInternal);
                    while (cursorQuery.moveToNext()) {
                        try {
                            try {
                                if (t55.l(cursorQuery.getString(4)) && (i != 22 || !t55.g(cursorQuery))) {
                                    arrayList.add(t55.f(cursorQuery, mediaBucket.fromInternal));
                                }
                            } catch (Throwable th) {
                                cursorQuery.close();
                                throw th;
                            }
                        } catch (Exception e) {
                            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio>: [ERROR] Exception: " + e);
                            e.printStackTrace();
                        }
                    }
                    if (z && (audioResultModelI = dw6.c.a().i(mediaBucket, str2, i)) != null && (listData = audioResultModelI.getListData()) != null) {
                        arrayList.addAll(listData);
                    }
                    cursorQuery.close();
                    t.a(arrayList, null, str);
                    return arrayList;
                }
                strArr = new String[]{mediaBucket.parentName, "1"};
                str3 = "album LIKE ? AND is_music = ?";
            }
            cursorQuery = contentResolver.query(t55.e(mediaBucket.fromInternal), ou4.d, str4, strArr2, t55.j());
        } catch (Exception e2) {
            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio>: [ERROR] query() Exception: " + e2);
            e2.printStackTrace();
            cursorQuery = null;
        }
        str4 = str3;
        strArr2 = strArr;
        if (cursorQuery == null) {
            Log.e("AudioItemTypeHandler", "<queryAlbumFromAudio> [ERROR] fail to query()");
            return null;
        }
        Log.e("AudioItemTypeHandler", "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:" + mediaBucket.fromInternal);
        while (cursorQuery.moveToNext()) {
            if (t55.l(cursorQuery.getString(4))) {
                arrayList.add(t55.f(cursorQuery, mediaBucket.fromInternal));
            }
        }
        if (z) {
            arrayList.addAll(listData);
        }
        cursorQuery.close();
        t.a(arrayList, null, str);
        return arrayList;
    }
}
