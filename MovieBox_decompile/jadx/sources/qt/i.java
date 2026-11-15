package qt;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class i implements qt.a {

    private final RoomDatabase f70243a;

    private final androidx.room.g f70244b = new a();

    private final androidx.room.e f70245c = new b();

    private final androidx.room.e f70246d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `st_download_table` (`id`,`resourceStreamType`,`resourceId`,`lan`,`lanName`,`url`,`size`,`delay`,`downloads`,`type`,`postId`,`subtitleName`,`subjectId`,`ep`,`se`,`resolution`,`subjectName`,`status`,`fileCharsetName`,`path`,`zipPath`,`taskId`,`failCount`,`ugcVideoId`,`ugcVideoCollectionId`,`ops`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, SubtitleDownloadTable subtitleDownloadTable) {
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, subtitleDownloadTable.getId());
            }
            eVar.c(2, subtitleDownloadTable.getResourceStreamType());
            if (subtitleDownloadTable.getResourceId() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, subtitleDownloadTable.getResourceId());
            }
            if (subtitleDownloadTable.getLan() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, subtitleDownloadTable.getLan());
            }
            if (subtitleDownloadTable.getLanName() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, subtitleDownloadTable.getLanName());
            }
            if (subtitleDownloadTable.getUrl() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, subtitleDownloadTable.getUrl());
            }
            if (subtitleDownloadTable.getSize() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, subtitleDownloadTable.getSize().longValue());
            }
            if (subtitleDownloadTable.getDelay() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleDownloadTable.getDelay().longValue());
            }
            if (subtitleDownloadTable.getDownloads() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleDownloadTable.getDownloads().intValue());
            }
            eVar.c(10, subtitleDownloadTable.getType());
            if (subtitleDownloadTable.getPostId() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, subtitleDownloadTable.getPostId());
            }
            if (subtitleDownloadTable.getSubtitleName() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, subtitleDownloadTable.getSubtitleName());
            }
            if (subtitleDownloadTable.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, subtitleDownloadTable.getSubjectId());
            }
            eVar.c(14, subtitleDownloadTable.getEp());
            eVar.c(15, subtitleDownloadTable.getSe());
            eVar.c(16, subtitleDownloadTable.getResolution());
            if (subtitleDownloadTable.getSubjectName() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, subtitleDownloadTable.getSubjectName());
            }
            eVar.c(18, subtitleDownloadTable.getStatus());
            if (subtitleDownloadTable.getFileCharsetName() == null) {
                eVar.g(19);
            } else {
                eVar.i(19, subtitleDownloadTable.getFileCharsetName());
            }
            if (subtitleDownloadTable.getPath() == null) {
                eVar.g(20);
            } else {
                eVar.i(20, subtitleDownloadTable.getPath());
            }
            if (subtitleDownloadTable.getZipPath() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, subtitleDownloadTable.getZipPath());
            }
            if (subtitleDownloadTable.getTaskId() == null) {
                eVar.g(22);
            } else {
                eVar.i(22, subtitleDownloadTable.getTaskId());
            }
            eVar.c(23, subtitleDownloadTable.getFailCount());
            if (subtitleDownloadTable.getUgcVideoId() == null) {
                eVar.g(24);
            } else {
                eVar.i(24, subtitleDownloadTable.getUgcVideoId());
            }
            if (subtitleDownloadTable.getUgcVideoCollectionId() == null) {
                eVar.g(25);
            } else {
                eVar.i(25, subtitleDownloadTable.getUgcVideoCollectionId());
            }
            if (subtitleDownloadTable.getOps() == null) {
                eVar.g(26);
            } else {
                eVar.i(26, subtitleDownloadTable.getOps());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `st_download_table` WHERE `id` = ? AND `resourceStreamType` = ?";
        }

        @Override
        public void a(y3.e eVar, SubtitleDownloadTable subtitleDownloadTable) {
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, subtitleDownloadTable.getId());
            }
            eVar.c(2, subtitleDownloadTable.getResourceStreamType());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `st_download_table` SET `id` = ?,`resourceStreamType` = ?,`resourceId` = ?,`lan` = ?,`lanName` = ?,`url` = ?,`size` = ?,`delay` = ?,`downloads` = ?,`type` = ?,`postId` = ?,`subtitleName` = ?,`subjectId` = ?,`ep` = ?,`se` = ?,`resolution` = ?,`subjectName` = ?,`status` = ?,`fileCharsetName` = ?,`path` = ?,`zipPath` = ?,`taskId` = ?,`failCount` = ?,`ugcVideoId` = ?,`ugcVideoCollectionId` = ?,`ops` = ? WHERE `id` = ? AND `resourceStreamType` = ?";
        }

        @Override
        public void a(y3.e eVar, SubtitleDownloadTable subtitleDownloadTable) {
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, subtitleDownloadTable.getId());
            }
            eVar.c(2, subtitleDownloadTable.getResourceStreamType());
            if (subtitleDownloadTable.getResourceId() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, subtitleDownloadTable.getResourceId());
            }
            if (subtitleDownloadTable.getLan() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, subtitleDownloadTable.getLan());
            }
            if (subtitleDownloadTable.getLanName() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, subtitleDownloadTable.getLanName());
            }
            if (subtitleDownloadTable.getUrl() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, subtitleDownloadTable.getUrl());
            }
            if (subtitleDownloadTable.getSize() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, subtitleDownloadTable.getSize().longValue());
            }
            if (subtitleDownloadTable.getDelay() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleDownloadTable.getDelay().longValue());
            }
            if (subtitleDownloadTable.getDownloads() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleDownloadTable.getDownloads().intValue());
            }
            eVar.c(10, subtitleDownloadTable.getType());
            if (subtitleDownloadTable.getPostId() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, subtitleDownloadTable.getPostId());
            }
            if (subtitleDownloadTable.getSubtitleName() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, subtitleDownloadTable.getSubtitleName());
            }
            if (subtitleDownloadTable.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, subtitleDownloadTable.getSubjectId());
            }
            eVar.c(14, subtitleDownloadTable.getEp());
            eVar.c(15, subtitleDownloadTable.getSe());
            eVar.c(16, subtitleDownloadTable.getResolution());
            if (subtitleDownloadTable.getSubjectName() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, subtitleDownloadTable.getSubjectName());
            }
            eVar.c(18, subtitleDownloadTable.getStatus());
            if (subtitleDownloadTable.getFileCharsetName() == null) {
                eVar.g(19);
            } else {
                eVar.i(19, subtitleDownloadTable.getFileCharsetName());
            }
            if (subtitleDownloadTable.getPath() == null) {
                eVar.g(20);
            } else {
                eVar.i(20, subtitleDownloadTable.getPath());
            }
            if (subtitleDownloadTable.getZipPath() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, subtitleDownloadTable.getZipPath());
            }
            if (subtitleDownloadTable.getTaskId() == null) {
                eVar.g(22);
            } else {
                eVar.i(22, subtitleDownloadTable.getTaskId());
            }
            eVar.c(23, subtitleDownloadTable.getFailCount());
            if (subtitleDownloadTable.getUgcVideoId() == null) {
                eVar.g(24);
            } else {
                eVar.i(24, subtitleDownloadTable.getUgcVideoId());
            }
            if (subtitleDownloadTable.getUgcVideoCollectionId() == null) {
                eVar.g(25);
            } else {
                eVar.i(25, subtitleDownloadTable.getUgcVideoCollectionId());
            }
            if (subtitleDownloadTable.getOps() == null) {
                eVar.g(26);
            } else {
                eVar.i(26, subtitleDownloadTable.getOps());
            }
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(27);
            } else {
                eVar.i(27, subtitleDownloadTable.getId());
            }
            eVar.c(28, subtitleDownloadTable.getResourceStreamType());
        }
    }

    public i(RoomDatabase roomDatabase) {
        this.f70243a = roomDatabase;
    }

    public static List o() {
        return Collections.emptyList();
    }

    public Object p(SubtitleDownloadTable subtitleDownloadTable, y3.b bVar) throws Exception {
        this.f70245c.c(bVar, subtitleDownloadTable);
        return null;
    }

    public static Unit q(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM st_download_table WHERE resourceId =?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List r(int i10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM st_download_table WHERE status = ?");
        try {
            eVarF0.c(1, i10);
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceStreamType");
            int iC3 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC4 = androidx.room.util.i.c(eVarF0, "lan");
            int iC5 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC6 = androidx.room.util.i.c(eVarF0, "url");
            int iC7 = androidx.room.util.i.c(eVarF0, "size");
            int iC8 = androidx.room.util.i.c(eVarF0, "delay");
            int iC9 = androidx.room.util.i.c(eVarF0, "downloads");
            int iC10 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC11 = androidx.room.util.i.c(eVarF0, "postId");
            int iC12 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC17 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC18 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC19 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC20 = androidx.room.util.i.c(eVarF0, "path");
            int iC21 = androidx.room.util.i.c(eVarF0, "zipPath");
            int iC22 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC23 = androidx.room.util.i.c(eVarF0, "failCount");
            int iC24 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC25 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC26 = androidx.room.util.i.c(eVarF0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                int i11 = (int) eVarF0.getLong(iC2);
                String strQ1 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ3 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                Long lValueOf = eVarF0.isNull(iC7) ? null : Long.valueOf(eVarF0.getLong(iC7));
                Long lValueOf2 = eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8));
                Integer numValueOf = eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9));
                int i12 = (int) eVarF0.getLong(iC10);
                String strQ5 = eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11);
                String strQ6 = eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12);
                String strQ7 = eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC14);
                int i15 = iC15;
                int i16 = iC6;
                int i17 = iC7;
                int i18 = (int) eVarF0.getLong(i15);
                int i19 = iC16;
                int i20 = iC8;
                int i21 = iC9;
                int i22 = (int) eVarF0.getLong(i19);
                int i23 = iC17;
                String strQ8 = eVarF0.isNull(i23) ? null : eVarF0.q0(i23);
                int i24 = iC10;
                int i25 = (int) eVarF0.getLong(iC18);
                int i26 = iC19;
                String strQ9 = eVarF0.isNull(i26) ? null : eVarF0.q0(i26);
                String strQ10 = eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20);
                String strQ11 = eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21);
                String strQ12 = eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22);
                int i27 = iC11;
                int i28 = (int) eVarF0.getLong(iC23);
                int i29 = iC24;
                String strQ13 = eVarF0.isNull(i29) ? null : eVarF0.q0(i29);
                String strQ14 = eVarF0.isNull(iC25) ? null : eVarF0.q0(iC25);
                String strQ15 = eVarF0.isNull(iC26) ? null : eVarF0.q0(iC26);
                iC26 = iC26;
                SubtitleDownloadTable subtitleDownloadTable = new SubtitleDownloadTable(strQ0, i11, strQ1, strQ2, strQ3, strQ4, lValueOf, lValueOf2, numValueOf, i12, strQ5, strQ6, strQ7, i14, i18, i22, strQ8, i25, strQ9, strQ10, strQ11, strQ12, i28, strQ13, strQ14, strQ15);
                ArrayList arrayList2 = arrayList;
                arrayList2.add(subtitleDownloadTable);
                iC6 = i16;
                iC8 = i20;
                iC14 = iC14;
                iC15 = i15;
                iC16 = i19;
                iC = iC;
                iC10 = i24;
                iC18 = iC18;
                iC4 = i13;
                iC3 = iC3;
                iC5 = iC5;
                iC7 = i17;
                iC9 = i21;
                iC17 = i23;
                iC19 = i26;
                arrayList = arrayList2;
                iC2 = iC2;
                iC24 = i29;
                iC11 = i27;
                iC23 = iC23;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static List s(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM st_download_table WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceStreamType");
            int iC3 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC4 = androidx.room.util.i.c(eVarF0, "lan");
            int iC5 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC6 = androidx.room.util.i.c(eVarF0, "url");
            int iC7 = androidx.room.util.i.c(eVarF0, "size");
            int iC8 = androidx.room.util.i.c(eVarF0, "delay");
            int iC9 = androidx.room.util.i.c(eVarF0, "downloads");
            int iC10 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC11 = androidx.room.util.i.c(eVarF0, "postId");
            int iC12 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC17 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC18 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC19 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC20 = androidx.room.util.i.c(eVarF0, "path");
            int iC21 = androidx.room.util.i.c(eVarF0, "zipPath");
            int iC22 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC23 = androidx.room.util.i.c(eVarF0, "failCount");
            int iC24 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC25 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC26 = androidx.room.util.i.c(eVarF0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                int i10 = (int) eVarF0.getLong(iC2);
                String strQ1 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ3 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                Long lValueOf = eVarF0.isNull(iC7) ? null : Long.valueOf(eVarF0.getLong(iC7));
                Long lValueOf2 = eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8));
                Integer numValueOf = eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9));
                int i11 = (int) eVarF0.getLong(iC10);
                String strQ5 = eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11);
                String strQ6 = eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12);
                String strQ7 = eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13);
                int i12 = iC4;
                int i13 = (int) eVarF0.getLong(iC14);
                int i14 = iC15;
                int i15 = iC6;
                int i16 = iC7;
                int i17 = (int) eVarF0.getLong(i14);
                int i18 = iC16;
                int i19 = iC8;
                int i20 = iC9;
                int i21 = (int) eVarF0.getLong(i18);
                int i22 = iC17;
                String strQ8 = eVarF0.isNull(i22) ? null : eVarF0.q0(i22);
                int i23 = iC10;
                int i24 = (int) eVarF0.getLong(iC18);
                int i25 = iC19;
                String strQ9 = eVarF0.isNull(i25) ? null : eVarF0.q0(i25);
                String strQ10 = eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20);
                String strQ11 = eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21);
                String strQ12 = eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22);
                int i26 = iC11;
                int i27 = (int) eVarF0.getLong(iC23);
                int i28 = iC24;
                String strQ13 = eVarF0.isNull(i28) ? null : eVarF0.q0(i28);
                String strQ14 = eVarF0.isNull(iC25) ? null : eVarF0.q0(iC25);
                String strQ15 = eVarF0.isNull(iC26) ? null : eVarF0.q0(iC26);
                iC26 = iC26;
                SubtitleDownloadTable subtitleDownloadTable = new SubtitleDownloadTable(strQ0, i10, strQ1, strQ2, strQ3, strQ4, lValueOf, lValueOf2, numValueOf, i11, strQ5, strQ6, strQ7, i13, i17, i21, strQ8, i24, strQ9, strQ10, strQ11, strQ12, i27, strQ13, strQ14, strQ15);
                ArrayList arrayList2 = arrayList;
                arrayList2.add(subtitleDownloadTable);
                iC6 = i15;
                iC8 = i19;
                iC14 = iC14;
                iC15 = i14;
                iC16 = i18;
                iC = iC;
                iC10 = i23;
                iC18 = iC18;
                iC4 = i12;
                iC3 = iC3;
                iC5 = iC5;
                iC7 = i16;
                iC9 = i20;
                iC17 = i22;
                iC19 = i25;
                arrayList = arrayList2;
                iC2 = iC2;
                iC24 = i28;
                iC11 = i26;
                iC23 = iC23;
            }
            ArrayList arrayList3 = arrayList;
            eVarF0.close();
            return arrayList3;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static SubtitleDownloadTable t(String str, int i10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM st_download_table WHERE id = ? AND resourceStreamType = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            int iC = androidx.room.util.i.c(eVarF0, "id");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceStreamType");
            int iC3 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC4 = androidx.room.util.i.c(eVarF0, "lan");
            int iC5 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC6 = androidx.room.util.i.c(eVarF0, "url");
            int iC7 = androidx.room.util.i.c(eVarF0, "size");
            int iC8 = androidx.room.util.i.c(eVarF0, "delay");
            int iC9 = androidx.room.util.i.c(eVarF0, "downloads");
            int iC10 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC11 = androidx.room.util.i.c(eVarF0, "postId");
            int iC12 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC17 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC18 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC19 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC20 = androidx.room.util.i.c(eVarF0, "path");
            int iC21 = androidx.room.util.i.c(eVarF0, "zipPath");
            int iC22 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC23 = androidx.room.util.i.c(eVarF0, "failCount");
            int iC24 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC25 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC26 = androidx.room.util.i.c(eVarF0, "ops");
            SubtitleDownloadTable subtitleDownloadTable = null;
            if (eVarF0.C0()) {
                subtitleDownloadTable = new SubtitleDownloadTable(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), (int) eVarF0.getLong(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Long.valueOf(eVarF0.getLong(iC7)), eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), (int) eVarF0.getLong(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), (int) eVarF0.getLong(iC14), (int) eVarF0.getLong(iC15), (int) eVarF0.getLong(iC16), eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17), (int) eVarF0.getLong(iC18), eVarF0.isNull(iC19) ? null : eVarF0.q0(iC19), eVarF0.isNull(r18) ? null : eVarF0.q0(iC20), eVarF0.isNull(r19) ? null : eVarF0.q0(iC21), eVarF0.isNull(r20) ? null : eVarF0.q0(iC22), (int) eVarF0.getLong(iC23), eVarF0.isNull(iC24) ? null : eVarF0.q0(iC24), eVarF0.isNull(r23) ? null : eVarF0.q0(iC25), eVarF0.isNull(iC26) ? null : eVarF0.q0(iC26));
            }
            eVarF0.close();
            return subtitleDownloadTable;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit u(SubtitleDownloadTable subtitleDownloadTable, y3.b bVar) throws Exception {
        this.f70244b.d(bVar, subtitleDownloadTable);
        return Unit.f64096a;
    }

    public Object v(SubtitleDownloadTable subtitleDownloadTable, y3.b bVar) throws Exception {
        this.f70246d.c(bVar, subtitleDownloadTable);
        return null;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f70243a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.s(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f70243a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.q(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public SubtitleDownloadTable c(final String str, final int i10) {
        return (SubtitleDownloadTable) androidx.room.util.b.d(this.f70243a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.t(str, i10, (y3.b) obj);
            }
        });
    }

    @Override
    public Object d(final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f70243a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.r(i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final SubtitleDownloadTable subtitleDownloadTable, Continuation continuation) {
        subtitleDownloadTable.getClass();
        return androidx.room.util.b.f(this.f70243a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f70233a.u(subtitleDownloadTable, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public void f(final SubtitleDownloadTable subtitleDownloadTable) {
        subtitleDownloadTable.getClass();
        androidx.room.util.b.d(this.f70243a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f70238a.v(subtitleDownloadTable, (y3.b) obj);
            }
        });
    }

    @Override
    public void g(final SubtitleDownloadTable subtitleDownloadTable) {
        subtitleDownloadTable.getClass();
        androidx.room.util.b.d(this.f70243a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f70240a.p(subtitleDownloadTable, (y3.b) obj);
            }
        });
    }
}
