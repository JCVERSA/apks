package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.AudioResultModel;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import com.transsion.dbdata.database.MusicVideoDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class jx5 extends mw5 {
    public final String b = "MVResultTypeHandler";
    public final Object c = new Object();
    public final Object d = new Object();

    public static final zfb m(List list, AudioItem audioItem) {
        y45.j(audioItem, "it");
        list.add(audioItem);
        return zfb.a;
    }

    public static final zfb o(List list, AudioItem audioItem) {
        y45.j(audioItem, "it");
        list.add(audioItem);
        return zfb.a;
    }

    public static AudioResultModel s(jx5 jx5Var, ContentResolver contentResolver, cr crVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return jx5Var.r(contentResolver, crVar, z);
    }

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
        Context contextA = ns1Var.a();
        ContentResolver contentResolver = ns1Var.a().getContentResolver();
        y45.i(contentResolver, "getContentResolver(...)");
        return p(contextA, (cr) objB, contentResolver);
    }

    public final AudioResultModel l(boolean z, boolean z2) {
        if (!z2) {
            final ArrayList arrayList = new ArrayList();
            return new AudioResultModel(arrayList, t55.m(MusicVideoDatabase.a().b, 0L, z, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return jx5.m(arrayList, (AudioItem) obj);
                }
            }));
        }
        List list = MusicVideoDatabase.a().b;
        y45.i(list, "scanMusicVideoCache");
        return new AudioResultModel(list, 0L);
    }

    public final AudioResultModel n(boolean z, boolean z2) {
        if (!z2) {
            final ArrayList arrayList = new ArrayList();
            return new AudioResultModel(arrayList, t55.m(MusicVideoDatabase.a().a, 0L, z, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return jx5.o(arrayList, (AudioItem) obj);
                }
            }));
        }
        List list = MusicVideoDatabase.a().a;
        y45.i(list, "musicVideoAddByUserCache");
        return new AudioResultModel(list, 0L);
    }

    public final AudioResultModel p(Context context, cr crVar, ContentResolver contentResolver) {
        AudioResultModel audioResultModelQ;
        if (crVar.B()) {
            synchronized (this.c) {
                audioResultModelQ = t(crVar, contentResolver);
            }
        } else {
            if (crVar.m() == null || !crVar.c()) {
                return null;
            }
            synchronized (this.d) {
                audioResultModelQ = q(contentResolver, crVar.m(), crVar.p(), crVar.j());
            }
        }
        return audioResultModelQ;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00e3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ec A[Catch: all -> 0x0109, Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:30:0x00e6, B:32:0x00ec, B:36:0x00ff, B:38:0x0105, B:43:0x010d), top: B:54:0x00e6, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fc A[SYNTHETIC] */
    public final AudioResultModel q(ContentResolver contentResolver, MediaBucket mediaBucket, String str, int i) {
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
                    long j = 0;
                    while (cursorQuery.moveToNext()) {
                        try {
                            try {
                                if (t55.l(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")))) {
                                    if (i == 22 || !t55.h(cursorQuery)) {
                                        arrayList.add(new AudioItem(qpb.j(cursorQuery, mediaBucket.fromInternal)));
                                    } else {
                                        j++;
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                    cursorQuery.close();
                    return new AudioResultModel(arrayList, j);
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
        long j2 = 0;
        while (cursorQuery.moveToNext()) {
            if (t55.l(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")))) {
                if (i == 22) {
                }
                arrayList.add(new AudioItem(qpb.j(cursorQuery, mediaBucket.fromInternal)));
            }
        }
        cursorQuery.close();
        return new AudioResultModel(arrayList, j2);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:62:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00a6: MOVE (r0 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:27:0x00a6 */
    public final AudioResultModel r(ContentResolver contentResolver, cr crVar, boolean z) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        List listF;
        if (!z) {
            List list = MusicVideoDatabase.a().b;
            y45.i(list, "scanMusicVideoCache");
            if (!list.isEmpty()) {
                return l(crVar.i(), crVar.x());
            }
        }
        MusicVideoDatabase.a().b.clear();
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        long j = 0;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList2 = new ArrayList();
                e(sb, arrayList2);
                cursorQuery = contentResolver.query(h(crVar.y()), qpb.b, sb.toString(), (String[]) arrayList2.toArray(new String[0]), t55.j());
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        try {
                            String string = cursorQuery.getString(7);
                            if (qpb.w(string)) {
                                c(cursorQuery, crVar.y());
                                boolean z2 = crVar.i() != t55.h(cursorQuery);
                                if (t55.l(string)) {
                                    if (z2) {
                                        j++;
                                    } else {
                                        MediaItem mediaItemJ = qpb.j(cursorQuery, crVar.y());
                                        y45.g(mediaItemJ);
                                        arrayList.add(mediaItemJ);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            Log.i(this.b, e.toString());
                            if (cursorQuery != null) {
                            }
                            g(contentResolver, arrayList, crVar.y(), crVar.i());
                            listF = f(arrayList);
                            if (listF != null) {
                                return new AudioResultModel(listF, j);
                            }
                            return null;
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        g(contentResolver, arrayList, crVar.y(), crVar.i());
        listF = f(arrayList);
        if (listF != null) {
            return new AudioResultModel(listF, j);
        }
        return null;
    }

    public final AudioResultModel t(cr crVar, ContentResolver contentResolver) {
        List<AudioItem> listData;
        List<AudioItem> listData2;
        AudioResultModel audioResultModelS = s(this, contentResolver, crVar, false, 4, null);
        AudioResultModel audioResultModelU = u(crVar);
        ArrayList arrayList = new ArrayList();
        if (audioResultModelS != null && (listData2 = audioResultModelS.getListData()) != null) {
            arrayList.addAll(listData2);
        }
        if (audioResultModelU != null && (listData = audioResultModelU.getListData()) != null) {
            for (AudioItem audioItem : listData) {
                if (!arrayList.contains(audioItem)) {
                    arrayList.add(audioItem);
                }
            }
        }
        Long lValueOf = audioResultModelS != null ? Long.valueOf(audioResultModelS.getFilterCount()) : null;
        Long lValueOf2 = lValueOf != null ? Long.valueOf(lValueOf.longValue() + (audioResultModelU != null ? audioResultModelU.getFilterCount() : 0L)) : null;
        List listV = ns9.v(arrayList);
        y45.g(listV);
        return new AudioResultModel(listV, lValueOf2 != null ? lValueOf2.longValue() : 0L);
    }

    public final AudioResultModel u(cr crVar) {
        List list = MusicVideoDatabase.a().a;
        y45.i(list, "musicVideoAddByUserCache");
        if (!list.isEmpty()) {
            return n(crVar.i(), crVar.x());
        }
        MusicVideoDatabase.a().a.clear();
        List<MusicVideoDataBean> all = MusicVideoDatabase.a().b().getAll();
        ArrayList arrayList = new ArrayList();
        long j = 0;
        if (all != null) {
            Iterator<T> it = all.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = new AudioItem((MusicVideoDataBean) it.next());
                d(audioItem);
                if (crVar.i() != t55.i(audioItem)) {
                    j++;
                } else {
                    arrayList.add(audioItem);
                }
            }
        }
        return new AudioResultModel(arrayList, j);
    }
}
