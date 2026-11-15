package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.MusicVideoDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class mw5 implements qu4 {
    public final String a = "MVBaseHandler";

    public final void c(Cursor cursor, boolean z) {
        y45.j(cursor, "cursor");
        MediaItem mediaItemJ = qpb.j(cursor, z);
        if (mediaItemJ == null || MusicVideoDatabase.a().b.contains(new AudioItem(mediaItemJ))) {
            return;
        }
        MusicVideoDatabase.a().b.add(new AudioItem(mediaItemJ));
    }

    public final void d(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        if (MusicVideoDatabase.a().a.contains(audioItem)) {
            return;
        }
        MusicVideoDatabase.a().a.add(audioItem);
    }

    public final void e(StringBuilder sb, List list) {
        y45.j(sb, "whereClauseStr");
        y45.j(list, "selectionArray");
        int size = dw6.c.a().c().size();
        for (int i = 0; i < size; i++) {
            dw6.a aVar = dw6.c;
            if (i == aVar.a().c().size() - 1) {
                sb.append("LOWER(_display_name) LIKE LOWER(?))");
            } else if (i == 0) {
                sb.append("(LOWER(_display_name) LIKE LOWER(?) OR ");
            } else {
                sb.append("LOWER(_display_name) LIKE LOWER(?) OR ");
            }
            list.add("%" + aVar.a().c().get(i) + "_%");
        }
    }

    public final List f(List list) {
        y45.j(list, "mediaItems");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final void g(ContentResolver contentResolver, List list, boolean z, boolean z2) {
        y45.j(contentResolver, "resolver");
        y45.j(list, "mediaItemList");
        if (!pp3.w() && !pp3.j()) {
            return;
        }
        Cursor cursor = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("(");
                sb.append("_data LIKE?");
                int length = hk3.h.length - 1;
                for (int i = 0; i < length; i++) {
                    sb.append(" OR _data LIKE?");
                }
                String[] strArr = hk3.h;
                y45.g(strArr);
                List listM1 = hi.m1(strArr);
                sb.append(")");
                sb.append(" and (");
                int size = dw6.c.a().c().size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (i2 == 0) {
                        sb.append(" LOWER(_display_name) LIKE LOWER(?)");
                    } else {
                        sb.append(" OR LOWER(_display_name) LIKE LOWER(?)");
                    }
                    listM1.add("%" + dw6.c.a().c().get(i2) + "_%");
                }
                sb.append(")");
                String[] strArr2 = (String[]) listM1.toArray(new String[0]);
                String string = sb.toString();
                y45.i(string, "toString(...)");
                Cursor cursorQuery = contentResolver.query(qpb.k(z), qpb.c, string, strArr2, qpb.p());
                if (cursorQuery == null) {
                    return;
                }
                while (cursorQuery.moveToNext()) {
                    try {
                        String string2 = cursorQuery.getString(7);
                        if (qpb.w(string2)) {
                            boolean z3 = z2 != t55.h(cursorQuery);
                            if (t55.l(string2) && !z3 && !TextUtils.isEmpty(string2)) {
                                y45.g(string2);
                                if (j1a.X(string2, Consts.DOT, false, 2, null)) {
                                    String strSubstring = string2.substring(j1a.s0(string2, Consts.DOT, 0, false, 6, null));
                                    y45.i(strSubstring, "substring(...)");
                                    if (hk3.i.contains(strSubstring)) {
                                        MediaItem mediaItemH = qpb.h(cursorQuery, z);
                                        if (list.contains(mediaItemH)) {
                                            continue;
                                        } else {
                                            y45.g(mediaItemH);
                                            list.add(mediaItemH);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        cursor = cursorQuery;
                        Log.d(this.a, "loadVideoFromFilesDbBySuffix " + e);
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                cursorQuery.close();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final Uri h(boolean z) {
        Uri uri;
        String str;
        if (z) {
            uri = MediaStore.Video.Media.INTERNAL_CONTENT_URI;
            str = "INTERNAL_CONTENT_URI";
        } else {
            uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            str = "EXTERNAL_CONTENT_URI";
        }
        y45.i(uri, str);
        return uri;
    }
}
