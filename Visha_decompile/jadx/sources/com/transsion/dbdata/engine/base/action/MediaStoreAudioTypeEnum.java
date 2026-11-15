package com.transsion.dbdata.engine.base.action;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.AudioResultModel;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import com.transsion.utils.BaseConstant;
import defpackage.db3;
import defpackage.er;
import defpackage.qu4;
import defpackage.zm;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\b\u0002\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u001b\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u001f\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/dbdata/engine/base/action/MediaStoreAudioTypeEnum;", "", "Ljava/lang/Class;", "outPutType", "Lqu4;", "typeHandler", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V", "Ljava/lang/Class;", "getOutPutType", "()Ljava/lang/Class;", "Lqu4;", "getTypeHandler", "()Lqu4;", "AUDIO_ITEM", "SEARCH_BEAN", "MEDIA_BUCKET", "AUDIO_RESULT_ITEM", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum MediaStoreAudioTypeEnum {
    AUDIO_ITEM(AudioItem.class, new er()),
    SEARCH_BEAN(SearchBean.class, new qu4() {
        public static final a a = new a(null);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        @Override
        public List b(ns1 ns1Var) {
            y45.j(ns1Var, Progress.REQUEST);
            if (ns1Var.b() == null || !(ns1Var.b() instanceof String)) {
                return y71.k();
            }
            Object objB = ns1Var.b();
            if (objB == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            ContentResolver contentResolver = ns1Var.a().getContentResolver();
            y45.i(contentResolver, "getContentResolver(...)");
            return e(contentResolver, (String) objB);
        }

        @Override
        public SearchBean a(ns1 ns1Var) {
            y45.j(ns1Var, Progress.REQUEST);
            return null;
        }

        public final boolean d(String str, Cursor cursor, int i, int i2) {
            String string = cursor.getString(i);
            String string2 = cursor.getString(i2);
            if (string == null) {
                return false;
            }
            return (string2 == null || j1a.V(string2, str, true) || j1a.V(j1a.f1(string, Consts.DOT, string), str, true)) ? false : true;
        }

        public final synchronized ArrayList e(ContentResolver contentResolver, String str) {
            try {
                ArrayList arrayList = new ArrayList();
                if (TextUtils.isEmpty(str)) {
                    return arrayList;
                }
                Cursor cursorQuery = null;
                try {
                    try {
                        cursorQuery = contentResolver.query(t55.e(false), ou4.d, "(_display_name LIKE ? OR title LIKE ?) AND is_music=1", new String[]{"%" + str + "%", "%" + str + "%"}, null);
                        if (cursorQuery == null) {
                            return arrayList;
                        }
                        int columnIndex = cursorQuery.getColumnIndex("_display_name");
                        int columnIndex2 = cursorQuery.getColumnIndex("title");
                        while (cursorQuery.moveToNext()) {
                            if (t55.l(cursorQuery.getString(4)) && !t55.g(cursorQuery) && !d(str, cursorQuery, columnIndex, columnIndex2)) {
                                AudioItem audioItemF = t55.f(cursorQuery, false);
                                LogUtils.v("SearchBeanTypeHandler", "SEARCH_AUDIO searchAudioMediaItem: " + audioItemF.displayName + ", " + audioItemF.title, "cursor: " + cursorQuery.getString(columnIndex) + ", " + cursorQuery.getString(columnIndex2));
                                SearchBean searchBean = new SearchBean();
                                searchBean.setItemType(3);
                                searchBean.setMediaItem(audioItemF);
                                arrayList.add(searchBean);
                            }
                        }
                        for (AudioItem audioItem : dw6.c.a().t(str)) {
                            SearchBean searchBean2 = new SearchBean();
                            searchBean2.setItemType(3);
                            searchBean2.setMediaItem(audioItem);
                            if (!arrayList.contains(searchBean2)) {
                                arrayList.add(searchBean2);
                            }
                        }
                    } catch (Exception e) {
                        Log.i("SearchBeanTypeHandler", e.toString());
                        if (0 != 0) {
                        }
                        return arrayList;
                    }
                    cursorQuery.close();
                    return arrayList;
                } catch (Throwable th) {
                    if (0 != 0) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }),
    MEDIA_BUCKET(MediaBucket.class, new qu4() {
        public static final a b = new a(null);
        public final ArrayList a = new ArrayList();

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        @Override
        public List b(ns1 ns1Var) {
            y45.j(ns1Var, Progress.REQUEST);
            if (ns1Var.b() == null || !(ns1Var.b() instanceof xb6)) {
                return y71.k();
            }
            Object objB = ns1Var.b();
            if (objB == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.MediaBucketRequestInput");
            }
            xb6 xb6Var = (xb6) objB;
            return i(ns1Var.a(), xb6Var.a(), xb6Var.b());
        }

        @Override
        public MediaBucket a(ns1 ns1Var) {
            y45.j(ns1Var, Progress.REQUEST);
            return null;
        }

        public final Uri d(MediaBucket mediaBucket, int i, String str) {
            AudioAlbum audioAlbumD = ao.d.a().D(i);
            if (audioAlbumD == null || !new File(audioAlbumD.imgPath).exists()) {
                mediaBucket.setUriType(0);
                Uri uri = Uri.parse(str);
                y45.i(uri, "parse(...)");
                return uri;
            }
            mediaBucket.setUriType(1);
            String str2 = audioAlbumD.imgPath;
            if (str2 == null) {
                str2 = "";
            }
            Uri uri2 = Uri.parse(str2);
            y45.i(uri2, "parse(...)");
            return uri2;
        }

        public final void e(ContentResolver contentResolver, ArrayList arrayList, boolean z, boolean z2) {
            SparseArray sparseArrayH = h();
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1", null, t55.j());
                    if (cursorQuery == null) {
                        return;
                    }
                    Log.e("MediaBucketTypeHandler", "loadVideoMediaBucket:" + cursorQuery.getCount() + ", isInternal:" + z);
                    int iF = oa1.f();
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(4);
                        if (t55.l(string) && (!z2 || !t55.g(cursorQuery))) {
                            if (z2 || !y45.e(BaseConstant.i, av3.u(string))) {
                                long j = cursorQuery.getLong(6);
                                int i = cursorQuery.getInt(13);
                                MediaBucket mediaBucket = (MediaBucket) sparseArrayH.get(i);
                                if (mediaBucket == null) {
                                    MediaBucket mediaBucket2 = new MediaBucket();
                                    mediaBucket2.bucketId = i;
                                    mediaBucket2.fromInternal = z;
                                    mediaBucket2.setDateModified(j);
                                    String string2 = cursorQuery.getString(14) != null ? cursorQuery.getString(14) : "";
                                    String strU = av3.u(cursorQuery.getString(4));
                                    if (TextUtils.isEmpty(string2)) {
                                        string2 = av3.q(strU);
                                    }
                                    mediaBucket2.setParentPath(strU);
                                    if (y45.e(ou4.e, strU)) {
                                        string2 = Consts.SUFFIX_ROOT;
                                    }
                                    mediaBucket2.setParentName(string2);
                                    mediaBucket2.setUri(t55.k(z, cursorQuery.getInt(0)));
                                    k(mediaBucket2, cursorQuery);
                                    sparseArrayH.put(i, mediaBucket2);
                                    arrayList.add(mediaBucket2);
                                    if (arrayList.size() >= iF) {
                                        break;
                                    }
                                } else {
                                    mediaBucket.count++;
                                }
                            }
                        }
                    }
                    g(sparseArrayH, arrayList, z, z2);
                } catch (Exception e) {
                    Log.i("MediaBucketTypeHandler", e.toString());
                    if (cursorQuery == null) {
                        return;
                    }
                }
                cursorQuery.close();
                l(sparseArrayH);
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                    l(sparseArrayH);
                }
                throw th;
            }
        }

        public final void f(ContentResolver contentResolver, ArrayList arrayList, boolean z, int i) {
            HashMap map = new HashMap();
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1", null, "date_modified DESC ");
                    if (cursorQuery == null) {
                        map.clear();
                        return;
                    }
                    int iF = oa1.f();
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(4);
                        if (t55.l(string)) {
                            long j = cursorQuery.getLong(6);
                            String string2 = "";
                            if (i == 25) {
                                string2 = cursorQuery.getString(8);
                            } else if (i == 26) {
                                string2 = cursorQuery.getString(10);
                            }
                            if (string2 != null) {
                                MediaBucket mediaBucket = (MediaBucket) map.get(string2);
                                if (mediaBucket == null) {
                                    MediaBucket mediaBucket2 = new MediaBucket();
                                    mediaBucket2.setParentName(string2);
                                    mediaBucket2.fromInternal = z;
                                    mediaBucket2.setDateModified(j);
                                    mediaBucket2.uri = d(mediaBucket2, cursorQuery.getInt(0), string);
                                    map.put(string2, mediaBucket2);
                                    arrayList.add(mediaBucket2);
                                    if (arrayList.size() >= iF) {
                                        break;
                                    }
                                } else {
                                    mediaBucket.count++;
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.i("MediaBucketTypeHandler", e.toString());
                    if (0 != 0) {
                        break;
                    }
                    map.clear();
                }
                cursorQuery.close();
                map.clear();
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                map.clear();
                throw th;
            }
        }

        public final void g(SparseArray sparseArray, ArrayList arrayList, boolean z, boolean z2) {
            try {
                List<AudioItem> listK = dw6.k(dw6.c.a(), false, null, 3, null);
                oa1.f();
                if (listK != null) {
                    for (AudioItem audioItem : listK) {
                        String str = audioItem.data;
                        if (t55.l(str) && (!z2 || !t55.i(audioItem))) {
                            if (z2 || !y45.e(BaseConstant.i, av3.u(str))) {
                                long j = audioItem.dateModified;
                                long j2 = audioItem.bucketId;
                                int i = (int) j2;
                                MediaBucket mediaBucket = (MediaBucket) sparseArray.get(i);
                                if (mediaBucket == null) {
                                    MediaBucket mediaBucket2 = new MediaBucket();
                                    mediaBucket2.bucketId = j2;
                                    mediaBucket2.fromInternal = z;
                                    mediaBucket2.setDateModified(j);
                                    String str2 = audioItem.bucketDisplayName;
                                    String strQ = str2 != null ? str2 : "";
                                    String strU = av3.u(audioItem.data);
                                    if (TextUtils.isEmpty(strQ)) {
                                        strQ = av3.q(strU);
                                    }
                                    mediaBucket2.setParentPath(strU);
                                    if (y45.e(ou4.e, strU)) {
                                        strQ = Consts.SUFFIX_ROOT;
                                    }
                                    mediaBucket2.setParentName(strQ);
                                    mediaBucket2.setUri(t55.k(z, audioItem.id));
                                    int i2 = audioItem.id;
                                    String str3 = audioItem.data;
                                    y45.i(str3, "data");
                                    j(mediaBucket2, i2, str3);
                                    sparseArray.put(i, mediaBucket2);
                                    arrayList.add(mediaBucket2);
                                    arrayList.size();
                                } else {
                                    mediaBucket.count++;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.i("MediaBucketTypeHandler", e.toString());
            }
        }

        public final SparseArray h() {
            int size = this.a.size();
            if (size == 0) {
                return new SparseArray();
            }
            Object obj = this.a.get(size - 1);
            y45.i(obj, "get(...)");
            return (SparseArray) obj;
        }

        public final synchronized ArrayList i(Context context, int i, boolean z) {
            try {
                if (context == null) {
                    return new ArrayList();
                }
                ContentResolver contentResolver = context.getContentResolver();
                ArrayList arrayList = new ArrayList();
                if (i == 27) {
                    y45.g(contentResolver);
                    e(contentResolver, arrayList, false, z);
                } else {
                    y45.g(contentResolver);
                    f(contentResolver, arrayList, false, i);
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }

        public final void j(MediaBucket mediaBucket, int i, String str) {
            Uri uri;
            AudioAlbum audioAlbumD = ao.d.a().D(i);
            boolean z = (audioAlbumD != null ? audioAlbumD.imgPath : null) != null && new File(audioAlbumD.imgPath).exists();
            mediaBucket.isCustomCover = z;
            if (z) {
                y45.g(audioAlbumD);
                uri = Uri.parse(audioAlbumD.imgPath);
            } else {
                uri = Uri.parse(str);
            }
            mediaBucket.setUri(uri);
        }

        public final void k(MediaBucket mediaBucket, Cursor cursor) {
            String string;
            boolean z = false;
            AudioAlbum audioAlbumD = ao.d.a().D(cursor.getInt(0));
            if ((audioAlbumD != null ? audioAlbumD.imgPath : null) != null && new File(audioAlbumD.imgPath).exists()) {
                z = true;
            }
            mediaBucket.isCustomCover = z;
            if (z) {
                y45.g(audioAlbumD);
                string = audioAlbumD.imgPath;
            } else {
                string = cursor.getString(4);
            }
            mediaBucket.setUri(Uri.parse(string));
        }

        public final void l(SparseArray sparseArray) {
            if (sparseArray == null) {
                return;
            }
            sparseArray.clear();
            this.a.add(sparseArray);
        }
    }),
    AUDIO_RESULT_ITEM(AudioResultModel.class, new zm() {
        public final String b = "AudioResultTypeHandler";
        public final Object c = new Object();
        public final Object d = new Object();

        @Override
        public List b(ns1 ns1Var) {
            y45.j(ns1Var, Progress.REQUEST);
            return y71.k();
        }

        @Override
        public AudioResultModel a(ns1 ns1Var) {
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
            return m((cr) objB, contentResolver);
        }

        public final AudioResultModel m(cr crVar, ContentResolver contentResolver) {
            AudioResultModel audioResultModelN;
            if (crVar.m() == null || !crVar.c()) {
                synchronized (this.d) {
                    audioResultModelN = n(contentResolver, crVar.l(), crVar.y(), crVar.t(), crVar.i(), crVar.e());
                }
            } else {
                synchronized (this.c) {
                    audioResultModelN = o(contentResolver, crVar.l(), crVar.m(), crVar.p(), crVar.j(), crVar.e());
                }
            }
            return audioResultModelN;
        }

        /* JADX WARN: Code duplicated, block: B:54:0x016c  */
        /* JADX WARN: Code duplicated, block: B:87:0x017a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:90:0x0165 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        public final AudioResultModel n(ContentResolver contentResolver, String str, boolean z, ArrayList arrayList, boolean z2, boolean z3) {
            Iterator it;
            List<AudioItem> listData;
            TreeSet treeSet = new TreeSet();
            ArrayList arrayList2 = new ArrayList();
            Cursor cursorQuery = null;
            long filterCount = 0;
            try {
                try {
                    cursorQuery = contentResolver.query(t55.e(z), ou4.d, "is_music=1", null, t55.j());
                    Log.e(this.b, "loadAudioItem cursor:" + cursorQuery);
                    vdb.a aVar = vdb.a;
                    aVar.c(this.b, "loadAudioItem:" + cursorQuery);
                    try {
                        if (cursorQuery == null) {
                            return new AudioResultModel(arrayList2, 0L);
                        }
                        aVar.c(this.b, "loadAudioItem cursor:" + cursorQuery.getCount() + ", isInternal:" + z + ",filtered:" + z2);
                        Log.e(this.b, "loadAudioItem:" + cursorQuery.getCount() + ", isInternal:" + z + ",filtered:" + z2);
                        filterCount = 0;
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
                        er.t.a(arrayList2, arrayList, str);
                        cursorQuery.close();
                        ArrayList arrayList3 = new ArrayList(arrayList2);
                        ns9.x(arrayList3);
                        it = arrayList3.iterator();
                        y45.i(it, "iterator(...)");
                        while (it.hasNext()) {
                            AudioItem audioItem2 = (AudioItem) it.next();
                            if (treeSet.size() >= 20 && RecentAddDataManager.a().f(audioItem2, false)) {
                                y45.g(audioItem2);
                                treeSet.add(Integer.valueOf(audioItem2.id));
                            }
                        }
                        RecentAddDataManager.a().l(treeSet, false);
                        vdb.a.c(this.b, "loadAudioItem result:" + arrayList2.size());
                        return new AudioResultModel(arrayList2, filterCount);
                    } catch (Exception e) {
                        e = e;
                        vdb.a.c(this.b, "loadAudioItem exception:" + e.getMessage());
                        Log.i(this.b, e.toString());
                        if (cursorQuery != null) {
                        }
                        ArrayList arrayList4 = new ArrayList(arrayList2);
                        ns9.x(arrayList4);
                        it = arrayList4.iterator();
                        y45.i(it, "iterator(...)");
                        while (it.hasNext()) {
                            AudioItem audioItem3 = (AudioItem) it.next();
                            if (treeSet.size() >= 20) {
                            }
                        }
                        RecentAddDataManager.a().l(treeSet, false);
                        vdb.a.c(this.b, "loadAudioItem result:" + arrayList2.size());
                        return new AudioResultModel(arrayList2, filterCount);
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                filterCount = 0;
            }
            vdb.a.c(this.b, "loadAudioItem exception:" + e.getMessage());
            Log.i(this.b, e.toString());
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            ArrayList arrayList5 = new ArrayList(arrayList2);
            ns9.x(arrayList5);
            it = arrayList5.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                AudioItem audioItem4 = (AudioItem) it.next();
                if (treeSet.size() >= 20) {
                }
            }
            RecentAddDataManager.a().l(treeSet, false);
            vdb.a.c(this.b, "loadAudioItem result:" + arrayList2.size());
            return new AudioResultModel(arrayList2, filterCount);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00b4  */
        /* JADX WARN: Code duplicated, block: B:26:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:29:0x00e8 A[Catch: all -> 0x0100, Exception -> 0x0102, TryCatch #2 {Exception -> 0x0102, blocks: (B:27:0x00e2, B:29:0x00e8, B:33:0x00f6, B:35:0x00fc, B:40:0x0104, B:42:0x0110, B:44:0x011c, B:46:0x0122, B:48:0x0129), top: B:57:0x00e2, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:42:0x0110 A[Catch: all -> 0x0100, Exception -> 0x0102, TryCatch #2 {Exception -> 0x0102, blocks: (B:27:0x00e2, B:29:0x00e8, B:33:0x00f6, B:35:0x00fc, B:40:0x0104, B:42:0x0110, B:44:0x011c, B:46:0x0122, B:48:0x0129), top: B:57:0x00e2, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:48:0x0129 A[Catch: all -> 0x0100, Exception -> 0x0102, TRY_LEAVE, TryCatch #2 {Exception -> 0x0102, blocks: (B:27:0x00e2, B:29:0x00e8, B:33:0x00f6, B:35:0x00fc, B:40:0x0104, B:42:0x0110, B:44:0x011c, B:46:0x0122, B:48:0x0129), top: B:57:0x00e2, outer: #0 }] */
        /* JADX WARN: Code duplicated, block: B:62:0x00f4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:65:0x00f3 A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:26:0x00bc, please report this as an issue */
        public final AudioResultModel o(ContentResolver contentResolver, String str, MediaBucket mediaBucket, String str2, int i, boolean z) {
            String[] strArr;
            String str3;
            String str4;
            String[] strArr2;
            Cursor cursorQuery;
            long filterCount;
            AudioResultModel audioResultModelI;
            List<AudioItem> listData;
            ArrayList arrayList = new ArrayList();
            Log.e(this.b, "<queryAlbumFromAudio> flag: " + i + StringUtils.COMMA + mediaBucket.parentName);
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
                            Log.e(this.b, "<queryAlbumFromAudio> [ERROR] fail to query()");
                            return null;
                        }
                        Log.e(this.b, "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:" + mediaBucket.fromInternal);
                        filterCount = 0;
                        while (cursorQuery.moveToNext()) {
                            try {
                                try {
                                    if (t55.l(cursorQuery.getString(4))) {
                                        if (i == 22 || !t55.g(cursorQuery)) {
                                            arrayList.add(t55.f(cursorQuery, mediaBucket.fromInternal));
                                        } else {
                                            filterCount++;
                                        }
                                    }
                                } catch (Throwable th) {
                                    cursorQuery.close();
                                    throw th;
                                }
                            } catch (Exception e) {
                                Log.e(this.b, "<queryAlbumFromAudio>: [ERROR] Exception: " + e);
                                e.printStackTrace();
                            }
                        }
                        if (z) {
                            audioResultModelI = dw6.c.a().i(mediaBucket, str2, i);
                            if (audioResultModelI != null && (listData = audioResultModelI.getListData()) != null) {
                                arrayList.addAll(listData);
                            }
                            if (audioResultModelI != null) {
                                filterCount += audioResultModelI.getFilterCount();
                            }
                        }
                        cursorQuery.close();
                        er.t.a(arrayList, null, str);
                        return new AudioResultModel(arrayList, filterCount);
                    }
                    strArr = new String[]{mediaBucket.parentName, "1"};
                    str3 = "album LIKE ? AND is_music = ?";
                }
                cursorQuery = contentResolver.query(t55.e(mediaBucket.fromInternal), ou4.d, str4, strArr2, t55.j());
            } catch (Exception e2) {
                Log.e(this.b, "<queryAlbumFromAudio>: [ERROR] query() Exception: " + e2);
                e2.printStackTrace();
                cursorQuery = null;
            }
            str4 = str3;
            strArr2 = strArr;
            if (cursorQuery == null) {
                Log.e(this.b, "<queryAlbumFromAudio> [ERROR] fail to query()");
                return null;
            }
            Log.e(this.b, "queryAlbumFromAudio:" + cursorQuery.getCount() + ", isInternal:" + mediaBucket.fromInternal);
            filterCount = 0;
            while (cursorQuery.moveToNext()) {
                if (t55.l(cursorQuery.getString(4))) {
                    if (i == 22) {
                    }
                    arrayList.add(t55.f(cursorQuery, mediaBucket.fromInternal));
                }
            }
            if (z) {
                audioResultModelI = dw6.c.a().i(mediaBucket, str2, i);
                if (audioResultModelI != null) {
                    arrayList.addAll(listData);
                }
                if (audioResultModelI != null) {
                    filterCount += audioResultModelI.getFilterCount();
                }
            }
            cursorQuery.close();
            er.t.a(arrayList, null, str);
            return new AudioResultModel(arrayList, filterCount);
        }
    });

    private static final db3 $ENTRIES = a.a(values());
    private final Class<?> outPutType;
    private final qu4 typeHandler;

    MediaStoreAudioTypeEnum(Class cls, qu4 qu4Var) {
        this.outPutType = cls;
        this.typeHandler = qu4Var;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final Class<?> getOutPutType() {
        return this.outPutType;
    }

    public final qu4 getTypeHandler() {
        return this.typeHandler;
    }
}
