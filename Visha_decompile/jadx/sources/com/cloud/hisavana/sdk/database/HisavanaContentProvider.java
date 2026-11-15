package com.cloud.hisavana.sdk.database;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.sqlite.db.SimpleSQLiteQuery;
import com.cloud.hisavana.abtestkit.db.ABContentProvider;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.gx8;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.kmb;
import defpackage.ky5;
import defpackage.pid;
import defpackage.tba;
import defpackage.ufd;
import defpackage.ul4;
import defpackage.una;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.io.IOUtils;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 52\u00020\u0001:\u00016B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006JM\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\b\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J1\u0010\u0019\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ;\u0010\u001b\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\f\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00042\u0010\u0010\"\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002¢\u0006\u0004\b#\u0010$J'\u0010&\u001a\b\u0012\u0004\u0012\u00020!0%2\u0010\u0010\"\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002¢\u0006\u0004\b&\u0010'J!\u0010)\u001a\u00020\u00042\u0010\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002¢\u0006\u0004\b)\u0010$J!\u0010+\u001a\u00020\u00042\u0010\u0010*\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010 H\u0002¢\u0006\u0004\b+\u0010$J!\u0010-\u001a\u00020\u00042\u0010\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u00010 H\u0002¢\u0006\u0004\b-\u0010$J!\u0010.\u001a\u00020\u00042\u0010\u0010*\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u00010 H\u0002¢\u0006\u0004\b.\u0010$J\u000f\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b0\u0010\u0003R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00067"}, d2 = {"Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;", "Landroid/content/ContentProvider;", MethodDecl.initName, "()V", "", "onCreate", "()Z", "Landroid/net/Uri;", "uri", "", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", "query", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", ICode.CALL.CALL_KEY_CONTENT, "f", "(Ljava/lang/String;)Landroid/net/Uri;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTOList", "k", "(Ljava/util/List;)Z", "", GslbInterceptor.HEADER_KEY_GSLB, "(Ljava/util/List;)Ljava/util/List;", "insertList", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "updateList", CmcdData.STREAM_TYPE_LIVE, "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;", "d", CmcdData.OBJECT_TYPE_MANIFEST, "Lzfb;", "j", "Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;", "b", "Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;", "database", "c", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HisavanaContentProvider extends ContentProvider {

    public static final Companion INSTANCE = new Companion(null);
    public static String d;
    public static UriMatcher e;

    public HSRoomDatabase database;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            if (HisavanaContentProvider.e == null) {
                HisavanaContentProvider.d = ul4.a().getPackageName() + ".HisavanaContentProvider";
                HisavanaContentProvider.e = new UriMatcher(-1);
                UriMatcher uriMatcher = HisavanaContentProvider.e;
                if (uriMatcher != null) {
                    uriMatcher.addURI(HisavanaContentProvider.d, "config", 100);
                }
                UriMatcher uriMatcher2 = HisavanaContentProvider.e;
                if (uriMatcher2 != null) {
                    uriMatcher2.addURI(HisavanaContentProvider.d, "ad_data", 200);
                }
                ABContentProvider.initUriMatcher(HisavanaContentProvider.e, HisavanaContentProvider.d);
                gx8.b(HisavanaContentProvider.e, HisavanaContentProvider.d);
            }
        }

        public Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class b extends TypeToken<List<? extends AdsDTO>> {
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$c", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class c extends TypeToken<List<? extends ConfigCodeSeatDTO>> {
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$d", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class d extends TypeToken<List<? extends ConfigCodeSeatDTO>> {
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$e", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class e extends TypeToken<List<? extends AdsDTO>> {
    }

    public static final void h() {
        INSTANCE.a();
    }

    public final boolean d(List insertList) {
        List listK;
        tba tbaVarL;
        if (ikd.c()) {
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("insertOrUpdateConfig ");
            sb.append(insertList != null ? Integer.valueOf(insertList.size()) : null);
            ikdVarB.d("HisavanaContentProvider", sb.toString());
        }
        if (insertList == null || (listK = i81.l0(insertList)) == null) {
            listK = y71.k();
        }
        if (listK.isEmpty()) {
            return false;
        }
        try {
            j();
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null) {
                return false;
            }
            tba tbaVarL2 = hSRoomDatabase.l();
            if (tbaVarL2 != null) {
                tbaVarL2.a();
            }
            List<kmb> listA = kmb.c.a(listK);
            HSRoomDatabase hSRoomDatabase2 = this.database;
            if (hSRoomDatabase2 != null && (tbaVarL = hSRoomDatabase2.l()) != null) {
                tbaVarL.b(listA);
            }
            return true;
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", "clearAndInsertConfig fail " + Log.getStackTraceString(e2));
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00aa, code lost:
    
        if (r0.intValue() != 301) goto L42;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        y45.j(uri, "uri");
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("delete invalid uri ");
        sb.append(uri);
        sb.append(", ");
        sb.append(selection);
        sb.append(", ");
        String string = Arrays.toString(selectionArgs);
        y45.i(string, "toString(...)");
        sb.append(string);
        ikdVarB.d("HisavanaContentProvider", sb.toString());
        if (e == null) {
            return -1;
        }
        try {
            j();
            UriMatcher uriMatcher = e;
            Integer numValueOf = uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null;
            if (numValueOf != null && numValueOf.intValue() == 100) {
                tba tbaVarL = HSRoomDatabase.t().l();
                if (selection == null) {
                    selection = "";
                }
                tbaVarL.b(new SimpleSQLiteQuery(selection, selectionArgs));
                return 0;
            }
            if (numValueOf != null && numValueOf.intValue() == 200) {
                ufd ufdVarB = HSRoomDatabase.t().b();
                if (selection == null) {
                    selection = "";
                }
                ufdVarB.b(new SimpleSQLiteQuery(selection, selectionArgs));
                return 0;
            }
            if (numValueOf == null || numValueOf.intValue() != 300) {
                if (numValueOf != null) {
                }
                if (numValueOf != null && numValueOf.intValue() == 400) {
                    return gx8.a.a(this.database, selection, selectionArgs);
                }
                return 0;
            }
            return ABContentProvider.delete(uri, selection, selectionArgs);
        } catch (SQLException e2) {
            ikd.b().e("HisavanaContentProvider", "delete sqlException: " + e2.getMessage());
            return -1;
        } catch (Exception e3) {
            ikd.b().e("HisavanaContentProvider", "delete exception: " + e3.getMessage());
            return -1;
        }
    }

    public final Uri f(String content) {
        Uri uri = Uri.parse("content://" + d + IOUtils.DIR_SEPARATOR_UNIX + content);
        y45.i(uri, "parse(...)");
        return uri;
    }

    public final List g(List adsDTOList) {
        ArrayList arrayList;
        ufd ufdVarB;
        List<pid> listC;
        if (adsDTOList == null || adsDTOList.isEmpty()) {
            ikd.b().d("HisavanaContentProvider", "ad list is null or empty");
            return new ArrayList();
        }
        ArrayList<String> arrayList2 = new ArrayList();
        Iterator it = adsDTOList.iterator();
        String codeSeatId = "";
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                codeSeatId = adsDTO.getCodeSeatId();
                y45.i(codeSeatId, "getCodeSeatId(...)");
                String adCreativeId = adsDTO.getAdCreativeId();
                y45.i(adCreativeId, "getAdCreativeId(...)");
                arrayList2.add(adCreativeId);
            }
        }
        if (j1a.o0(codeSeatId) || arrayList2.isEmpty()) {
            return new ArrayList();
        }
        StringBuilder sb = new StringBuilder("SELECT * FROM adList_room WHERE codeSeatId = ?  AND ad_creative_id IN (");
        for (String str : arrayList2) {
            sb.append("?,");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(")");
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(codeSeatId);
        arrayList3.addAll(arrayList2);
        if (ikd.c()) {
            ikd.b().d("HisavanaContentProvider", "getQueryAdsByAdIds " + ((Object) sb) + ", " + arrayList3);
        }
        try {
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null || (ufdVarB = hSRoomDatabase.b()) == null || (listC = ufdVarB.c(arrayList2)) == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(z71.v(listC, 10));
                for (pid pidVar : listC) {
                    AdsDTO adsDTO2 = (AdsDTO) GsonUtil.a(pidVar != null ? pidVar.a() : null, AdsDTO.class);
                    adsDTO2.setTableId(pidVar != null ? pidVar.o() : 0);
                    arrayList.add(adsDTO2);
                }
            }
        } catch (Exception unused) {
            arrayList = new ArrayList();
        }
        return i81.e1(arrayList);
    }

    @Override
    public String getType(Uri uri) {
        y45.j(uri, "uri");
        return null;
    }

    public final boolean i(List insertList) {
        List listK;
        ufd ufdVarB;
        if (insertList == null || (listK = i81.l0(insertList)) == null) {
            listK = y71.k();
        }
        if (listK.isEmpty()) {
            ikd.b().d("HisavanaContentProvider", "insertAdsList adList is null or empty");
            return false;
        }
        if (ikd.c()) {
            ikd.b().d("HisavanaContentProvider", "insertAdsList list: " + listK.size());
        }
        try {
            j();
            if (this.database == null) {
                return false;
            }
            long jC = una.c(System.currentTimeMillis());
            Iterator it = listK.iterator();
            while (it.hasNext()) {
                ((AdsDTO) it.next()).setShowDate(jC);
            }
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null || (ufdVarB = hSRoomDatabase.b()) == null) {
                return true;
            }
            ufdVarB.b((List<pid>) pid.i.a(listK));
            return true;
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", "insert ads fail " + e2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6 A[Catch: Exception -> 0x0055, TryCatch #0 {Exception -> 0x0055, blocks: (B:13:0x0045, B:15:0x004c, B:38:0x00ba, B:45:0x00ce, B:47:0x00d4, B:57:0x010a, B:51:0x00de, B:53:0x00e6, B:43:0x00c6, B:29:0x008b, B:31:0x0093, B:33:0x00a1, B:21:0x005c, B:23:0x0064, B:25:0x0072), top: B:63:0x0045 }] */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cc, code lost:
    
        if (r2.intValue() == 301) goto L45;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Uri insert(Uri uri, ContentValues values) {
        String str;
        boolean zD;
        y45.j(uri, "uri");
        if (e == null || values == null) {
            ikd.b().d("HisavanaContentProvider", "uriMatcher or values is null");
            return f("error/null_input");
        }
        if (ikd.c()) {
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("insert ");
            sb.append(uri);
            sb.append(' ');
            UriMatcher uriMatcher = e;
            sb.append(uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null);
            ikdVarB.d("HisavanaContentProvider", sb.toString());
        }
        try {
            j();
            UriMatcher uriMatcher2 = e;
            Integer numValueOf = uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null;
            boolean z = false;
            if (numValueOf != null && numValueOf.intValue() == 100) {
                str = "config";
                String asString = values.getAsString("CloudConfig");
                if (!TextUtils.isEmpty(asString)) {
                    zD = d((List) GsonUtil.b(asString, new c().getType()));
                    z = zD;
                }
            } else {
                if (numValueOf == null || numValueOf.intValue() != 200) {
                    if (numValueOf == null) {
                        if (numValueOf != null) {
                        }
                        if (numValueOf != null) {
                            str = "click_freq";
                            zD = gx8.a.c(this.database, values);
                        }
                        ikd.b().d("HisavanaContentProvider", "insert uri is wrong");
                        return f("error/invalid_uri");
                    }
                    if (numValueOf.intValue() != 300) {
                        if (numValueOf != null) {
                        }
                        if (numValueOf != null && numValueOf.intValue() == 400) {
                            str = "click_freq";
                            zD = gx8.a.c(this.database, values);
                        }
                        ikd.b().d("HisavanaContentProvider", "insert uri is wrong");
                        return f("error/invalid_uri");
                    }
                    Uri uriInsert = ABContentProvider.insert(uri, values);
                    return uriInsert == null ? ABContentProvider.INSTANCE.getUri("error/invalid_uri") : uriInsert;
                }
                str = "ad_data";
                String asString2 = values.getAsString("AdsData");
                if (!TextUtils.isEmpty(asString2)) {
                    zD = k((List) GsonUtil.b(asString2, new b().getType()));
                }
                z = zD;
            }
            return f(str + IOUtils.DIR_SEPARATOR_UNIX + z);
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", Log.getStackTraceString(e2));
            return f("error/exception");
        }
    }

    public final void j() {
        if (this.database == null) {
            this.database = HSRoomDatabase.t();
        }
    }

    public final boolean k(List adsDTOList) {
        List<AdsDTO> listK;
        if (adsDTOList == null || (listK = i81.l0(adsDTOList)) == null) {
            listK = y71.k();
        }
        if (listK.isEmpty()) {
            ikd.b().d("HisavanaContentProvider", "insertOrUpdateAds list is null or empty");
            return false;
        }
        if (ikd.c()) {
            ikd.b().d("HisavanaContentProvider", "insertOrUpdateAds list: " + listK.size());
        }
        List listG = g(listK);
        ArrayList arrayList = new ArrayList();
        if (listG.isEmpty()) {
            return i(adsDTOList);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(listG, 10)), 16));
        for (Object obj : listG) {
            AdsDTO adsDTO = (AdsDTO) obj;
            linkedHashMap.put(new Triple(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId(), Boolean.valueOf(adsDTO.isOfflineAd())), obj);
        }
        for (AdsDTO adsDTO2 : listK) {
            AdsDTO adsDTO3 = (AdsDTO) linkedHashMap.get(new Triple(adsDTO2.getAdCreativeId(), adsDTO2.getCodeSeatId(), Boolean.valueOf(adsDTO2.isOfflineAd())));
            if (adsDTO3 != null) {
                adsDTO2.setShowDate(adsDTO3.getShowDate());
                adsDTO2.setShowNum(adsDTO3.getShowNum());
                adsDTO2.setTableId(adsDTO3.getTableId());
                arrayList.add(adsDTO2);
            }
        }
        boolean zL = l(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : listK) {
            if (!arrayList.contains((AdsDTO) obj2)) {
                arrayList2.add(obj2);
            }
        }
        return zL && i(arrayList2);
    }

    public final boolean l(List updateList) {
        List listK;
        if (updateList == null || (listK = i81.l0(updateList)) == null) {
            listK = y71.k();
        }
        if (listK.isEmpty()) {
            ikd.b().d("HisavanaContentProvider", "updateAdsList list is empty ");
            return false;
        }
        if (ikd.c()) {
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("updateAdsList ");
            sb.append(updateList != null ? Integer.valueOf(updateList.size()) : null);
            ikdVarB.d("HisavanaContentProvider", sb.toString());
        }
        try {
            j();
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null) {
                return false;
            }
            ufd ufdVarB = hSRoomDatabase.b();
            Log.d("HisavanaContentProvider", "updateAdsList: " + (ufdVarB != null ? Integer.valueOf(ufdVarB.a((List<pid>) pid.i.a(listK))) : null));
            return true;
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", "insert Config fail " + Log.getStackTraceString(e2));
            return false;
        }
    }

    public final boolean m(List updateList) {
        List listL0;
        tba tbaVarL;
        if (updateList == null || (listL0 = i81.l0(updateList)) == null || listL0.isEmpty()) {
            return false;
        }
        try {
            j();
            if (this.database == null) {
                return false;
            }
            List<kmb> listA = kmb.c.a(listL0);
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null || (tbaVarL = hSRoomDatabase.l()) == null) {
                return true;
            }
            tbaVarL.a(listA);
            return true;
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", "update config fail" + Log.getStackTraceString(e2));
            return false;
        }
    }

    @Override
    public boolean onCreate() {
        try {
            Context context = getContext();
            Objects.requireNonNull(context);
            ul4.k(context);
            if (ul4.a() == null) {
                return false;
            }
            INSTANCE.a();
            return false;
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", "HSCoreUtil set context failed " + Log.getStackTraceString(e2));
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0085, code lost:
    
        if (r1.intValue() != 302) goto L47;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Cursor cursorA;
        y45.j(uri, "uri");
        try {
            j();
            if (this.database == null) {
                return null;
            }
            UriMatcher uriMatcher = e;
            Integer numValueOf = uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null;
            if (numValueOf == null || numValueOf.intValue() != 100) {
                if (numValueOf != null && numValueOf.intValue() == 200) {
                    ufd ufdVarB = HSRoomDatabase.t().b();
                    if (selection == null) {
                        selection = "";
                    }
                    cursorA = ufdVarB.a(new SimpleSQLiteQuery(selection, selectionArgs));
                }
                if (numValueOf == null || numValueOf.intValue() != 300) {
                    if (numValueOf == null || numValueOf.intValue() != 301) {
                        if (numValueOf != null) {
                        }
                        if (numValueOf != null && numValueOf.intValue() == 400) {
                            return gx8.a.d(this.database, selection, selectionArgs);
                        }
                        return null;
                    }
                }
                return ABContentProvider.query(uri, projection, selection, selectionArgs, sortOrder);
            }
            tba tbaVarL = HSRoomDatabase.t().l();
            if (selection == null) {
                selection = "";
            }
            cursorA = tbaVarL.a(new SimpleSQLiteQuery(selection, selectionArgs));
            return cursorA;
        } catch (Exception e2) {
            ikd.b().e("HisavanaContentProvider", Log.getStackTraceString(e2));
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c2, code lost:
    
        if (r0.intValue() != 301) goto L45;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        boolean zL;
        y45.j(uri, "uri");
        if (e == null || values == null) {
            ikd.b().d("HisavanaContentProvider", "uriMatcher or values is null");
            return -1;
        }
        ikd.b().d("HisavanaContentProvider", "update " + values);
        try {
            j();
            UriMatcher uriMatcher = e;
            Integer numValueOf = uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null;
            if (numValueOf == null || numValueOf.intValue() != 100) {
                if (numValueOf != null && numValueOf.intValue() == 200) {
                    String asString = values.getAsString("AdsData");
                    y45.i(asString, "getAsString(...)");
                    if (asString.length() == 0) {
                        return -1;
                    }
                    Type type = new e().getType();
                    y45.i(type, "getType(...)");
                    zL = l((List) GsonUtil.b(asString, type));
                }
                if (numValueOf == null || numValueOf.intValue() != 300) {
                    if (numValueOf != null) {
                    }
                    ikd.b().d("HisavanaContentProvider", "update uri is wrong");
                    return -1;
                }
                return ABContentProvider.update(uri, values, selection, selectionArgs);
            }
            String asString2 = values.getAsString("CloudConfig");
            y45.i(asString2, "getAsString(...)");
            if (asString2.length() == 0) {
                return -1;
            }
            Type type2 = new d().getType();
            y45.i(type2, "getType(...)");
            zL = m((List) GsonUtil.b(asString2, type2));
            return zL ? 1 : 0;
        } catch (SQLException e2) {
            ikd.b().e("HisavanaContentProvider", "update sqlException: " + e2.getMessage());
            return -1;
        } catch (Exception e3) {
            ikd.b().e("HisavanaContentProvider", "update exception: " + e3.getMessage());
            return -1;
        }
    }
}
