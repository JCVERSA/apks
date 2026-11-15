package com.cloud.hisavana.abtestkit.db;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import androidx.room.Room;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.transsion.livecaption.constant.ICode;
import defpackage.ja1;
import defpackage.jjd;
import defpackage.nod;
import defpackage.nvd;
import defpackage.pod;
import defpackage.ul4;
import defpackage.vl4;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.apache.commons.io.IOUtils;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJU\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u000e\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0006\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0012\u0010\u0010\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0006\u0018\u00010\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J5\u0010\u001a\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0012\u0010\u0010\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0006\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ?\u0010\u001c\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0012\u0010\u0010\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0006\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001e\u0010\u0003J\u0015\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0006¢\u0006\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010#R\u0014\u0010%\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010&R\u0014\u0010(\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010#R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010)R\u0018\u0010+\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;", "", MethodDecl.initName, "()V", "Landroid/content/UriMatcher;", "uriMatcher", "", "authorities", "Lzfb;", "initUriMatcher", "(Landroid/content/UriMatcher;Ljava/lang/String;)V", "Landroid/net/Uri;", "uri", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", "query", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "openDB", ICode.CALL.CALL_KEY_CONTENT, "getUri", "(Ljava/lang/String;)Landroid/net/Uri;", "AB_PATH", "Ljava/lang/String;", "LOCAL_AB_PATH", "AB_SUCCESS", "I", "LOCAL_AB_SUCCESS", "LOCAL_AB_BY_VERSION_CODE_SUCCESS", "Landroid/content/UriMatcher;", "Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;", "database", "Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ABContentProvider {
    public static final String AB_PATH = "ab_data";
    public static final int AB_SUCCESS = 300;
    public static final ABContentProvider INSTANCE = new ABContentProvider();
    public static final int LOCAL_AB_BY_VERSION_CODE_SUCCESS = 302;
    public static final String LOCAL_AB_PATH = "local_ab_data";
    public static final int LOCAL_AB_SUCCESS = 301;
    private static String authorities;
    private static ABRoomDatabase database;
    private static UriMatcher uriMatcher;

    private ABContentProvider() {
    }

    public static final int delete(Uri uri, String selection, String[] selectionArgs) {
        pod podVarB;
        jjd jjdVarA;
        y45.j(uri, "uri");
        if (uriMatcher == null) {
            ja1.Log().d("ABTEST", "delete uriMatcher is null");
            return -1;
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ja1 ja1VarLog = ja1.Log();
            StringBuilder sb = new StringBuilder("delete uri = ");
            sb.append(uri);
            sb.append(" and match result = ");
            UriMatcher uriMatcher2 = uriMatcher;
            sb.append(uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null);
            ja1VarLog.i("ABTEST", sb.toString());
        }
        try {
            INSTANCE.openDB();
            if (database == null) {
                return -1;
            }
            UriMatcher uriMatcher3 = uriMatcher;
            Integer numValueOf = uriMatcher3 != null ? Integer.valueOf(uriMatcher3.match(uri)) : null;
            if (numValueOf != null && numValueOf.intValue() == 300) {
                ABRoomDatabase aBRoomDatabase = database;
                if (aBRoomDatabase == null || (podVarB = aBRoomDatabase.b()) == null) {
                    return 0;
                }
                podVarB.a();
                return 0;
            }
            if (numValueOf != null && numValueOf.intValue() == 301) {
                ABRoomDatabase aBRoomDatabase2 = database;
                if (aBRoomDatabase2 == null || (jjdVarA = aBRoomDatabase2.a()) == null) {
                    return 0;
                }
                jjdVarA.a();
                return 0;
            }
            ja1.Log().d("ABTEST", "delete uri is wrong");
            return -1;
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "delete fail, reason = " + e.getMessage());
            return -1;
        }
    }

    public static final void initUriMatcher(UriMatcher uriMatcher2, String authorities2) {
        uriMatcher = uriMatcher2;
        authorities = authorities2;
        if (uriMatcher2 != null) {
            uriMatcher2.addURI(authorities2, AB_PATH, 300);
        }
        if (uriMatcher2 != null) {
            uriMatcher2.addURI(authorities2, LOCAL_AB_PATH, 301);
        }
        if (uriMatcher2 != null) {
            uriMatcher2.addURI(authorities2, "local_ab_data/#", 302);
        }
    }

    public static final Uri insert(Uri uri, ContentValues values) {
        String str;
        ABRoomDatabase aBRoomDatabase;
        pod podVarB;
        jjd jjdVarA;
        jjd jjdVarA2;
        y45.j(uri, "uri");
        if (uriMatcher == null || values == null) {
            ja1.Log().d("ABTEST", "insertOrUpdate uriMatcher or values is null");
            return INSTANCE.getUri("error/null_input");
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ja1 ja1VarLog = ja1.Log();
            StringBuilder sb = new StringBuilder("insertOrUpdate uri = ");
            sb.append(uri);
            sb.append(" and match result = ");
            UriMatcher uriMatcher2 = uriMatcher;
            sb.append(uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null);
            ja1VarLog.i("ABTEST", sb.toString());
        }
        try {
            ABContentProvider aBContentProvider = INSTANCE;
            aBContentProvider.openDB();
            if (database == null) {
                return null;
            }
            UriMatcher uriMatcher3 = uriMatcher;
            Integer numValueOf = uriMatcher3 != null ? Integer.valueOf(uriMatcher3.match(uri)) : null;
            boolean z = false;
            if (numValueOf == null || numValueOf.intValue() != 300) {
                if (numValueOf != null && numValueOf.intValue() == 301) {
                    str = LOCAL_AB_PATH;
                    String asString = values.getAsString("localABData");
                    if (asString != null && asString.length() != 0) {
                        nod nodVar = (nod) GsonUtil.a(asString, nod.class);
                        if (nodVar != null) {
                            ABRoomDatabase aBRoomDatabase2 = database;
                            if (aBRoomDatabase2 != null && (jjdVarA2 = aBRoomDatabase2.a()) != null) {
                                jjdVarA2.a();
                            }
                            ABRoomDatabase aBRoomDatabase3 = database;
                            if (aBRoomDatabase3 != null && (jjdVarA = aBRoomDatabase3.a()) != null) {
                                jjdVarA.b(nodVar);
                            }
                        }
                        ja1.Log().i("ABTEST", "local AB insertOrUpdate success");
                        z = true;
                    }
                }
                ja1.Log().d("ABTEST", "insertOrUpdate uri is wrong");
                return aBContentProvider.getUri("error/invalid_uri");
            }
            str = AB_PATH;
            String asString2 = values.getAsString("abData");
            if (asString2 != null && asString2.length() != 0) {
                nvd nvdVar = (nvd) GsonUtil.a(asString2, nvd.class);
                if (nvdVar != null && (aBRoomDatabase = database) != null && (podVarB = aBRoomDatabase.b()) != null) {
                    podVarB.a(nvdVar);
                }
                ja1.Log().i("ABTEST", "insertOrUpdate success");
                z = true;
            }
            return aBContentProvider.getUri(str + IOUtils.DIR_SEPARATOR_UNIX + z);
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "insertOrUpdate fail, reason = " + e.getMessage());
            return INSTANCE.getUri("error/exception");
        }
    }

    private final void openDB() {
        SupportSQLiteOpenHelper openHelper;
        SupportSQLiteDatabase readableDatabase;
        if (database == null) {
            ABRoomDatabase aBRoomDatabase = ABRoomDatabase.a;
            if (ABRoomDatabase.a == null) {
                synchronized (ABRoomDatabase.class) {
                    try {
                        if (ABRoomDatabase.a == null) {
                            try {
                                Context contextA = ul4.a();
                                y45.i(contextA, "getContext(...)");
                                ABRoomDatabase.a = (ABRoomDatabase) Room.databaseBuilder(contextA, ABRoomDatabase.class, vl4.b("hisavana_ab_data") + ".db").fallbackToDestructiveMigrationOnDowngrade().fallbackToDestructiveMigration().build();
                                if (Log.isLoggable("ADSDK", 3)) {
                                    ja1 ja1VarLog = ja1.Log();
                                    StringBuilder sb = new StringBuilder("current database version is: ");
                                    ABRoomDatabase aBRoomDatabase2 = ABRoomDatabase.a;
                                    sb.append((aBRoomDatabase2 == null || (openHelper = aBRoomDatabase2.getOpenHelper()) == null || (readableDatabase = openHelper.getReadableDatabase()) == null) ? null : Integer.valueOf(readableDatabase.getVersion()));
                                    ja1VarLog.i("ABTEST", sb.toString());
                                }
                            } catch (Exception e) {
                                if (Log.isLoggable("ADSDK", 3)) {
                                    ja1.Log().w("ABTEST", "create room database failed: " + e.getMessage());
                                }
                                Context contextA2 = ul4.a();
                                ABRoomDatabase aBRoomDatabase3 = ABRoomDatabase.a;
                                contextA2.deleteDatabase(vl4.b("hisavana_ab_data") + ".db");
                                Context contextA3 = ul4.a();
                                y45.i(contextA3, "getContext(...)");
                                ABRoomDatabase.a = (ABRoomDatabase) Room.databaseBuilder(contextA3, ABRoomDatabase.class, vl4.b("hisavana_ab_data") + ".db").fallbackToDestructiveMigrationOnDowngrade().fallbackToDestructiveMigration().build();
                            }
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            database = ABRoomDatabase.a;
        }
    }

    public static final Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        pod podVarB;
        Cursor cursorB;
        jjd jjdVarA;
        y45.j(uri, "uri");
        if (uriMatcher == null) {
            ja1.Log().d("ABTEST", "query uriMatcher is null");
            return null;
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ja1 ja1VarLog = ja1.Log();
            StringBuilder sb = new StringBuilder("query uri = ");
            sb.append(uri);
            sb.append(" and match result = ");
            UriMatcher uriMatcher2 = uriMatcher;
            sb.append(uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null);
            ja1VarLog.i("ABTEST", sb.toString());
        }
        try {
            INSTANCE.openDB();
            if (database == null) {
                return null;
            }
            UriMatcher uriMatcher3 = uriMatcher;
            Integer numValueOf = uriMatcher3 != null ? Integer.valueOf(uriMatcher3.match(uri)) : null;
            if (numValueOf != null && numValueOf.intValue() == 300) {
                ABRoomDatabase aBRoomDatabase = database;
                if (aBRoomDatabase == null || (podVarB = aBRoomDatabase.b()) == null) {
                    return null;
                }
                cursorB = podVarB.b();
            } else {
                if (numValueOf == null || numValueOf.intValue() != 302) {
                    return null;
                }
                long id = ContentUris.parseId(uri);
                ABRoomDatabase aBRoomDatabase2 = database;
                if (aBRoomDatabase2 == null || (jjdVarA = aBRoomDatabase2.a()) == null) {
                    return null;
                }
                cursorB = jjdVarA.a(id);
            }
            return cursorB;
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "query db fail: " + e.getMessage());
            return null;
        }
    }

    public static final int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        pod podVarB;
        jjd jjdVarA;
        y45.j(uri, "uri");
        int i = -1;
        if (uriMatcher == null || values == null) {
            ja1.Log().d("ABTEST", "uriMatcher or values is null");
            return -1;
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ja1.Log().i("ABTEST", "update values = " + values);
        }
        try {
            INSTANCE.openDB();
            if (database == null) {
                return -1;
            }
            UriMatcher uriMatcher2 = uriMatcher;
            Integer numValueOf = uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null;
            try {
                if (numValueOf != null && numValueOf.intValue() == 300) {
                    String asString = values.getAsString("abData");
                    if (asString != null && asString.length() != 0) {
                        nvd nvdVar = (nvd) GsonUtil.a(asString, nvd.class);
                        if (nvdVar != null) {
                            ABRoomDatabase aBRoomDatabase = database;
                            if (aBRoomDatabase != null && (podVarB = aBRoomDatabase.b()) != null) {
                                podVarB.b(nvdVar);
                            }
                            return 1;
                        }
                        return 0;
                    }
                    return -1;
                }
                if (numValueOf == null || numValueOf.intValue() != 301) {
                    ja1.Log().i("ABTEST", "update uri is wrong");
                    return -1;
                }
                String asString2 = values.getAsString("localABData");
                if (asString2 != null && asString2.length() != 0) {
                    nod nodVar = (nod) GsonUtil.a(asString2, nod.class);
                    if (nodVar != null) {
                        ABRoomDatabase aBRoomDatabase2 = database;
                        if (aBRoomDatabase2 != null && (jjdVarA = aBRoomDatabase2.a()) != null) {
                            jjdVarA.a(nodVar);
                        }
                        return 1;
                    }
                    return 0;
                }
                return -1;
            } catch (Exception e) {
                e = e;
                i = 1;
                ja1.Log().w("ABTEST", "update fail, reason = " + e.getMessage());
                return i;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final Uri getUri(String content) {
        y45.j(content, ICode.CALL.CALL_KEY_CONTENT);
        Uri uri = Uri.parse("content://" + authorities + IOUtils.DIR_SEPARATOR_UNIX + content);
        y45.i(uri, "parse(this)");
        return uri;
    }
}
