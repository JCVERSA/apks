package defpackage;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import com.transsion.dbdata.database.MusicVideoDatabase;
import com.transsion.dbdata.engine.DataEngine;
import com.transsion.dbdata.engine.base.scope.DataScope;
import com.transsion.dbdata.utils.PlayCountDataManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.text.Regex;
import kotlin.text.RegexOption;

public final class xw5 extends mw5 {
    public final String b = "MVItemTypeHandler";
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

    private final AudioItem A(cr crVar, ContentResolver contentResolver) {
        AudioItem audioItemW;
        if (crVar.q() != null) {
            synchronized (this.l) {
                audioItemW = P(crVar, contentResolver);
            }
        } else if (crVar.g() != null) {
            synchronized (this.m) {
                audioItemW = O(crVar, contentResolver);
            }
        } else {
            if (crVar.k() == 0) {
                return null;
            }
            synchronized (this.n) {
                audioItemW = W(crVar, contentResolver);
            }
        }
        return audioItemW;
    }

    public static List G(xw5 xw5Var, ContentResolver contentResolver, cr crVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return xw5Var.F(contentResolver, crVar, z);
    }

    public static List N(xw5 xw5Var, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return xw5Var.M(str, z);
    }

    public static final boolean f0(String str, AudioItem audioItem) {
        return y45.e(String.valueOf(audioItem.id), str);
    }

    public static final boolean g0(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean h0(AudioItem audioItem, AudioItem audioItem2) {
        return audioItem2.id == audioItem.id;
    }

    public static final boolean i0(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean j0(AudioItem audioItem, AudioItem audioItem2) {
        return audioItem2.id == audioItem.id;
    }

    public static final boolean k0(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean m0(AudioItem audioItem, AudioItem audioItem2) {
        return audioItem2.id == audioItem.id;
    }

    public static final boolean n0(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static List u(xw5 xw5Var, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        return xw5Var.t(z, z2);
    }

    public static final zfb v(List list, AudioItem audioItem) {
        y45.j(audioItem, "it");
        list.add(audioItem);
        return zfb.a;
    }

    public static List x(xw5 xw5Var, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        return xw5Var.w(z, z2);
    }

    public static final zfb y(List list, AudioItem audioItem) {
        y45.j(audioItem, "it");
        list.add(audioItem);
        return zfb.a;
    }

    public final boolean B() {
        return MusicVideoDatabase.a().b.size() > 0 || MusicVideoDatabase.a().a.size() > 0;
    }

    public final boolean C(AudioItem audioItem) {
        if (audioItem == null || TextUtils.isEmpty(audioItem.data)) {
            return false;
        }
        String str = audioItem.data;
        y45.i(str, "data");
        if (!j1a.X(str, Consts.DOT, false, 2, null)) {
            return false;
        }
        String str2 = audioItem.data;
        y45.i(str2, "data");
        String str3 = audioItem.data;
        y45.i(str3, "data");
        String strSubstring = str2.substring(j1a.s0(str3, Consts.DOT, 0, false, 6, null));
        y45.i(strSubstring, "substring(...)");
        if (!qpb.w(audioItem.data) || !hk3.a.contains(strSubstring)) {
            return false;
        }
        Iterator it = dw6.c.a().d().iterator();
        while (it.hasNext()) {
            Regex regex = new Regex((String) it.next(), RegexOption.IGNORE_CASE);
            String str4 = audioItem.displayName;
            y45.i(str4, "displayName");
            if (regex.containsMatchIn(str4)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00e3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00ea A[Catch: all -> 0x0103, Exception -> 0x0105, TryCatch #2 {Exception -> 0x0105, blocks: (B:29:0x00e4, B:31:0x00ea, B:34:0x00fc, B:41:0x0107), top: B:49:0x00e4, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00e4 A[EXC_TOP_SPLITTER, LOOP:0: B:49:0x00e4->B:59:0x00e4, LOOP_START, SYNTHETIC] */
    public final ArrayList D(ContentResolver contentResolver, MediaBucket mediaBucket, String str, int i) {
        String str2;
        String str3;
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList2 = new ArrayList();
        try {
            if (i == 22) {
                arrayList2.add(String.valueOf(mediaBucket.bucketId));
                e(sb, arrayList2);
                str2 = "bucket_id = ? and " + ((Object) sb);
            } else if (i == 34) {
                if (str != null) {
                    arrayList2.add(str);
                } else {
                    arrayList2.add("");
                }
                e(sb, arrayList2);
                str2 = "relative_path = ? and " + ((Object) sb);
            } else if (i == 42) {
                String str4 = mediaBucket.parentName;
                y45.i(str4, "parentName");
                arrayList2.add(str4);
                e(sb, arrayList2);
                str2 = "title LIKE ? and " + ((Object) sb);
            } else {
                if (i != 25) {
                    if (i != 26) {
                        str3 = null;
                    } else {
                        String str5 = mediaBucket.parentName;
                        y45.i(str5, "parentName");
                        arrayList2.add(str5);
                        e(sb, arrayList2);
                        str2 = "artist LIKE ? and " + ((Object) sb);
                    }
                    cursorQuery = contentResolver.query(h(mediaBucket.fromInternal), qpb.b, str3, (String[]) arrayList2.toArray(new String[0]), t55.j());
                    if (cursorQuery == null) {
                        return null;
                    }
                    while (cursorQuery.moveToNext()) {
                        try {
                            try {
                                if (t55.l(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"))) && (i != 22 || !t55.h(cursorQuery))) {
                                    arrayList.add(new AudioItem(qpb.j(cursorQuery, mediaBucket.fromInternal)));
                                }
                            } catch (Throwable th) {
                                cursorQuery.close();
                                throw th;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    cursorQuery.close();
                    return arrayList;
                }
                String str6 = mediaBucket.parentName;
                y45.i(str6, "parentName");
                arrayList2.add(str6);
                e(sb, arrayList2);
                str2 = "album LIKE ? and " + ((Object) sb);
            }
            cursorQuery = contentResolver.query(h(mediaBucket.fromInternal), qpb.b, str3, (String[]) arrayList2.toArray(new String[0]), t55.j());
        } catch (Exception e2) {
            e2.printStackTrace();
            cursorQuery = null;
        }
        str3 = str2;
        if (cursorQuery == null) {
            return null;
        }
        while (cursorQuery.moveToNext()) {
            if (t55.l(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")))) {
                arrayList.add(new AudioItem(qpb.j(cursorQuery, mediaBucket.fromInternal)));
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    public final List E(cr crVar, ContentResolver contentResolver) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (crVar.n() == null || crVar.n().size() == 0) {
            return y71.k();
        }
        Cursor cursor = null;
        try {
            try {
                if (B()) {
                    return K(crVar.n());
                }
                StringBuilder sb = new StringBuilder();
                List arrayList2 = new ArrayList();
                e(sb, arrayList2);
                String[] strArr = (String[]) arrayList2.toArray(new String[0]);
                String string = crVar.n().toString();
                y45.i(string, "toString(...)");
                String str = "_id in " + g1a.N(g1a.N(string, "[", "(", false, 4, null), "]", ")", false, 4, null) + " and " + ((Object) sb);
                Cursor cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, str, strArr, t55.j());
                try {
                    if (cursorQuery == null) {
                        return y71.k();
                    }
                    while (cursorQuery.moveToNext()) {
                        if (t55.l(cursorQuery.getString(7))) {
                            arrayList.add(qpb.j(cursorQuery, crVar.y()));
                        }
                    }
                    V(contentResolver, crVar, str, null, arrayList);
                    cursorQuery.close();
                    List<AudioItem> listB0 = b0(crVar);
                    List listF = f(arrayList);
                    if (listB0 != null) {
                        for (AudioItem audioItem : listB0) {
                            if (listF != null && !listF.contains(audioItem)) {
                                listF.add(audioItem);
                            }
                        }
                    }
                    return listF == null ? y71.k() : listF;
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i(this.b, e.toString());
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
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final List F(ContentResolver contentResolver, cr crVar, boolean z) {
        if (!z) {
            List list = MusicVideoDatabase.a().b;
            y45.i(list, "scanMusicVideoCache");
            if (!list.isEmpty()) {
                return t(crVar.i(), crVar.x());
            }
        }
        MusicVideoDatabase.a().b.clear();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList2 = new ArrayList();
                e(sb, arrayList2);
                cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, sb.toString(), (String[]) arrayList2.toArray(new String[0]), t55.j());
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(7);
                        if (qpb.w(string)) {
                            c(cursorQuery, crVar.y());
                            boolean z2 = crVar.i() != t55.h(cursorQuery);
                            if (t55.l(string) && !z2) {
                                MediaItem mediaItemJ = qpb.j(cursorQuery, crVar.y());
                                y45.g(mediaItemJ);
                                arrayList.add(mediaItemJ);
                            }
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e) {
                Log.i(this.b, e.toString());
                if (cursorQuery != null) {
                }
            }
            g(contentResolver, arrayList, crVar.y(), crVar.i());
            return f(arrayList);
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final AudioItem H(String str) {
        AudioItem audioItem;
        Object next;
        List list = MusicVideoDatabase.a().b;
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((AudioItem) next).displayName.equals(str));
            audioItem = (AudioItem) next;
        } else {
            audioItem = null;
        }
        if (audioItem != null) {
            return audioItem;
        }
        List list2 = MusicVideoDatabase.a().a;
        y45.i(list2, "musicVideoAddByUserCache");
        for (Object obj2 : list2) {
            if (((AudioItem) obj2).displayName.equals(str)) {
                obj = obj2;
                break;
            }
        }
        return (AudioItem) obj;
    }

    public final AudioItem I(Integer num) {
        AudioItem audioItem;
        Object next;
        List list = MusicVideoDatabase.a().b;
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                int i = ((AudioItem) next).id;
                if (num != null && i == num.intValue()) {
                    break;
                }
            }
            audioItem = (AudioItem) next;
        } else {
            audioItem = null;
        }
        if (audioItem != null) {
            return audioItem;
        }
        List list2 = MusicVideoDatabase.a().a;
        y45.i(list2, "musicVideoAddByUserCache");
        for (Object obj2 : list2) {
            int i2 = ((AudioItem) obj2).id;
            if (num != null && i2 == num.intValue()) {
                obj = obj2;
                break;
            }
        }
        return (AudioItem) obj;
    }

    public final List J(ArrayList arrayList, String str) {
        List listK;
        List list = MusicVideoDatabase.a().b;
        if (list != null) {
            listK = new ArrayList();
            for (Object obj : list) {
                AudioItem audioItem = (AudioItem) obj;
                if (arrayList.contains(Integer.valueOf(audioItem.id)) && audioItem.displayName.equals(str)) {
                    listK.add(obj);
                }
            }
        } else {
            listK = null;
        }
        List list2 = MusicVideoDatabase.a().a;
        y45.i(list2, "musicVideoAddByUserCache");
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            AudioItem audioItem2 = (AudioItem) obj2;
            if (arrayList.contains(Integer.valueOf(audioItem2.id)) && audioItem2.displayName.equals(str)) {
                arrayList2.add(obj2);
            }
        }
        if (listK == null) {
            listK = y71.k();
        }
        return i81.b1(i81.h1(listK, arrayList2));
    }

    public final List K(ArrayList arrayList) {
        List listK;
        List list = MusicVideoDatabase.a().b;
        if (list != null) {
            listK = new ArrayList();
            for (Object obj : list) {
                if (arrayList.contains(Integer.valueOf(((AudioItem) obj).id))) {
                    listK.add(obj);
                }
            }
        } else {
            listK = null;
        }
        List list2 = MusicVideoDatabase.a().a;
        y45.i(list2, "musicVideoAddByUserCache");
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (arrayList.contains(Integer.valueOf(((AudioItem) obj2).id))) {
                arrayList2.add(obj2);
            }
        }
        if (listK == null) {
            listK = y71.k();
        }
        return i81.b1(i81.h1(listK, arrayList2));
    }

    public final AudioItem L(String str) {
        AudioItem audioItem;
        Object next;
        List list = MusicVideoDatabase.a().b;
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((AudioItem) next).data.equals(str));
            audioItem = (AudioItem) next;
        } else {
            audioItem = null;
        }
        if (audioItem != null) {
            return audioItem;
        }
        List list2 = MusicVideoDatabase.a().a;
        y45.i(list2, "musicVideoAddByUserCache");
        for (Object obj2 : list2) {
            if (((AudioItem) obj2).data.equals(str)) {
                obj = obj2;
                break;
            }
        }
        return (AudioItem) obj;
    }

    public final List M(String str, boolean z) {
        if (str == null) {
            return null;
        }
        List listU = u(this, z, false, 2, null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listU) {
            AudioItem audioItem = (AudioItem) obj;
            String str2 = audioItem.displayName;
            y45.i(str2, "displayName");
            if (!j1a.V(str2, str, true)) {
                String str3 = audioItem.title;
                y45.i(str3, "title");
                if (j1a.V(str3, str, true)) {
                }
            }
            arrayList.add(obj);
        }
        List listX = x(this, z, false, 2, null);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : listX) {
            AudioItem audioItem2 = (AudioItem) obj2;
            String str4 = audioItem2.displayName;
            y45.i(str4, "displayName");
            if (!j1a.V(str4, str, true)) {
                String str5 = audioItem2.title;
                y45.i(str5, "title");
                if (j1a.V(str5, str, true)) {
                }
            }
            arrayList2.add(obj2);
        }
        return i81.b1(i81.h1(arrayList, arrayList2));
    }

    public final AudioItem O(cr crVar, ContentResolver contentResolver) throws Throwable {
        MediaItem mediaItemJ;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                if (B()) {
                    return H(crVar.g());
                }
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                arrayList.add(String.valueOf(crVar.g()));
                e(sb, arrayList);
                String str = "_display_name = ? and " + ((Object) sb);
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                Cursor cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, str, strArr, t55.j());
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    mediaItemJ = cursorQuery.moveToNext() ? qpb.j(cursorQuery, crVar.y()) : null;
                    if (mediaItemJ == null) {
                        mediaItemJ = U(contentResolver, crVar, str, strArr);
                    }
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i(this.b, e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    mediaItemJ = null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursorQuery;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
                return mediaItemJ == null ? Y(crVar) : new AudioItem(mediaItemJ);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final AudioItem P(cr crVar, ContentResolver contentResolver) throws Throwable {
        MediaItem mediaItemJ;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                if (B()) {
                    return L(crVar.q());
                }
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                arrayList.add(String.valueOf(crVar.q()));
                e(sb, arrayList);
                String str = "_data = ? and " + ((Object) sb);
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                Cursor cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, str, strArr, t55.j());
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    mediaItemJ = cursorQuery.moveToNext() ? qpb.j(cursorQuery, crVar.y()) : null;
                    if (mediaItemJ == null) {
                        mediaItemJ = U(contentResolver, crVar, str, strArr);
                    }
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i(this.b, e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    mediaItemJ = null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursorQuery;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
                return mediaItemJ == null ? c0(crVar) : new AudioItem(mediaItemJ);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final List Q(cr crVar, ContentResolver contentResolver) {
        List listG = G(this, contentResolver, crVar, false, 4, null);
        List<AudioItem> listX = X(crVar);
        ArrayList arrayList = new ArrayList();
        if (listG != null) {
            arrayList.addAll(listG);
        }
        if (listX != null) {
            for (AudioItem audioItem : listX) {
                if (!arrayList.contains(audioItem)) {
                    arrayList.add(audioItem);
                }
            }
        }
        List listV = ns9.v(arrayList);
        y45.i(listV, "sortAudioItem(...)");
        return listV;
    }

    public final List R(cr crVar) {
        try {
            List<MusicVideoDataBean> musicVideoByTitleOrDisplay = MusicVideoDatabase.a().b().getMusicVideoByTitleOrDisplay(crVar.g());
            if (musicVideoByTitleOrDisplay == null) {
                return null;
            }
            List<MusicVideoDataBean> list = musicVideoByTitleOrDisplay;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new AudioItem((MusicVideoDataBean) it.next()));
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    public final List S(cr crVar, ContentResolver contentResolver) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (crVar.n() == null || crVar.n().size() == 0) {
            return y71.k();
        }
        Cursor cursor = null;
        try {
            try {
                if (B()) {
                    return J(crVar.n(), crVar.g());
                }
                StringBuilder sb = new StringBuilder();
                List arrayList2 = new ArrayList();
                e(sb, arrayList2);
                String[] strArr = (String[]) arrayList2.toArray(new String[0]);
                String string = crVar.n().toString();
                y45.i(string, "toString(...)");
                String str = "_id in " + g1a.N(g1a.N(string, "[", "(", false, 4, null), "]", ")", false, 4, null) + " and title like '" + crVar.g() + "' and " + ((Object) sb);
                Cursor cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, str, strArr, t55.j());
                try {
                    if (cursorQuery == null) {
                        return y71.k();
                    }
                    while (cursorQuery.moveToNext()) {
                        if (t55.l(cursorQuery.getString(7))) {
                            arrayList.add(qpb.j(cursorQuery, crVar.y()));
                        }
                    }
                    V(contentResolver, crVar, str, null, arrayList);
                    cursorQuery.close();
                    List<AudioItem> listA0 = a0(crVar);
                    List listF = f(arrayList);
                    if (listA0 != null) {
                        for (AudioItem audioItem : listA0) {
                            if (listF != null && !listF.contains(audioItem)) {
                                listF.add(audioItem);
                            }
                        }
                    }
                    return listF == null ? y71.k() : listF;
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i(this.b, e.toString());
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
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final List T(cr crVar, ContentResolver contentResolver) {
        List<AudioItem> listG = G(this, contentResolver, crVar, false, 4, null);
        List<AudioItem> listX = X(crVar);
        ArrayList arrayList = new ArrayList();
        if (listG != null) {
            for (AudioItem audioItem : listG) {
                int iA = PlayCountDataManager.b().a(audioItem.data);
                audioItem.playCount = iA;
                if (iA >= crVar.s()) {
                    arrayList.add(audioItem);
                }
            }
        }
        if (listX != null) {
            for (AudioItem audioItem2 : listX) {
                if (!arrayList.contains(audioItem2)) {
                    int iA2 = PlayCountDataManager.b().a(audioItem2.data);
                    audioItem2.playCount = iA2;
                    if (iA2 >= crVar.s()) {
                        arrayList.add(audioItem2);
                    }
                }
            }
        }
        List listV = ns9.v(arrayList);
        y45.i(listV, "sortAudioItem(...)");
        return listV;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0071  */
    public final AudioItem U(ContentResolver contentResolver, cr crVar, String str, String[] strArr) {
        Cursor cursorQuery;
        MediaItem mediaItemH;
        if ((!pp3.w() && !pp3.j()) || (cursorQuery = contentResolver.query(qpb.k(crVar.y()), qpb.c, str, strArr, qpb.p())) == null) {
            return null;
        }
        if (cursorQuery.moveToNext()) {
            String string = cursorQuery.getString(7);
            if (!qpb.w(string)) {
                return null;
            }
            if (TextUtils.isEmpty(string)) {
                mediaItemH = null;
            } else {
                y45.g(string);
                if (j1a.X(string, Consts.DOT, false, 2, null)) {
                    String strSubstring = string.substring(j1a.s0(string, Consts.DOT, 0, false, 6, null));
                    y45.i(strSubstring, "substring(...)");
                    if (!hk3.i.contains(strSubstring)) {
                        return null;
                    }
                    mediaItemH = qpb.h(cursorQuery, crVar.y());
                } else {
                    mediaItemH = null;
                }
            }
        } else {
            mediaItemH = null;
        }
        if (mediaItemH == null) {
            return null;
        }
        return new AudioItem(mediaItemH);
    }

    public final void V(ContentResolver contentResolver, cr crVar, String str, String[] strArr, List list) {
        Cursor cursorQuery;
        if ((pp3.w() || pp3.j()) && (cursorQuery = contentResolver.query(qpb.k(crVar.y()), qpb.c, str, strArr, qpb.p())) != null) {
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(7);
                if (qpb.w(string) && !TextUtils.isEmpty(string)) {
                    y45.g(string);
                    if (j1a.X(string, Consts.DOT, false, 2, null)) {
                        String strSubstring = string.substring(j1a.s0(string, Consts.DOT, 0, false, 6, null));
                        y45.i(strSubstring, "substring(...)");
                        if (hk3.i.contains(strSubstring)) {
                            MediaItem mediaItemH = qpb.h(cursorQuery, crVar.y());
                            if (!list.contains(mediaItemH)) {
                                y45.g(mediaItemH);
                                list.add(mediaItemH);
                            }
                        }
                    }
                }
            }
        }
    }

    public final AudioItem W(cr crVar, ContentResolver contentResolver) throws Throwable {
        MediaItem mediaItemJ;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                if (B()) {
                    return I(Integer.valueOf(crVar.k()));
                }
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                arrayList.add(String.valueOf(crVar.k()));
                e(sb, arrayList);
                String str = "_id = ? and " + ((Object) sb);
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                Cursor cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, str, strArr, t55.j());
                if (cursorQuery == null) {
                    return null;
                }
                try {
                    mediaItemJ = cursorQuery.moveToNext() ? qpb.j(cursorQuery, crVar.y()) : null;
                    if (mediaItemJ == null) {
                        mediaItemJ = U(contentResolver, crVar, str, strArr);
                    }
                    cursorQuery.close();
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i(this.b, e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    mediaItemJ = null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursorQuery;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
                return mediaItemJ == null ? Z(crVar) : new AudioItem(mediaItemJ);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final List X(cr crVar) {
        List list = MusicVideoDatabase.a().a;
        y45.i(list, "musicVideoAddByUserCache");
        if (!list.isEmpty()) {
            return w(crVar.i(), crVar.x());
        }
        MusicVideoDatabase.a().a.clear();
        List<MusicVideoDataBean> all = MusicVideoDatabase.a().b().getAll();
        ArrayList arrayList = new ArrayList();
        if (all != null) {
            Iterator<T> it = all.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = new AudioItem((MusicVideoDataBean) it.next());
                d(audioItem);
                if (crVar.i() == t55.i(audioItem)) {
                    arrayList.add(audioItem);
                }
            }
        }
        return arrayList;
    }

    public final AudioItem Y(cr crVar) {
        try {
            return new AudioItem(MusicVideoDatabase.a().b().getMusicVideoListByDisplayName(crVar.g()));
        } catch (Exception unused) {
            return null;
        }
    }

    public final AudioItem Z(cr crVar) {
        try {
            return new AudioItem(MusicVideoDatabase.a().b().getMusicVideoById(crVar.k()));
        } catch (Exception unused) {
            return null;
        }
    }

    public final List a0(cr crVar) {
        try {
            List<MusicVideoDataBean> allByTitleAndIds = MusicVideoDatabase.a().b().getAllByTitleAndIds(crVar.g(), crVar.n());
            if (allByTitleAndIds == null) {
                return null;
            }
            List<MusicVideoDataBean> list = allByTitleAndIds;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new AudioItem((MusicVideoDataBean) it.next()));
            }
            return arrayList;
        } catch (Exception unused) {
            return y71.k();
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
        Context contextA = ns1Var.a();
        ContentResolver contentResolver = ns1Var.a().getContentResolver();
        y45.i(contentResolver, "getContentResolver(...)");
        List listZ = z(contextA, (cr) objB, contentResolver);
        return listZ == null ? y71.k() : listZ;
    }

    public final List b0(cr crVar) {
        try {
            List<MusicVideoDataBean> allByIds = MusicVideoDatabase.a().b().getAllByIds(crVar.n());
            if (allByIds == null) {
                return null;
            }
            List<MusicVideoDataBean> list = allByIds;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new AudioItem((MusicVideoDataBean) it.next()));
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    public final AudioItem c0(cr crVar) {
        try {
            return new AudioItem(MusicVideoDatabase.a().b().getMusicVideoListByPath(crVar.q()));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0042 A[PHI: r8 r9
      0x0042: PHI (r8v4 android.database.Cursor) = (r8v3 android.database.Cursor), (r8v5 android.database.Cursor) binds: [B:27:0x0053, B:20:0x0040] A[DONT_GENERATE, DONT_INLINE]
      0x0042: PHI (r9v6 com.transsion.dbdata.beans.media.MediaItem) = (r9v13 com.transsion.dbdata.beans.media.MediaItem), (r9v9 com.transsion.dbdata.beans.media.MediaItem) binds: [B:27:0x0053, B:20:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    public final MediaItem d0(ContentResolver contentResolver, Uri uri, cr crVar) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        mediaItemJ = null;
        mediaItemJ = null;
        mediaItemJ = null;
        MediaItem mediaItemJ = null;
        try {
            if (crVar.v() == null) {
                return null;
            }
            cursorQuery = contentResolver.query(crVar.v(), qpb.b, null, null, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            if (!qpb.w(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")))) {
                                cursorQuery.close();
                                return null;
                            }
                            mediaItemJ = qpb.j(cursorQuery, crVar.y());
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.i(this.b, e.toString());
                        if (cursorQuery != null) {
                        }
                        return mediaItemJ;
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
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return mediaItemJ;
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        Log.i(this.b, e.toString());
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return mediaItemJ;
    }

    public final List e0(ContentResolver contentResolver, cr crVar) throws Throwable {
        Integer numR;
        Uri uriV = crVar.v();
        final String lastPathSegment = uriV != null ? uriV.getLastPathSegment() : null;
        MediaItem mediaItemD0 = d0(contentResolver, crVar.v(), crVar);
        if (mediaItemD0 == null) {
            List list = MusicVideoDatabase.a().b;
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(xw5.f0(lastPathSegment, (AudioItem) obj));
                }
            };
            list.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return xw5.g0(e74Var, obj);
                }
            });
            cr crVarE = new cr.a().o(true).s((lastPathSegment == null || (numR = f1a.r(lastPathSegment)) == null) ? 0 : numR.intValue()).e();
            Application applicationA = se.a();
            y45.i(applicationA, "getApp(...)");
            DataEngine.a.a(DataScope.MV, os1.a(crVarE, applicationA, Boolean.TYPE));
        } else {
            final AudioItem audioItem = new AudioItem(mediaItemD0);
            if (C(audioItem)) {
                if (MusicVideoDatabase.a().b.contains(audioItem)) {
                    List list2 = MusicVideoDatabase.a().b;
                    final e74 e74Var2 = new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return Boolean.valueOf(xw5.h0(audioItem, (AudioItem) obj));
                        }
                    };
                    list2.removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return xw5.i0(e74Var2, obj);
                        }
                    });
                    MusicVideoDatabase.a().b.add(audioItem);
                } else {
                    MusicVideoDatabase.a().b.add(audioItem);
                    bx5.a().b(audioItem);
                }
            } else if (MusicVideoDatabase.a().b.contains(audioItem)) {
                List list3 = MusicVideoDatabase.a().b;
                final e74 e74Var3 = new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(xw5.j0(audioItem, (AudioItem) obj));
                    }
                };
                list3.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return xw5.k0(e74Var3, obj);
                    }
                });
            }
            l0(audioItem);
        }
        return y71.k();
    }

    public final void l0(final AudioItem audioItem) {
        if (audioItem != null) {
            if (MusicVideoDatabase.a().a.contains(audioItem)) {
                List list = MusicVideoDatabase.a().a;
                final e74 e74Var = new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(xw5.m0(audioItem, (AudioItem) obj));
                    }
                };
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return xw5.n0(e74Var, obj);
                    }
                });
                MusicVideoDatabase.a().a.add(audioItem);
            }
            MusicVideoDatabase.a().b().update(audioItem.convertToMusicVideoDataBean());
        }
    }

    public final List o0(ContentResolver contentResolver, cr crVar) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(crVar.g())) {
            return y71.k();
        }
        Cursor cursor = null;
        try {
            try {
                if (B()) {
                    return N(this, crVar.g(), false, 2, null);
                }
                StringBuilder sb = new StringBuilder();
                String[] strArr = {"%" + crVar.g() + "%", "%" + crVar.g() + "%"};
                List listM1 = hi.m1(strArr);
                e(sb, listM1);
                String str = "(_display_name LIKE ? OR title LIKE ?) and " + ((Object) sb);
                Cursor cursorQuery = contentResolver.query(h(false), qpb.b, str, (String[]) listM1.toArray(new String[0]), null);
                try {
                    if (cursorQuery == null) {
                        return y71.k();
                    }
                    while (cursorQuery.moveToNext()) {
                        if (t55.l(cursorQuery.getString(7)) && !t55.h(cursorQuery)) {
                            arrayList.add(qpb.j(cursorQuery, false));
                        }
                    }
                    V(contentResolver, crVar, str, strArr, arrayList);
                    cursorQuery.close();
                    List<AudioItem> listR = R(crVar);
                    List listF = f(arrayList);
                    if (listR != null) {
                        for (AudioItem audioItem : listR) {
                            if (listF != null && !listF.contains(audioItem)) {
                                listF.add(audioItem);
                            }
                        }
                    }
                    return listF;
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    Log.i(this.b, e.toString());
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
        } catch (Throwable th2) {
            th = th2;
        }
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
        return A((cr) objB, contentResolver);
    }

    public final List t(boolean z, boolean z2) {
        if (z2) {
            List list = MusicVideoDatabase.a().b;
            y45.i(list, "scanMusicVideoCache");
            return list;
        }
        final ArrayList arrayList = new ArrayList();
        t55.m(MusicVideoDatabase.a().b, 0L, z, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return xw5.v(arrayList, (AudioItem) obj);
            }
        });
        return arrayList;
    }

    public final List w(boolean z, boolean z2) {
        if (z2) {
            List list = MusicVideoDatabase.a().a;
            y45.i(list, "musicVideoAddByUserCache");
            return list;
        }
        final ArrayList arrayList = new ArrayList();
        t55.m(MusicVideoDatabase.a().a, 0L, z, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return xw5.y(arrayList, (AudioItem) obj);
            }
        });
        return arrayList;
    }

    public final List z(Context context, cr crVar, ContentResolver contentResolver) {
        List listE;
        if (crVar.B()) {
            synchronized (this.c) {
                listE = Q(crVar, contentResolver);
            }
        } else if (crVar.C()) {
            synchronized (this.d) {
                listE = G(this, contentResolver, crVar, false, 4, null);
            }
        } else if (crVar.D()) {
            synchronized (this.e) {
                listE = X(crVar);
            }
        } else if (crVar.E()) {
            synchronized (this.f) {
                listE = e0(contentResolver, crVar);
            }
        } else if (crVar.n() != null && crVar.g() != null) {
            synchronized (this.g) {
                listE = S(crVar, contentResolver);
            }
        } else if (crVar.s() != 0) {
            synchronized (this.h) {
                listE = T(crVar, contentResolver);
            }
        } else if (crVar.m() != null && crVar.c()) {
            synchronized (this.i) {
                listE = D(contentResolver, crVar.m(), crVar.p(), crVar.j());
            }
        } else if (crVar.g() != null) {
            synchronized (this.j) {
                listE = o0(contentResolver, crVar);
            }
        } else {
            if (crVar.n() == null) {
                return null;
            }
            synchronized (this.k) {
                listE = E(crVar, contentResolver);
            }
        }
        return listE;
    }
}
