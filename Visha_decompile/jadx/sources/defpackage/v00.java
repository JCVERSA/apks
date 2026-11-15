package defpackage;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.utils.BaseConstant;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class v00 {
    public static final ExecutorService a = Executors.newSingleThreadExecutor();

    public static final class a {
        public static final a d = new a("", "", "");
        public final String a;
        public final String b;
        public final String c;

        public a(String str, String str2, String str3) {
            this.a = str == null ? "" : str;
            this.b = str2 == null ? "" : str2;
            this.c = str3 == null ? "" : str3;
        }
    }

    public static final class b {
        public final long a;
        public final String b;
        public final String c;
        public final String d;
        public final String e;
        public final String f;

        public b(long j, String str, String str2, String str3, String str4, String str5) {
            this.a = j;
            this.b = str == null ? "" : str;
            this.c = str2 == null ? "" : str2;
            this.d = str3 == null ? "" : str3;
            this.e = str4 == null ? "" : str4;
            this.f = str5 == null ? "" : str5;
        }
    }

    public static final class c {
        public final String a;
        public final String b;
        public final String c;

        public c(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }
    }

    public static void b(Context context) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        if (i(applicationContext)) {
            Log.d("AudioSmartEditMetadataHelper", "Smart edit metadata fix already completed for logic v4, skipping");
        } else {
            a.execute(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    v00.v(applicationContext);
                }
            });
        }
    }

    public static String c(String... strArr) {
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return "";
    }

    public static int d(Context context) throws Throwable {
        Iterator it;
        int i;
        List listA = ao.U().A();
        int i2 = 0;
        String str = "AudioSmartEditMetadataHelper";
        if (listA == null || listA.isEmpty()) {
            Log.i("AudioSmartEditMetadataHelper", "No media_data_missing records found, skip fix");
            return 0;
        }
        Log.i("AudioSmartEditMetadataHelper", "Scanning " + listA.size() + " media_data_missing records");
        Iterator it2 = listA.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            qe6 qe6Var = (qe6) it2.next();
            if (qe6Var.i()) {
                String strG = qe6Var.g();
                int iF = qe6Var.f();
                if (TextUtils.isEmpty(strG) || iF <= 0) {
                    it = it2;
                    i = i2;
                    String str2 = str;
                    int i4 = i3;
                    k(qe6Var, "invalid_path_or_media_id");
                    i3 = i4 + 1;
                    str = str2;
                    it2 = it;
                    i2 = i;
                } else {
                    if (new File(strG).exists()) {
                        a aVarT = t(strG);
                        b bVarO = o(context, iF, strG);
                        if (bVarO == null) {
                            k(qe6Var, "media_store_not_found, id3Title=" + aVarT.a);
                        } else {
                            c cVarU = u(qe6Var, aVarT, bVarO, strG);
                            if (TextUtils.isEmpty(cVarU.a)) {
                                k(qe6Var, "cannot_resolve_title, id3Title=" + aVarT.a + ", msTitle=" + bVarO.b);
                            } else {
                                it = it2;
                                i = i2;
                                if (m(cVarU, bVarO, aVarT, qe6Var)) {
                                    String str3 = str;
                                    int i5 = i3;
                                    long j = bVarO.a;
                                    if (j <= 0) {
                                        j = iF;
                                    }
                                    Log.i(str3, "Found smart edit mismatch: dbAlias=" + qe6Var.e() + ", dbArtist=" + qe6Var.c() + ", dbAlbum=" + qe6Var.a() + ", id3Title=" + aVarT.a + ", id3Artist=" + aVarT.b + ", msTitle=" + bVarO.b + ", msArtist=" + bVarO.c + ", msDisplayName=" + bVarO.e + ", syncTitle=" + cVarU.a + ", syncArtist=" + cVarU.b + ", path=" + strG);
                                    zl6.g(context, strG, j, cVarU.a, cVarU.b, cVarU.c);
                                    x(qe6Var, j, strG, cVarU);
                                    i2 = i + 1;
                                    str = str3;
                                    it2 = it;
                                    i3 = i5;
                                } else {
                                    k(qe6Var, "metadata_already_synced, dbAlias=" + qe6Var.e() + ", dbArtist=" + qe6Var.c() + ", dbAlbum=" + qe6Var.a() + ", id3Title=" + aVarT.a + ", id3Artist=" + aVarT.b + ", msTitle=" + bVarO.b + ", msArtist=" + bVarO.c + ", msDisplayName=" + bVarO.e);
                                    i3++;
                                    it2 = it;
                                    i2 = i;
                                }
                            }
                        }
                    } else {
                        k(qe6Var, "file_not_exists");
                    }
                    i3++;
                }
            }
        }
        int i6 = i2;
        Log.i(str, "Smart edit scan summary: fixed=" + i6 + ", skipped=" + i3);
        return i6;
    }

    public static String e(Cursor cursor, String str) {
        String string;
        int columnIndex = cursor.getColumnIndex(str);
        return (columnIndex >= 0 && (string = cursor.getString(columnIndex)) != null) ? string : "";
    }

    public static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf > 0 ? name.substring(0, iLastIndexOf) : name;
    }

    public static String g(AudioFile audioFile, FieldKey fieldKey) {
        String first = audioFile.getTag().getFirst(fieldKey);
        return first == null ? "" : first;
    }

    public static boolean h(qe6 qe6Var) {
        return (TextUtils.isEmpty(qe6Var.e()) && TextUtils.isEmpty(qe6Var.c()) && TextUtils.isEmpty(qe6Var.a()) && TextUtils.isEmpty(qe6Var.b()) && !qe6Var.h()) ? false : true;
    }

    public static boolean i(Context context) {
        return context.getSharedPreferences("audio_smart_edit_metadata_fix", 0).getInt("fix_logic_version", 0) >= 4;
    }

    public static void k(qe6 qe6Var, String str) {
        Log.i("AudioSmartEditMetadataHelper", "Skip record: reason=" + str + ", path=" + qe6Var.g() + ", mediaId=" + qe6Var.f() + ", alias=" + qe6Var.e() + ", artist=" + qe6Var.c() + ", album=" + qe6Var.a() + ", hasCover=" + qe6Var.h());
    }

    public static void l(Context context) {
        context.getSharedPreferences("audio_smart_edit_metadata_fix", 0).edit().putInt("fix_logic_version", 4).apply();
    }

    public static boolean m(c cVar, b bVar, a aVar, qe6 qe6Var) {
        if (!h(qe6Var)) {
            return false;
        }
        if (!TextUtils.equals(cVar.a, bVar.b) || !TextUtils.equals(cVar.b, bVar.c) || !TextUtils.equals(cVar.c, bVar.d) || !TextUtils.equals(cVar.a, aVar.a) || !TextUtils.equals(cVar.b, aVar.b) || !TextUtils.equals(cVar.c, aVar.c)) {
            return true;
        }
        String strN = n(f(qe6Var.g()));
        if (!TextUtils.isEmpty(cVar.a) && !TextUtils.isEmpty(bVar.e) && TextUtils.equals(n(bVar.e), strN) && !TextUtils.equals(cVar.a, strN)) {
            return true;
        }
        if (TextUtils.isEmpty(qe6Var.e()) && !TextUtils.isEmpty(cVar.a) && !TextUtils.equals(cVar.a, bVar.e)) {
            return true;
        }
        boolean z = (TextUtils.isEmpty(qe6Var.e()) && TextUtils.isEmpty(qe6Var.c()) && TextUtils.isEmpty(qe6Var.a())) ? false : true;
        if (z || qe6Var.h()) {
            return (!z && TextUtils.isEmpty(aVar.a) && TextUtils.isEmpty(aVar.b) && TextUtils.isEmpty(aVar.c)) ? false : true;
        }
        return false;
    }

    public static String n(String str) {
        return str == null ? "" : str.trim();
    }

    public static b o(Context context, int i, String str) throws Throwable {
        b bVarQ = q(context, i, str);
        return bVarQ != null ? bVarQ : r(context, str);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0077  */
    public static b p(ContentResolver contentResolver, String str) throws Throwable {
        Cursor cursorQuery;
        int columnIndex;
        File file = new File(str);
        Cursor cursor = null;
        if (!file.exists()) {
            return null;
        }
        String name = file.getName();
        String[] strArr = {name, String.valueOf(file.length())};
        try {
            Uri uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            cursorQuery = contentResolver.query(uri, new String[]{"_id"}, "_display_name=? AND _size=?", strArr, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_id")) >= 0) {
                            long j = cursorQuery.getLong(columnIndex);
                            b bVarS = s(contentResolver, ContentUris.withAppendedId(uri, j), j);
                            cursorQuery.close();
                            return bVarS;
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.e("AudioSmartEditMetadataHelper", "Error querying MediaStore by displayName=" + name, e);
                        if (cursorQuery != null) {
                        }
                        return null;
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
        return null;
    }

    public static b q(Context context, int i, String str) throws Throwable {
        long j = i;
        b bVarS = s(context.getContentResolver(), ContentUris.withAppendedId(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, j), j);
        if (bVarS == null) {
            return null;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(bVarS.f) || TextUtils.equals(str, bVarS.f)) {
            return bVarS;
        }
        Log.w("AudioSmartEditMetadataHelper", "MediaId path mismatch: mediaId=" + i + ", expected=" + str + ", actual=" + bVarS.f);
        return null;
    }

    public static b r(Context context, String str) {
        return p(context.getContentResolver(), str);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    public static b s(ContentResolver contentResolver, Uri uri, long j) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = contentResolver.query(uri, new String[]{"title", "artist", "album", "_display_name"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            b bVar = new b(j, n(e(cursorQuery, "title")), n(e(cursorQuery, "artist")), n(e(cursorQuery, "album")), n(f(e(cursorQuery, "_display_name"))), "");
                            cursorQuery.close();
                            return bVar;
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.e("AudioSmartEditMetadataHelper", "Error querying MediaStore metadata: uri=" + uri, e);
                        if (cursorQuery != null) {
                        }
                        return null;
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
        return null;
    }

    public static a t(String str) {
        try {
            AudioFile audioFile = AudioFileIO.read(new File(str));
            return audioFile.getTag() == null ? a.d : new a(n(g(audioFile, FieldKey.TITLE)), n(g(audioFile, FieldKey.ARTIST)), n(g(audioFile, FieldKey.ALBUM)));
        } catch (Exception e) {
            Log.w("AudioSmartEditMetadataHelper", "Failed to read ID3 metadata: " + str, e);
            return a.d;
        }
    }

    public static c u(qe6 qe6Var, a aVar, b bVar, String str) {
        return new c(n(c(qe6Var.e(), aVar.a, bVar.b, f(str))), n(c(qe6Var.c(), aVar.b, bVar.c)), n(c(qe6Var.a(), aVar.c, bVar.d)));
    }

    public static void v(Context context) throws Throwable {
        try {
            Log.i("AudioSmartEditMetadataHelper", "Starting smart edit metadata fix...");
            int iD = d(context);
            l(context);
            Log.i("AudioSmartEditMetadataHelper", "Smart edit metadata fix completed, fixedCount=" + iD);
            if (iD > 0) {
                w(context);
            }
        } catch (Exception e) {
            Log.e("AudioSmartEditMetadataHelper", "Error during smart edit metadata fix", e);
        }
    }

    public static void w(Context context) {
        try {
            context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
        } catch (Exception e) {
            Log.e("AudioSmartEditMetadataHelper", "Error triggering MediaStore scan", e);
        }
    }

    public static void x(qe6 qe6Var, long j, String str, c cVar) {
        AudioItem audioItem = new AudioItem();
        audioItem.id = (int) j;
        audioItem.data = str;
        audioItem.displayName = cVar.a;
        audioItem.artistName = cVar.b;
        audioItem.albumName = cVar.c;
        if (!TextUtils.isEmpty(qe6Var.b())) {
            audioItem.mAlbumYear = qe6Var.b();
        }
        Log.i("AudioSmartEditMetadataHelper", "Upsert media_alias: path=" + str + ", alias=" + cVar.a + ", success=" + ao.U().x0(audioItem));
    }
}
