package com.transsion.audio.lyrics;

import android.database.Cursor;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.reflect.TypeToken;
import com.transsion.audio.lyrics.LrcSearcher;
import com.transsion.audio.lyrics.bean.LrcRow;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.dbdata.beans.LyricSearchData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.c07;
import defpackage.ds8;
import defpackage.ed7;
import defpackage.fi1;
import defpackage.hb0;
import defpackage.k29;
import defpackage.l22;
import defpackage.ld7;
import defpackage.mc7;
import defpackage.nz5;
import defpackage.ou5;
import defpackage.pd7;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.rc2;
import defpackage.rc7;
import defpackage.ru5;
import defpackage.t74;
import defpackage.vb;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class LrcSearcher {
    public AudioItem a;
    public String b;
    public ou5 c;
    public boolean d = true;
    public boolean e = false;
    public boolean f = false;

    public class a implements pd7 {
        public final List b;
        public final int c;
        public final i d;

        public a(List list, int i, i iVar) {
            this.b = list;
            this.c = i;
            this.d = iVar;
        }

        @Override
        public void onNext(List list) {
            if (!LrcSearcher.this.e && LrcSearcher.this.d) {
                LrcSearcher.this.e = true;
                LogUtils.j("LrcSearcher", "mark vd_audio_lyrics_search_result 1");
                nz5.b(((h) this.b.get(this.c)).b, 1);
            }
            i iVar = this.d;
            if (iVar != null) {
                iVar.searchSuccess(list, LrcSearcher.this.a);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            if (this.c != this.b.size() - 1) {
                LrcSearcher.this.D(this.b, this.d, this.c + 1);
                return;
            }
            if (!LrcSearcher.this.f && LrcSearcher.this.d) {
                LrcSearcher.this.f = true;
                LogUtils.j("LrcSearcher", "mark vd_audio_lyrics_search_result 0");
                nz5.b(((h) this.b.get(this.c)).b, 0);
            }
            i iVar = this.d;
            if (iVar != null) {
                iVar.searchFailed(LrcSearcher.this.a);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements ed7 {
        public b() {
        }

        @Override
        public void subscribe(rc7 rc7Var) {
            String first = AudioFileIO.read(new File(LrcSearcher.this.a.data)).getTag().getFirst(FieldKey.LYRICS);
            if (TextUtils.isEmpty(first)) {
                rc7Var.onError(new Throwable());
            } else {
                rc7Var.onNext(LrcSearcher.this.c.a(new l22(LrcSearcher.this.n(first.getBytes(StandardCharsets.UTF_8))), true, LrcSearcher.this.b));
            }
            rc7Var.onComplete();
        }
    }

    public class c implements ed7 {
        public final i a;
        public final boolean b;
        public final BaseResponse c;

        public c(i iVar, boolean z, BaseResponse baseResponse) {
            this.a = iVar;
            this.b = z;
            this.c = baseResponse;
        }

        public static void b(i iVar) {
            if (iVar != null) {
                iVar.onRemoteSearchBegin();
            }
        }

        @Override
        public void subscribe(rc7 rc7Var) {
            final i iVar = this.a;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    LrcSearcher.c.b(iVar);
                }
            });
            if (LrcSearcher.this.d) {
                LogUtils.j("LrcSearcher", "mark: vd_audio_lyrics_search_request  = " + this.b);
                hb0.markTrackSingle("vd_audio_lyrics_search_request", "from", Integer.valueOf(this.b ? 1 : 2));
            }
            if (this.c.getData() == null) {
                rc7Var.onError(new Throwable());
                return;
            }
            LyricSearchData lyricSearchData = (LyricSearchData) this.c.getData();
            lyricSearchData.lyricList.add(lyricSearchData.sourceLink);
            rc7Var.onNext(LrcSearcher.this.c.a(new ds8(lyricSearchData.lyricList), true, LrcSearcher.this.b));
        }
    }

    public class d implements ed7 {
        public d() {
        }

        @Override
        public void subscribe(rc7 rc7Var) throws Throwable {
            String strY = LrcSearcher.this.y();
            if (TextUtils.isEmpty(strY)) {
                rc7Var.onError(new Throwable());
            } else {
                ou5 ou5Var = LrcSearcher.this.c;
                LrcSearcher lrcSearcher = LrcSearcher.this;
                rc7Var.onNext(ou5Var.a(new l22(lrcSearcher.n(lrcSearcher.z(strY))), true, LrcSearcher.this.b));
            }
            rc7Var.onComplete();
        }
    }

    public class e implements ed7 {
        public final String a;

        public e(String str) {
            this.a = str;
        }

        @Override
        public void subscribe(rc7 rc7Var) {
            if (TextUtils.isEmpty(this.a)) {
                LrcSearcher.this.c.b(new ArrayList(), new ArrayList(), LrcSearcher.this.b);
            } else {
                rc7Var.onNext(LrcSearcher.this.c.a(new l22(LrcSearcher.this.n(this.a.getBytes(StandardCharsets.UTF_8))), true, LrcSearcher.this.b));
            }
            rc7Var.onComplete();
        }
    }

    public class f implements ed7 {
        public final String a;
        public final boolean b;

        public f(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        @Override
        public void subscribe(rc7 rc7Var) {
            if (TextUtils.isEmpty(this.a)) {
                rc7Var.onError(new Throwable());
            } else {
                ou5 ou5Var = LrcSearcher.this.c;
                LrcSearcher lrcSearcher = LrcSearcher.this;
                rc7Var.onNext(ou5Var.a(new l22(lrcSearcher.n(lrcSearcher.z(this.a))), this.b, LrcSearcher.this.b));
            }
            rc7Var.onComplete();
        }
    }

    public static class g {
        public static final String[] f = {".srt", ".lrc", ".krc"};
        public String a;
        public int b;
        public String c;
        public long d;
        public long e;

        public boolean a() {
            for (String str : f) {
                if (this.a.endsWith(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class h {
        public mc7 a;
        public int b;

        public h(mc7 mc7Var, int i) {
            this.a = mc7Var;
            this.b = i;
        }
    }

    public interface i {
        default void onRemoteSearchBegin() {
        }

        void searchFailed(AudioItem audioItem);

        void searchSuccess(List list, AudioItem audioItem);
    }

    public static boolean m() {
        if (!pp3.z) {
            return false;
        }
        int i2 = MainApp.u;
        if (i2 == 1) {
            return c07.c(Utils.a());
        }
        if (i2 != 2) {
            return c07.b(Utils.a());
        }
        return false;
    }

    public static int w(g gVar, g gVar2) {
        long j = gVar.e;
        long j2 = gVar2.e;
        return (int) (j != j2 ? j - j2 : gVar.d - gVar2.d);
    }

    public final String A(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(Consts.DOT);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    public mc7 B(String str) {
        return mc7.h(new e(str));
    }

    public void C(i iVar) {
        AudioItem audioItem;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new h(o(), 0));
        arrayList.add(new h(p(), 1));
        arrayList.add(new h(q(), 2));
        if (m() && (audioItem = this.a) != null) {
            arrayList.add(new h(t(A(audioItem.displayName), this.a.artistName, true, iVar), 3));
        }
        D(arrayList, iVar, 0);
    }

    public void D(List list, i iVar, int i2) {
        ((h) list.get(i2)).a.d0(k29.c()).M(vb.a()).subscribe(new a(list, i2, iVar));
    }

    public void E(AudioItem audioItem) {
        if (audioItem == null || r0a.g(audioItem.data)) {
            return;
        }
        this.a = audioItem;
        this.b = audioItem.data;
    }

    public void F(boolean z) {
        this.d = z;
    }

    public final BufferedReader n(byte[] bArr) {
        return new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), StandardCharsets.UTF_8));
    }

    public mc7 o() {
        return mc7.h(new ed7() {
            @Override
            public void subscribe(rc7 rc7Var) {
                String strB = ru5.b(LrcSearcher.this.a.data);
                if (strB.isEmpty() && (strB = CacheManager.getInstance().getCache(LrcSearcher.this.a.data)) != null) {
                    ru5.c(strB, LrcSearcher.this.a.data, false);
                }
                List list = (List) fi1.c(strB, new TypeToken<List<LrcRow>>() {
                }.getType());
                if (list != null) {
                    rc7Var.onNext(list);
                } else {
                    rc7Var.onError(new Throwable());
                }
            }
        });
    }

    public mc7 p() {
        return mc7.h(new b());
    }

    public mc7 q() {
        return mc7.h(new d());
    }

    public mc7 r(String str, boolean z) {
        return mc7.h(new f(str, z));
    }

    public mc7 s() {
        return mc7.h(new ed7() {
            @Override
            public void subscribe(rc7 rc7Var) throws Throwable {
                String strB = ru5.b(LrcSearcher.this.a.data + "raw");
                if (strB.isEmpty()) {
                    strB = CacheManager.getInstance().getCache(LrcSearcher.this.a.data + "raw");
                }
                List list = (List) fi1.c(strB, new TypeToken<List<String>>() {
                }.getType());
                if (list == null || list.isEmpty()) {
                    rc7Var.onError(new Throwable());
                    return;
                }
                ru5.c(fi1.e(list), LrcSearcher.this.a.data + "raw", false);
                rc7Var.onNext(list);
            }
        });
    }

    public mc7 t(String str, String str2, final boolean z, final i iVar) {
        return ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getRemoteLyrics(str, str2).w(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.v(iVar, z, (BaseResponse) obj);
            }
        });
    }

    public void u() {
        this.c = new ou5();
    }

    public final ld7 v(i iVar, boolean z, BaseResponse baseResponse) {
        return mc7.h(new c(iVar, z, baseResponse));
    }

    public void x(String str, String str2, i iVar) {
        if (pp3.z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new h(t(str, str2, false, iVar), 3));
            D(arrayList, iVar, 0);
        }
    }

    public String y() throws Throwable {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursorQuery = Utils.a().getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_data", "date_modified", "title", "_size", "_id"}, "title = ?", new String[]{this.a.displayName}, "_size DESC");
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        g gVar = new g();
                        gVar.a = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                        gVar.b = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        gVar.c = cursorQuery.getString(cursorQuery.getColumnIndex("title"));
                        gVar.d = cursorQuery.getLong(cursorQuery.getColumnIndex("date_modified"));
                        gVar.e = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                        if (!arrayList.contains(gVar) && gVar.a()) {
                            arrayList.add(gVar);
                        }
                    } catch (Exception unused) {
                        if (cursorQuery != null) {
                        }
                        arrayList.sort(new Comparator() {
                            @Override
                            public final int compare(Object obj, Object obj2) {
                                return LrcSearcher.w((LrcSearcher.g) obj, (LrcSearcher.g) obj2);
                            }
                        });
                        if (arrayList.isEmpty()) {
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return LrcSearcher.w((LrcSearcher.g) obj, (LrcSearcher.g) obj2);
            }
        });
        if (!arrayList.isEmpty() || arrayList.get(0) == null) {
            return null;
        }
        return ((g) arrayList.get(0)).a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final byte[] z(String str) throws Throwable {
        FileInputStream fileInputStream;
        File file = new File(str);
        ?? Exists = file.exists();
        try {
            if (Exists == 0) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    if (fileInputStream.getChannel().size() == 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        return null;
                    }
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    try {
                        fileInputStream.close();
                        return bArr;
                    } catch (IOException unused2) {
                        return null;
                    }
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return null;
                }
            } catch (IOException e3) {
                e = e3;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                Exists = 0;
                if (Exists != 0) {
                    try {
                        Exists.close();
                    } catch (IOException unused4) {
                        return null;
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
