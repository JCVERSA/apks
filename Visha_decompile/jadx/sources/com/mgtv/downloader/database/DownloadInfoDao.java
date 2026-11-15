package com.mgtv.downloader.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import com.transsion.push.PushConstants;
import defpackage.hb0;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

public class DownloadInfoDao extends AbstractDao<c, Long> {
    public static final String TABLENAME = "DOWNLOAD_INFO";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, String.class, "videoId", false, "VIDEO_ID");
        public static final Property c = new Property(2, String.class, "image", false, "IMAGE");
        public static final Property d = new Property(3, String.class, "name", false, "NAME");
        public static final Property e = new Property(4, String.class, "videoUrl", false, "VIDEO_URL");
        public static final Property f = new Property(5, String.class, Progress.FILE_PATH, false, "FILE_PATH");
        public static final Property g = new Property(6, Long.class, "completeSize", false, "COMPLETE_SIZE");
        public static final Property h = new Property(7, Long.class, Progress.TOTAL_SIZE, false, "TOTAL_SIZE");
        public static final Property i = new Property(8, Integer.class, "status", false, "STATUS");
        public static final Property j = new Property(9, Long.class, "operateTime", false, "OPERATE_TIME");
        public static final Property k = new Property(10, Integer.class, "speed", false, "SPEED");
        public static final Property l = new Property(11, String.class, "idc", false, "IDC");
        public static final Property m = new Property(12, String.class, "nid", false, "NID");
        public static final Property n = new Property(13, String.class, "domains", false, "DOMAINS");
        public static final Property o = new Property(14, Integer.class, "rootId", false, "ROOT_ID");
        public static final Property p = new Property(15, Integer.class, "collectionId", false, "COLLECTION_ID");
        public static final Property q = new Property(16, String.class, "collectionName", false, "COLLECTION_NAME");
        public static final Property r = new Property(17, String.class, "collectionImage", false, "COLLECTION_IMAGE");
        public static final Property s = new Property(18, String.class, "clipId", false, "CLIP_ID");
        public static final Property t = new Property(19, String.class, "plId", false, "PL_ID");
        public static final Property u = new Property(20, Integer.class, "dataType", false, "DATA_TYPE");
        public static final Property v = new Property(21, Integer.class, "videoIndex", false, "VIDEO_INDEX");
        public static final Property w = new Property(22, Integer.class, hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, false, "DEFINITION");
        public static final Property x = new Property(23, String.class, "freeUrl", false, "FREEURL");
        public static final Property y = new Property(24, String.class, "seriesId", false, "SERIESID");
        public static final Property z = new Property(25, String.class, "fileSize", false, "FILE_SIZE");
        public static final Property A = new Property(26, String.class, "playPriority", false, "PLAY_PRIORITY");
        public static final Property B = new Property(27, String.class, "fileMD5", false, "FILE_MD5");
        public static final Property C = new Property(28, String.class, "nname", false, "NNAME");
        public static final Property D = new Property(29, String.class, "ntitle", false, "NTITLE");
        public static final Property E = new Property(30, String.class, "fname", false, "FNAME");
        public static final Property F = new Property(31, String.class, "ndesc", false, "NDESC");
        public static final Property G = new Property(32, Integer.class, "mediaType", false, "MEDIA_TYPE");
        public static final Property H = new Property(33, String.class, "fileID", false, "FILE_ID");
        public static final Property I = new Property(34, Integer.class, "duration", false, "DURATION");
        public static final Property J = new Property(35, Integer.class, "watchTime", false, "WATCH_TIME");
        public static final Property K = new Property(36, String.class, "fileMD5Calc", false, "FILE_MD5_CAL");
        public static final Property L = new Property(37, String.class, PushConstants.PROVIDER_FIELD_SDK_VERSION, false, "SDK_VERSION");
        public static final Property M = new Property(38, String.class, "contentId", false, "CONTENTID");
        public static final Property N = new Property(39, String.class, "priority", false, "PRIORITY");
        public static final Property O = new Property(40, String.class, "limitSpeed", false, "LIMITSPEED");
        public static final Property P = new Property(41, String.class, "at", false, "AT");
        public static final Property Q = new Property(42, String.class, "extra", false, "EXTRA");
        public static final Property R = new Property(43, String.class, "cxId", false, "CXID");
        public static final Property S = new Property(44, String.class, "channel", false, "CHANNEL");
        public static final Property T = new Property(45, String.class, "fileSourceType", false, "FILESOURCETYPE");
        public static final Property U = new Property(46, String.class, "rType", false, "RTYPE");
        public static final Property V = new Property(47, String.class, "openId", false, "OPENID");
    }

    public DownloadInfoDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"DOWNLOAD_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"VIDEO_ID\" TEXT,\"IMAGE\" TEXT,\"NAME\" TEXT,\"VIDEO_URL\" TEXT,\"FILE_PATH\" TEXT,\"COMPLETE_SIZE\" INTEGER,\"TOTAL_SIZE\" INTEGER,\"STATUS\" INTEGER,\"OPERATE_TIME\" INTEGER,\"SPEED\" INTEGER,\"IDC\" TEXT,\"NID\" TEXT,\"DOMAINS\" TEXT,\"ROOT_ID\" INTEGER,\"COLLECTION_ID\" INTEGER,\"COLLECTION_NAME\" TEXT,\"COLLECTION_IMAGE\" TEXT,\"CLIP_ID\" TEXT,\"PL_ID\" TEXT,\"DATA_TYPE\" INTEGER,\"VIDEO_INDEX\" INTEGER,\"DEFINITION\" INTEGER,\"FREEURL\" TEXT,\"SERIESID\" TEXT,\"FILE_SIZE\" TEXT,\"PLAY_PRIORITY\" TEXT,\"FILE_MD5\" TEXT,\"NNAME\" TEXT,\"NTITLE\" TEXT,\"FNAME\" TEXT,\"NDESC\" TEXT,\"MEDIA_TYPE\" INTEGER,\"FILE_ID\" TEXT,\"DURATION\" INTEGER,\"WATCH_TIME\" INTEGER,\"FILE_MD5_CAL\" TEXT,\"SDK_VERSION\" TEXT,\"CONTENTID\" TEXT,\"PRIORITY\" TEXT,\"LIMITSPEED\" TEXT,\"AT\" TEXT,\"EXTRA\" TEXT,\"CXID\" TEXT,\"CHANNEL\" TEXT,\"FILESOURCETYPE\" TEXT,\"RTYPE\" TEXT,\"OPENID\" TEXT);");
    }

    public static void b(Database database, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"DOWNLOAD_INFO\"");
        database.execSQL(sb.toString());
    }

    @Override
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override
    public final void bindValues(DatabaseStatement databaseStatement, c cVar) {
        databaseStatement.clearBindings();
        Long lA = cVar.a();
        if (lA != null) {
            databaseStatement.bindLong(1, lA.longValue());
        }
        String strB = cVar.b();
        if (strB != null) {
            databaseStatement.bindString(2, strB);
        }
        String strC = cVar.c();
        if (strC != null) {
            databaseStatement.bindString(3, strC);
        }
        String strD = cVar.d();
        if (strD != null) {
            databaseStatement.bindString(4, strD);
        }
        String strE = cVar.e();
        if (strE != null) {
            databaseStatement.bindString(5, strE);
        }
        String strF = cVar.f();
        if (strF != null) {
            databaseStatement.bindString(6, strF);
        }
        Long lG = cVar.g();
        if (lG != null) {
            databaseStatement.bindLong(7, lG.longValue());
        }
        Long lH = cVar.h();
        if (lH != null) {
            databaseStatement.bindLong(8, lH.longValue());
        }
        Integer numI = cVar.i();
        if (numI != null) {
            databaseStatement.bindLong(9, numI.intValue());
        }
        Long lJ = cVar.j();
        if (lJ != null) {
            databaseStatement.bindLong(10, lJ.longValue());
        }
        Integer numK = cVar.k();
        if (numK != null) {
            databaseStatement.bindLong(11, numK.intValue());
        }
        String strL = cVar.l();
        if (strL != null) {
            databaseStatement.bindString(12, strL);
        }
        String strM = cVar.m();
        if (strM != null) {
            databaseStatement.bindString(13, strM);
        }
        String strN = cVar.n();
        if (strN != null) {
            databaseStatement.bindString(14, strN);
        }
        Integer numO = cVar.o();
        if (numO != null) {
            databaseStatement.bindLong(15, numO.intValue());
        }
        Integer numP = cVar.p();
        if (numP != null) {
            databaseStatement.bindLong(16, numP.intValue());
        }
        String strQ = cVar.q();
        if (strQ != null) {
            databaseStatement.bindString(17, strQ);
        }
        String strR = cVar.r();
        if (strR != null) {
            databaseStatement.bindString(18, strR);
        }
        String strS = cVar.s();
        if (strS != null) {
            databaseStatement.bindString(19, strS);
        }
        String strT = cVar.t();
        if (strT != null) {
            databaseStatement.bindString(20, strT);
        }
        Integer numU = cVar.u();
        if (numU != null) {
            databaseStatement.bindLong(21, numU.intValue());
        }
        Integer numV = cVar.v();
        if (numV != null) {
            databaseStatement.bindLong(22, numV.intValue());
        }
        Integer numW = cVar.w();
        if (numW != null) {
            databaseStatement.bindLong(23, numW.intValue());
        }
        String strX = cVar.x();
        if (strX != null) {
            databaseStatement.bindString(24, strX);
        }
        String strY = cVar.y();
        if (strY != null) {
            databaseStatement.bindString(25, strY);
        }
        String strZ = cVar.z();
        if (strZ != null) {
            databaseStatement.bindString(26, strZ);
        }
        String strA = cVar.A();
        if (strA != null) {
            databaseStatement.bindString(27, strA);
        }
        String strB2 = cVar.B();
        if (strB2 != null) {
            databaseStatement.bindString(28, strB2);
        }
        String strC2 = cVar.C();
        if (strC2 != null) {
            databaseStatement.bindString(29, strC2);
        }
        String strD2 = cVar.D();
        if (strD2 != null) {
            databaseStatement.bindString(30, strD2);
        }
        String strE2 = cVar.E();
        if (strE2 != null) {
            databaseStatement.bindString(31, strE2);
        }
        String strF2 = cVar.F();
        if (strF2 != null) {
            databaseStatement.bindString(32, strF2);
        }
        Integer numG = cVar.G();
        if (numG != null) {
            databaseStatement.bindLong(33, numG.intValue());
        }
        String strK = cVar.K();
        if (strK != null) {
            databaseStatement.bindString(34, strK);
        }
        Integer numI2 = cVar.I();
        if (numI2 != null) {
            databaseStatement.bindLong(35, numI2.intValue());
        }
        Integer numH = cVar.H();
        if (numH != null) {
            databaseStatement.bindLong(36, numH.intValue());
        }
        String strJ = cVar.J();
        if (strJ != null) {
            databaseStatement.bindString(37, strJ);
        }
        String strL2 = cVar.L();
        if (strL2 != null) {
            databaseStatement.bindString(38, strL2);
        }
        String strM2 = cVar.M();
        if (strM2 != null) {
            databaseStatement.bindString(39, strM2);
        }
        String strN2 = cVar.N();
        if (strN2 != null) {
            databaseStatement.bindString(40, strN2);
        }
        String strO = cVar.O();
        if (strO != null) {
            databaseStatement.bindString(41, strO);
        }
        String strP = cVar.P();
        if (strP != null) {
            databaseStatement.bindString(42, strP);
        }
        String strQ2 = cVar.Q();
        if (strQ2 != null) {
            databaseStatement.bindString(43, strQ2);
        }
        String strR2 = cVar.R();
        if (strR2 != null) {
            databaseStatement.bindString(44, strR2);
        }
        String strS2 = cVar.S();
        if (strS2 != null) {
            databaseStatement.bindString(45, strS2);
        }
        String strT2 = cVar.T();
        if (strT2 != null) {
            databaseStatement.bindString(46, strT2);
        }
        String strU = cVar.U();
        if (strU != null) {
            databaseStatement.bindString(47, strU);
        }
        String strV = cVar.V();
        if (strV != null) {
            databaseStatement.bindString(48, strV);
        }
    }

    @Override
    public c readEntity(Cursor cursor, int i) {
        Long lValueOf = cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
        int i2 = i + 1;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 2;
        String string2 = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 3;
        String string3 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 4;
        String string4 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 5;
        String string5 = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i + 6;
        Long lValueOf2 = cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7));
        int i8 = i + 7;
        Long lValueOf3 = cursor.isNull(i8) ? null : Long.valueOf(cursor.getLong(i8));
        int i9 = i + 8;
        Integer numValueOf = cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9));
        int i10 = i + 9;
        Long lValueOf4 = cursor.isNull(i10) ? null : Long.valueOf(cursor.getLong(i10));
        int i11 = i + 10;
        Integer numValueOf2 = cursor.isNull(i11) ? null : Integer.valueOf(cursor.getInt(i11));
        int i12 = i + 11;
        String string6 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 12;
        String string7 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 13;
        String string8 = cursor.isNull(i14) ? null : cursor.getString(i14);
        int i15 = i + 14;
        Integer numValueOf3 = cursor.isNull(i15) ? null : Integer.valueOf(cursor.getInt(i15));
        int i16 = i + 15;
        Integer numValueOf4 = cursor.isNull(i16) ? null : Integer.valueOf(cursor.getInt(i16));
        int i17 = i + 16;
        String string9 = cursor.isNull(i17) ? null : cursor.getString(i17);
        int i18 = i + 17;
        String string10 = cursor.isNull(i18) ? null : cursor.getString(i18);
        int i19 = i + 18;
        String string11 = cursor.isNull(i19) ? null : cursor.getString(i19);
        int i20 = i + 19;
        String string12 = cursor.isNull(i20) ? null : cursor.getString(i20);
        int i21 = i + 20;
        Integer numValueOf5 = cursor.isNull(i21) ? null : Integer.valueOf(cursor.getInt(i21));
        int i22 = i + 21;
        Integer numValueOf6 = cursor.isNull(i22) ? null : Integer.valueOf(cursor.getInt(i22));
        int i23 = i + 22;
        Integer numValueOf7 = cursor.isNull(i23) ? null : Integer.valueOf(cursor.getInt(i23));
        int i24 = i + 23;
        String string13 = cursor.isNull(i24) ? null : cursor.getString(i24);
        int i25 = i + 24;
        String string14 = cursor.isNull(i25) ? null : cursor.getString(i25);
        int i26 = i + 25;
        String string15 = cursor.isNull(i26) ? null : cursor.getString(i26);
        int i27 = i + 26;
        String string16 = cursor.isNull(i27) ? null : cursor.getString(i27);
        int i28 = i + 27;
        String string17 = cursor.isNull(i28) ? null : cursor.getString(i28);
        int i29 = i + 28;
        String string18 = cursor.isNull(i29) ? null : cursor.getString(i29);
        int i30 = i + 29;
        String string19 = cursor.isNull(i30) ? null : cursor.getString(i30);
        int i31 = i + 30;
        String string20 = cursor.isNull(i31) ? null : cursor.getString(i31);
        int i32 = i + 31;
        String string21 = cursor.isNull(i32) ? null : cursor.getString(i32);
        int i33 = i + 32;
        Integer numValueOf8 = cursor.isNull(i33) ? null : Integer.valueOf(cursor.getInt(i33));
        int i34 = i + 33;
        String string22 = cursor.isNull(i34) ? null : cursor.getString(i34);
        int i35 = i + 34;
        Integer numValueOf9 = cursor.isNull(i35) ? null : Integer.valueOf(cursor.getInt(i35));
        int i36 = i + 35;
        Integer numValueOf10 = cursor.isNull(i36) ? null : Integer.valueOf(cursor.getInt(i36));
        int i37 = i + 36;
        String string23 = cursor.isNull(i37) ? null : cursor.getString(i37);
        int i38 = i + 37;
        String string24 = cursor.isNull(i38) ? null : cursor.getString(i38);
        int i39 = i + 38;
        String string25 = cursor.isNull(i39) ? null : cursor.getString(i39);
        int i40 = i + 39;
        String string26 = cursor.isNull(i40) ? null : cursor.getString(i40);
        int i41 = i + 40;
        String string27 = cursor.isNull(i41) ? null : cursor.getString(i41);
        int i42 = i + 41;
        String string28 = cursor.isNull(i42) ? null : cursor.getString(i42);
        int i43 = i + 42;
        String string29 = cursor.isNull(i43) ? null : cursor.getString(i43);
        int i44 = i + 43;
        String string30 = cursor.isNull(i44) ? null : cursor.getString(i44);
        int i45 = i + 44;
        String string31 = cursor.isNull(i45) ? null : cursor.getString(i45);
        int i46 = i + 45;
        String string32 = cursor.isNull(i46) ? null : cursor.getString(i46);
        int i47 = i + 46;
        String string33 = cursor.isNull(i47) ? null : cursor.getString(i47);
        int i48 = i + 47;
        return new c(lValueOf, string, string2, string3, string4, string5, lValueOf2, lValueOf3, numValueOf, lValueOf4, numValueOf2, string6, string7, string8, numValueOf3, numValueOf4, string9, string10, string11, string12, numValueOf5, numValueOf6, numValueOf7, string13, string14, string15, string16, string17, string18, string19, string20, string21, numValueOf8, string22, numValueOf9, numValueOf10, string23, string24, string25, string26, string27, string28, string29, string30, string31, string32, string33, cursor.isNull(i48) ? null : cursor.getString(i48));
    }

    @Override
    public boolean hasKey(c cVar) {
        return cVar.a() != null;
    }

    @Override
    public final void bindValues(SQLiteStatement sQLiteStatement, c cVar) {
        sQLiteStatement.clearBindings();
        Long lA = cVar.a();
        if (lA != null) {
            sQLiteStatement.bindLong(1, lA.longValue());
        }
        String strB = cVar.b();
        if (strB != null) {
            sQLiteStatement.bindString(2, strB);
        }
        String strC = cVar.c();
        if (strC != null) {
            sQLiteStatement.bindString(3, strC);
        }
        String strD = cVar.d();
        if (strD != null) {
            sQLiteStatement.bindString(4, strD);
        }
        String strE = cVar.e();
        if (strE != null) {
            sQLiteStatement.bindString(5, strE);
        }
        String strF = cVar.f();
        if (strF != null) {
            sQLiteStatement.bindString(6, strF);
        }
        Long lG = cVar.g();
        if (lG != null) {
            sQLiteStatement.bindLong(7, lG.longValue());
        }
        Long lH = cVar.h();
        if (lH != null) {
            sQLiteStatement.bindLong(8, lH.longValue());
        }
        Integer numI = cVar.i();
        if (numI != null) {
            sQLiteStatement.bindLong(9, numI.intValue());
        }
        Long lJ = cVar.j();
        if (lJ != null) {
            sQLiteStatement.bindLong(10, lJ.longValue());
        }
        Integer numK = cVar.k();
        if (numK != null) {
            sQLiteStatement.bindLong(11, numK.intValue());
        }
        String strL = cVar.l();
        if (strL != null) {
            sQLiteStatement.bindString(12, strL);
        }
        String strM = cVar.m();
        if (strM != null) {
            sQLiteStatement.bindString(13, strM);
        }
        String strN = cVar.n();
        if (strN != null) {
            sQLiteStatement.bindString(14, strN);
        }
        Integer numO = cVar.o();
        if (numO != null) {
            sQLiteStatement.bindLong(15, numO.intValue());
        }
        Integer numP = cVar.p();
        if (numP != null) {
            sQLiteStatement.bindLong(16, numP.intValue());
        }
        String strQ = cVar.q();
        if (strQ != null) {
            sQLiteStatement.bindString(17, strQ);
        }
        String strR = cVar.r();
        if (strR != null) {
            sQLiteStatement.bindString(18, strR);
        }
        String strS = cVar.s();
        if (strS != null) {
            sQLiteStatement.bindString(19, strS);
        }
        String strT = cVar.t();
        if (strT != null) {
            sQLiteStatement.bindString(20, strT);
        }
        Integer numU = cVar.u();
        if (numU != null) {
            sQLiteStatement.bindLong(21, numU.intValue());
        }
        Integer numV = cVar.v();
        if (numV != null) {
            sQLiteStatement.bindLong(22, numV.intValue());
        }
        Integer numW = cVar.w();
        if (numW != null) {
            sQLiteStatement.bindLong(23, numW.intValue());
        }
        String strX = cVar.x();
        if (strX != null) {
            sQLiteStatement.bindString(24, strX);
        }
        String strY = cVar.y();
        if (strY != null) {
            sQLiteStatement.bindString(25, strY);
        }
        String strZ = cVar.z();
        if (strZ != null) {
            sQLiteStatement.bindString(26, strZ);
        }
        String strA = cVar.A();
        if (strA != null) {
            sQLiteStatement.bindString(27, strA);
        }
        String strB2 = cVar.B();
        if (strB2 != null) {
            sQLiteStatement.bindString(28, strB2);
        }
        String strC2 = cVar.C();
        if (strC2 != null) {
            sQLiteStatement.bindString(29, strC2);
        }
        String strD2 = cVar.D();
        if (strD2 != null) {
            sQLiteStatement.bindString(30, strD2);
        }
        String strE2 = cVar.E();
        if (strE2 != null) {
            sQLiteStatement.bindString(31, strE2);
        }
        String strF2 = cVar.F();
        if (strF2 != null) {
            sQLiteStatement.bindString(32, strF2);
        }
        Integer numG = cVar.G();
        if (numG != null) {
            sQLiteStatement.bindLong(33, numG.intValue());
        }
        String strK = cVar.K();
        if (strK != null) {
            sQLiteStatement.bindString(34, strK);
        }
        Integer numI2 = cVar.I();
        if (numI2 != null) {
            sQLiteStatement.bindLong(35, numI2.intValue());
        }
        Integer numH = cVar.H();
        if (numH != null) {
            sQLiteStatement.bindLong(36, numH.intValue());
        }
        String strJ = cVar.J();
        if (strJ != null) {
            sQLiteStatement.bindString(37, strJ);
        }
        String strL2 = cVar.L();
        if (strL2 != null) {
            sQLiteStatement.bindString(38, strL2);
        }
        String strM2 = cVar.M();
        if (strM2 != null) {
            sQLiteStatement.bindString(39, strM2);
        }
        String strN2 = cVar.N();
        if (strN2 != null) {
            sQLiteStatement.bindString(40, strN2);
        }
        String strO = cVar.O();
        if (strO != null) {
            sQLiteStatement.bindString(41, strO);
        }
        String strP = cVar.P();
        if (strP != null) {
            sQLiteStatement.bindString(42, strP);
        }
        String strQ2 = cVar.Q();
        if (strQ2 != null) {
            sQLiteStatement.bindString(43, strQ2);
        }
        String strR2 = cVar.R();
        if (strR2 != null) {
            sQLiteStatement.bindString(44, strR2);
        }
        String strS2 = cVar.S();
        if (strS2 != null) {
            sQLiteStatement.bindString(45, strS2);
        }
        String strT2 = cVar.T();
        if (strT2 != null) {
            sQLiteStatement.bindString(46, strT2);
        }
        String strU = cVar.U();
        if (strU != null) {
            sQLiteStatement.bindString(47, strU);
        }
        String strV = cVar.V();
        if (strV != null) {
            sQLiteStatement.bindString(48, strV);
        }
    }

    @Override
    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i));
    }

    @Override
    public void readEntity(Cursor cursor, c cVar, int i) {
        cVar.a(cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i)));
        int i2 = i + 1;
        cVar.a(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 2;
        cVar.b(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 3;
        cVar.c(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 4;
        cVar.d(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 5;
        cVar.e(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 6;
        cVar.b(cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
        int i8 = i + 7;
        cVar.c(cursor.isNull(i8) ? null : Long.valueOf(cursor.getLong(i8)));
        int i9 = i + 8;
        cVar.a(cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)));
        int i10 = i + 9;
        cVar.d(cursor.isNull(i10) ? null : Long.valueOf(cursor.getLong(i10)));
        int i11 = i + 10;
        cVar.b(cursor.isNull(i11) ? null : Integer.valueOf(cursor.getInt(i11)));
        int i12 = i + 11;
        cVar.f(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 12;
        cVar.g(cursor.isNull(i13) ? null : cursor.getString(i13));
        int i14 = i + 13;
        cVar.h(cursor.isNull(i14) ? null : cursor.getString(i14));
        int i15 = i + 14;
        cVar.c(cursor.isNull(i15) ? null : Integer.valueOf(cursor.getInt(i15)));
        int i16 = i + 15;
        cVar.d(cursor.isNull(i16) ? null : Integer.valueOf(cursor.getInt(i16)));
        int i17 = i + 16;
        cVar.i(cursor.isNull(i17) ? null : cursor.getString(i17));
        int i18 = i + 17;
        cVar.j(cursor.isNull(i18) ? null : cursor.getString(i18));
        int i19 = i + 18;
        cVar.k(cursor.isNull(i19) ? null : cursor.getString(i19));
        int i20 = i + 19;
        cVar.l(cursor.isNull(i20) ? null : cursor.getString(i20));
        int i21 = i + 20;
        cVar.e(cursor.isNull(i21) ? null : Integer.valueOf(cursor.getInt(i21)));
        int i22 = i + 21;
        cVar.f(cursor.isNull(i22) ? null : Integer.valueOf(cursor.getInt(i22)));
        int i23 = i + 22;
        cVar.g(cursor.isNull(i23) ? null : Integer.valueOf(cursor.getInt(i23)));
        int i24 = i + 23;
        cVar.m(cursor.isNull(i24) ? null : cursor.getString(i24));
        int i25 = i + 24;
        cVar.n(cursor.isNull(i25) ? null : cursor.getString(i25));
        int i26 = i + 25;
        cVar.o(cursor.isNull(i26) ? null : cursor.getString(i26));
        int i27 = i + 26;
        cVar.p(cursor.isNull(i27) ? null : cursor.getString(i27));
        int i28 = i + 27;
        cVar.q(cursor.isNull(i28) ? null : cursor.getString(i28));
        int i29 = i + 28;
        cVar.r(cursor.isNull(i29) ? null : cursor.getString(i29));
        int i30 = i + 29;
        cVar.s(cursor.isNull(i30) ? null : cursor.getString(i30));
        int i31 = i + 30;
        cVar.t(cursor.isNull(i31) ? null : cursor.getString(i31));
        int i32 = i + 31;
        cVar.u(cursor.isNull(i32) ? null : cursor.getString(i32));
        int i33 = i + 32;
        cVar.h(cursor.isNull(i33) ? null : Integer.valueOf(cursor.getInt(i33)));
        int i34 = i + 33;
        cVar.w(cursor.isNull(i34) ? null : cursor.getString(i34));
        int i35 = i + 34;
        cVar.j(cursor.isNull(i35) ? null : Integer.valueOf(cursor.getInt(i35)));
        int i36 = i + 35;
        cVar.i(cursor.isNull(i36) ? null : Integer.valueOf(cursor.getInt(i36)));
        int i37 = i + 36;
        cVar.v(cursor.isNull(i37) ? null : cursor.getString(i37));
        int i38 = i + 37;
        cVar.x(cursor.isNull(i38) ? null : cursor.getString(i38));
        int i39 = i + 38;
        cVar.y(cursor.isNull(i39) ? null : cursor.getString(i39));
        int i40 = i + 39;
        cVar.z(cursor.isNull(i40) ? null : cursor.getString(i40));
        int i41 = i + 40;
        cVar.A(cursor.isNull(i41) ? null : cursor.getString(i41));
        int i42 = i + 41;
        cVar.B(cursor.isNull(i42) ? null : cursor.getString(i42));
        int i43 = i + 42;
        cVar.C(cursor.isNull(i43) ? null : cursor.getString(i43));
        int i44 = i + 43;
        cVar.D(cursor.isNull(i44) ? null : cursor.getString(i44));
        int i45 = i + 44;
        cVar.E(cursor.isNull(i45) ? null : cursor.getString(i45));
        int i46 = i + 45;
        cVar.F(cursor.isNull(i46) ? null : cursor.getString(i46));
        int i47 = i + 46;
        cVar.G(cursor.isNull(i47) ? null : cursor.getString(i47));
        int i48 = i + 47;
        cVar.H(cursor.isNull(i48) ? null : cursor.getString(i48));
    }

    @Override
    public final Long updateKeyAfterInsert(c cVar, long j) {
        cVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override
    public Long getKey(c cVar) {
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }
}
