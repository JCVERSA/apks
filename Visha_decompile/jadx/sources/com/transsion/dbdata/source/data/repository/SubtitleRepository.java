package com.transsion.dbdata.source.data.repository;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.SubtitleRecord;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.data.ktx.CursorExtKt;
import com.transsion.dbdata.source.data.repository.SubtitleRepository;
import defpackage.av3;
import defpackage.c74;
import defpackage.d81;
import defpackage.e74;
import defpackage.g1a;
import defpackage.ge6;
import defpackage.h6a;
import defpackage.hi;
import defpackage.i81;
import defpackage.j1a;
import defpackage.ly0;
import defpackage.m5a;
import defpackage.n7c;
import defpackage.oa1;
import defpackage.pp3;
import defpackage.q5a;
import defpackage.qq3;
import defpackage.se;
import defpackage.vmb;
import defpackage.w4a;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.b;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 ?2\u00020\u0001:\u0001?B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\r\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\r\u0010\fJ+\u0010\u000e\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u001a\u0010\u0019J\u0013\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u001b¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b\"\u0010#J\u0015\u0010%\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\b¢\u0006\u0004\b%\u0010&J\u001d\u0010)\u001a\u00020\u00172\u0006\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u0005¢\u0006\u0004\b)\u0010*J#\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00050\u001b2\u0006\u0010'\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u0017¢\u0006\u0004\b,\u0010-R#\u00104\u001a\n /*\u0004\u0018\u00010.0.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R#\u00109\u001a\n /*\u0004\u0018\u000105058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00101\u001a\u0004\b7\u00108R#\u0010>\u001a\n /*\u0004\u0018\u00010:0:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u00101\u001a\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;", "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;", MethodDecl.initName, "()V", "", "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;", "list", "", "", "pathSet", "Lzfb;", "queryDownloadedSubtitles", "(Ljava/util/List;Ljava/util/Set;)V", "querySystemNormalSubtitles", "querySystemSpecialSubtitles", Progress.FILE_PATH, "getFilePathWithoutExtension", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/net/Uri;", "providerUri", "()Landroid/net/Uri;", "Lcom/transsion/dbdata/beans/SubtitleHistory;", "record", "", "insertDownloadRecord", "(Lcom/transsion/dbdata/beans/SubtitleHistory;)I", "deleteDownloadRecord", "", "querySystemSubtitles", "()Ljava/util/List;", "Lcom/transsion/dbdata/beans/SubtitleSettingData;", "querySubtitleSetting", "()Lcom/transsion/dbdata/beans/SubtitleSettingData;", "subtitleSetting", "insertSubtitleSetting", "(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I", "subtitlePath", "deleteSubtitleUsageRecord", "(Ljava/lang/String;)I", "mediaId", AuthInfo.Component.CODE_SUBTITLE, "insertSubtitleUsageRecord", "(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I", "track", "querySubtitleUsageRecordList", "(II)Ljava/util/List;", "Lw4a;", "kotlin.jvm.PlatformType", "mSubtitleDownloadHistoryDao$delegate", "Lyi5;", "getMSubtitleDownloadHistoryDao", "()Lw4a;", "mSubtitleDownloadHistoryDao", "Lh6a;", "mSubtitleSettingDao$delegate", "getMSubtitleSettingDao", "()Lh6a;", "mSubtitleSettingDao", "Lm5a;", "mSubtitleRecordDao$delegate", "getMSubtitleRecordDao", "()Lm5a;", "mSubtitleRecordDao", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SubtitleRepository extends SystemBaseQueryRepository {
    private static final int INDEX_DATA = 3;
    private static final int INDEX_DATE_MODIFIED = 2;
    private static final int INDEX_ID = 0;
    private static final int INDEX_SIZE = 4;
    private static final int INDEX_TITLE = 1;
    private static final String TAG = "SubtitleRepository";

    private final yi5 mSubtitleDownloadHistoryDao;

    private final yi5 mSubtitleRecordDao;

    private final yi5 mSubtitleSettingDao;

    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> supportedExtensions = y71.n(".srt", ".txt", ".idx", ".sub");
    private static final String[] PROJECTION_SUBTITLE = {"_id", "title", "date_modified", "_data", "_size"};

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u000e\u0010\u001b\u001a\u0004\u0018\u00010\u0015*\u00020\u001cH\u0002J\u0014\u0010\u001d\u001a\u00020\u001c*\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;", "", MethodDecl.initName, "()V", AbstractID3v1Tag.TAG, "", "INDEX_ID", "", "INDEX_TITLE", "INDEX_DATE_MODIFIED", "INDEX_DATA", "INDEX_SIZE", "supportedExtensions", "", "PROJECTION_SUBTITLE", "", "[Ljava/lang/String;", "isSubtitlePathSupportCustom", "", "path", "buildSubtitleInfo", "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;", "Landroid/database/Cursor;", Progress.FILE_PATH, "buildQuerySubtitleBundle", "Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "buildQuerySpecialSubtitleBundle", "toSubtitleTrackInfo", "Lcom/transsion/dbdata/beans/media/SubtitleRecord;", "toSubtitleRecord", "mediaId", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final QueryBundle buildQuerySpecialSubtitleBundle() {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            String[] strArr = n7c.e;
            y45.g(strArr);
            String strS0 = hi.s0(strArr, " OR ", null, null, 0, null, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return SubtitleRepository.Companion.buildQuerySpecialSubtitleBundle$lambda$5((String) obj);
                }
            }, 30, null);
            sb.append("(");
            sb.append(strS0);
            sb.append(")");
            d81.D(arrayList, strArr);
            QueryBundle.Builder builder = new QueryBundle.Builder();
            builder.setProjection(SubtitleRepository.PROJECTION_SUBTITLE);
            builder.setSelection(sb.toString());
            builder.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
            return builder.build();
        }

        public static final CharSequence buildQuerySpecialSubtitleBundle$lambda$5(String str) {
            return "_data LIKE?";
        }

        public final QueryBundle buildQuerySubtitleBundle() {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            String[] strArr = pp3.j() ? n7c.d : n7c.c;
            y45.g(strArr);
            String strS0 = hi.s0(strArr, " OR ", null, null, 0, null, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return SubtitleRepository.Companion.buildQuerySubtitleBundle$lambda$2((String) obj);
                }
            }, 30, null);
            sb.append("(");
            sb.append(strS0);
            sb.append(")");
            d81.D(arrayList, strArr);
            QueryBundle.Builder builder = new QueryBundle.Builder();
            builder.setProjection(SubtitleRepository.PROJECTION_SUBTITLE);
            builder.setSelection(sb.toString());
            builder.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
            builder.setSortOrder("date_modified DESC");
            return builder.build();
        }

        public static final CharSequence buildQuerySubtitleBundle$lambda$2(String str) {
            return "_data LIKE?";
        }

        public final SubtitleTrackInfo buildSubtitleInfo(Cursor cursor, String str) {
            SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
            Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
            subtitleTrackInfo.id = intSafe != null ? intSafe.intValue() : 0;
            subtitleTrackInfo.name = CursorExtKt.getStringSafe(cursor, 1);
            Long longSafe = CursorExtKt.getLongSafe(cursor, 2);
            subtitleTrackInfo.time = longSafe != null ? longSafe.longValue() : 0L;
            if (str == null) {
                str = CursorExtKt.getStringSafe(cursor, 3);
            }
            subtitleTrackInfo.path = str;
            Long longSafe2 = CursorExtKt.getLongSafe(cursor, 4);
            subtitleTrackInfo.size = longSafe2 != null ? longSafe2.longValue() : 0L;
            return subtitleTrackInfo;
        }

        public static SubtitleTrackInfo buildSubtitleInfo$default(Companion companion, Cursor cursor, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            return companion.buildSubtitleInfo(cursor, str);
        }

        private final boolean isSubtitlePathSupportCustom(String path) {
            if (path == null) {
                return false;
            }
            List list = SubtitleRepository.supportedExtensions;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (g1a.C(path, (String) it.next(), true)) {
                    return true;
                }
            }
            return false;
        }

        public final SubtitleRecord toSubtitleRecord(SubtitleTrackInfo subtitleTrackInfo, int i) {
            int i2;
            SubtitleRecord subtitleRecord = new SubtitleRecord();
            subtitleRecord._id = i;
            subtitleRecord.subtitle_path = subtitleTrackInfo.path;
            subtitleRecord.sub_track = subtitleTrackInfo.track;
            subtitleRecord.sub_track_time = System.currentTimeMillis();
            subtitleRecord.sub_inner_id = subtitleTrackInfo.sub_inner_id;
            subtitleRecord.sub_inner_name = subtitleTrackInfo.name;
            boolean z = subtitleTrackInfo.isInnerSubtitle;
            subtitleRecord.sub_type = z ? 1 : 0;
            subtitleRecord.sub_local_lang_to = subtitleTrackInfo.sub_local_lang_to;
            if (z) {
                i2 = subtitleTrackInfo.sub_format;
            } else {
                i2 = (TextUtils.equals(subtitleTrackInfo.path, "NULL") || isSubtitlePathSupportCustom(subtitleTrackInfo.path)) ? 1 : -1;
            }
            subtitleRecord.sub_format = i2;
            return subtitleRecord;
        }

        public final SubtitleTrackInfo toSubtitleTrackInfo(SubtitleRecord subtitleRecord) {
            String str = subtitleRecord.subtitle_path;
            if (subtitleRecord.sub_type != 1 && !TextUtils.equals(str, "NULL") && !ge6.p(str, true)) {
                return null;
            }
            SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
            subtitleTrackInfo.track = subtitleRecord.sub_track;
            subtitleTrackInfo.time = subtitleRecord.sub_track_time;
            String str2 = subtitleRecord.subtitle_path;
            subtitleTrackInfo.path = str2;
            subtitleTrackInfo.name = subtitleRecord.sub_type == 1 ? subtitleRecord.sub_inner_name : av3.n(str2);
            subtitleTrackInfo.sub_inner_id = subtitleRecord.sub_inner_id;
            subtitleTrackInfo.isInnerSubtitle = subtitleRecord.sub_type == 1;
            subtitleTrackInfo.sub_format = subtitleRecord.sub_format;
            subtitleTrackInfo.id = subtitleRecord._id;
            subtitleTrackInfo.sub_local_lang_to = subtitleRecord.sub_local_lang_to;
            if (!TextUtils.equals(subtitleRecord.subtitle_path, "NULL")) {
                subtitleTrackInfo.delayTime = subtitleRecord.sub_track_delay_time;
            }
            return subtitleTrackInfo;
        }

        private Companion() {
        }
    }

    public SubtitleRepository() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.mSubtitleDownloadHistoryDao = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return SubtitleRepository.mSubtitleDownloadHistoryDao_delegate$lambda$0();
            }
        });
        this.mSubtitleSettingDao = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return SubtitleRepository.mSubtitleSettingDao_delegate$lambda$1();
            }
        });
        this.mSubtitleRecordDao = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return SubtitleRepository.mSubtitleRecordDao_delegate$lambda$2();
            }
        });
    }

    private final String getFilePathWithoutExtension(String filePath) {
        if (filePath == null) {
            return null;
        }
        if (!j1a.X(filePath, Consts.DOT, false, 2, null)) {
            filePath = null;
        }
        if (filePath == null) {
            return null;
        }
        String strSubstring = filePath.substring(0, j1a.s0(filePath, Consts.DOT, 0, false, 6, null));
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    private final w4a getMSubtitleDownloadHistoryDao() {
        return (w4a) this.mSubtitleDownloadHistoryDao.getValue();
    }

    private final m5a getMSubtitleRecordDao() {
        return (m5a) this.mSubtitleRecordDao.getValue();
    }

    private final h6a getMSubtitleSettingDao() {
        return (h6a) this.mSubtitleSettingDao.getValue();
    }

    public static final w4a mSubtitleDownloadHistoryDao_delegate$lambda$0() {
        return VideoRoomDatabase.h(se.a()).i();
    }

    public static final m5a mSubtitleRecordDao_delegate$lambda$2() {
        return VideoRoomDatabase.h(se.a()).b();
    }

    public static final h6a mSubtitleSettingDao_delegate$lambda$1() {
        return VideoRoomDatabase.h(se.a()).c();
    }

    private final void queryDownloadedSubtitles(List<SubtitleTrackInfo> list, Set<String> pathSet) {
        try {
            List<SubtitleHistory> listQueryAllDownLoadSubtitle = getMSubtitleDownloadHistoryDao().queryAllDownLoadSubtitle(oa1.e());
            y45.g(listQueryAllDownLoadSubtitle);
            for (SubtitleHistory subtitleHistory : i81.M0(listQueryAllDownLoadSubtitle)) {
                String str = subtitleHistory.subPath;
                if (str != null && pathSet.add(str)) {
                    SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
                    subtitleTrackInfo.path = str;
                    subtitleTrackInfo.size = subtitleHistory.subSize;
                    subtitleTrackInfo.name = av3.q(str);
                    list.add(subtitleTrackInfo);
                }
            }
        } catch (Exception e) {
            vmb.c(TAG, "query downloaded subtitles failed: " + e.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01a2 A[EDGE_INSN: B:110:0x01a2->B:86:0x01a2 BREAK  A[LOOP:0: B:96:0x0046->B:112:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:? A[LOOP:1: B:18:0x0097->B:115:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:84:0x019c  */
    private final void querySystemNormalSubtitles(List<SubtitleTrackInfo> list, Set<String> pathSet) {
        int count;
        Throwable th;
        boolean z;
        boolean zAdd;
        boolean z2 = true;
        QueryBundle queryBundleBuildQuerySubtitleBundle = INSTANCE.buildQuerySubtitleBundle();
        Uri uri = queryBundleBuildQuerySubtitleBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildQuerySubtitleBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildQuerySubtitleBundle.getLimitedCount();
        int i = 0;
        int i2 = 0;
        do {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                try {
                    Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildQuerySubtitleBundle, i, mPageSize);
                    if (cursorQuery != null) {
                        Cursor cursor = cursorQuery;
                        try {
                            Cursor cursor2 = cursor;
                            count = cursor2.getCount();
                            try {
                                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end query,count:" + count);
                                while (cursor2.moveToNext()) {
                                    try {
                                        String stringSafe = CursorExtKt.getStringSafe(cursor2, 3);
                                        if (stringSafe != null) {
                                            try {
                                                if (pathSet.add(stringSafe)) {
                                                    try {
                                                        try {
                                                            zAdd = list.add(INSTANCE.buildSubtitleInfo(cursor2, stringSafe));
                                                        } catch (Exception e) {
                                                            e = e;
                                                            String message = e.getMessage();
                                                            StringBuilder sb = new StringBuilder();
                                                            try {
                                                                sb.append("Process normal subtitle results failed: ");
                                                                sb.append(message);
                                                                vmb.c(TAG, sb.toString());
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                                z2 = true;
                                                                th = th;
                                                                try {
                                                                    throw th;
                                                                } catch (Throwable th3) {
                                                                    ly0.a(cursor, th);
                                                                    throw th3;
                                                                }
                                                            }
                                                        }
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        th = th;
                                                        throw th;
                                                    }
                                                } else {
                                                    zAdd = false;
                                                }
                                                z = zAdd == z2 ? z2 : false;
                                            } catch (Exception e2) {
                                                e = e2;
                                            } catch (Throwable th5) {
                                                th = th5;
                                            }
                                            z2 = true;
                                            if (z) {
                                                i2++;
                                            }
                                            if (i2 >= queryBundleBuildQuerySubtitleBundle.getLimitedCount()) {
                                                break;
                                            }
                                        }
                                    } catch (Exception e3) {
                                        e = e3;
                                    }
                                    z2 = true;
                                    if (z) {
                                        i2++;
                                    }
                                    if (i2 >= queryBundleBuildQuerySubtitleBundle.getLimitedCount()) {
                                        break;
                                        break;
                                    }
                                }
                                zfb zfbVar = zfb.a;
                                try {
                                    ly0.a(cursor, null);
                                } catch (Exception e4) {
                                    e = e4;
                                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                                    i += mPageSize;
                                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i2 + ", pageSize:" + mPageSize);
                                    if (count != mPageSize) {
                                        break;
                                    }
                                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                                }
                            } catch (Throwable th6) {
                                th = th6;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            count = 0;
                        }
                    } else {
                        try {
                            vmb.c(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") cursor is null");
                            count = 0;
                        } catch (Exception e5) {
                            e = e5;
                            count = 0;
                            vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                        }
                    }
                } catch (Exception e6) {
                    e = e6;
                    count = 0;
                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                    i += mPageSize;
                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i2 + ", pageSize:" + mPageSize);
                    if (count != mPageSize) {
                        break;
                        break;
                    }
                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                }
            } catch (Exception e7) {
                e = e7;
            }
            i += mPageSize;
            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i2 + ", pageSize:" + mPageSize);
            if (count != mPageSize) {
                break;
                break;
            }
        } while (i2 < queryBundleBuildQuerySubtitleBundle.getLimitedCount());
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
    }

    /* JADX WARN: Code duplicated, block: B:138:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0107  */
    /* JADX WARN: Code duplicated, block: B:44:0x010a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0112 A[LOOP:1: B:16:0x00a2->B:48:0x0112, LOOP_END] */
    private final void querySystemSpecialSubtitles(List<SubtitleTrackInfo> list, Set<String> pathSet) {
        int i;
        int i2;
        int i3;
        int i4;
        Throwable th;
        Cursor cursor;
        int i5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        QueryBundle queryBundleBuildQuerySpecialSubtitleBundle = INSTANCE.buildQuerySpecialSubtitleBundle();
        Uri uri = queryBundleBuildQuerySpecialSubtitleBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildQuerySpecialSubtitleBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildQuerySpecialSubtitleBundle.getLimitedCount();
        int i6 = 0;
        int i7 = 0;
        do {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildQuerySpecialSubtitleBundle, i6, mPageSize);
                if (cursorQuery != null) {
                    Cursor cursor2 = cursorQuery;
                    try {
                        Cursor cursor3 = cursor2;
                        int count = cursor3.getCount();
                        try {
                            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end query,count:" + count);
                            while (true) {
                                if (!cursor3.moveToNext()) {
                                    i3 = count;
                                    i = 1;
                                    i2 = 0;
                                    break;
                                }
                                try {
                                    try {
                                        String stringSafe = CursorExtKt.getStringSafe(cursor3, 3);
                                        if (stringSafe != null) {
                                            SubtitleTrackInfo subtitleTrackInfoBuildSubtitleInfo = INSTANCE.buildSubtitleInfo(cursor3, stringSafe);
                                            cursor = cursor3;
                                            i3 = count;
                                            i2 = 0;
                                            try {
                                                if (g1a.D(stringSafe, ".sub", false, 2, null) ? arrayList2.add(subtitleTrackInfoBuildSubtitleInfo) : arrayList.add(subtitleTrackInfoBuildSubtitleInfo)) {
                                                    i5 = 1;
                                                }
                                            } catch (Exception e) {
                                                e = e;
                                                try {
                                                    vmb.c(TAG, "Process special subtitle results failed: " + e.getMessage());
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    i = 1;
                                                    th = th;
                                                    try {
                                                        throw th;
                                                    } catch (Throwable th3) {
                                                        ly0.a(cursor2, th);
                                                        throw th3;
                                                    }
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                th = th;
                                                i = 1;
                                                throw th;
                                            }
                                            if (i5 != 0) {
                                                i = 1;
                                                i7++;
                                            } else {
                                                i = 1;
                                            }
                                            if (i7 >= queryBundleBuildQuerySpecialSubtitleBundle.getLimitedCount()) {
                                                break;
                                            }
                                            cursor3 = cursor;
                                            count = i3;
                                        } else {
                                            cursor = cursor3;
                                            i3 = count;
                                            i2 = 0;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        cursor = cursor3;
                                        i3 = count;
                                        i2 = 0;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        i3 = count;
                                        i2 = 0;
                                    }
                                    if (i7 >= queryBundleBuildQuerySpecialSubtitleBundle.getLimitedCount()) {
                                        break;
                                        break;
                                    } else {
                                        cursor3 = cursor;
                                        count = i3;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    th = th;
                                    throw th;
                                }
                                i5 = i2;
                                if (i5 != 0) {
                                    i = 1;
                                    i7++;
                                } else {
                                    i = 1;
                                }
                            }
                            zfb zfbVar = zfb.a;
                            try {
                                ly0.a(cursor2, null);
                            } catch (Exception e3) {
                                e = e3;
                                vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                            }
                            i4 = i3;
                        } catch (Throwable th7) {
                            th = th7;
                            i3 = count;
                            i = 1;
                            i2 = 0;
                        }
                    } catch (Throwable th8) {
                        i = 1;
                        i2 = 0;
                        th = th8;
                        i3 = 0;
                    }
                } else {
                    i = 1;
                    i2 = 0;
                    try {
                        vmb.c(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") cursor is null");
                        i4 = 0;
                    } catch (Exception e4) {
                        e = e4;
                        i3 = i2;
                        vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                        i4 = i3;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                i = 1;
                i2 = 0;
            }
            i6 += mPageSize;
            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + i4 + ", totalNumber:" + i7 + ", pageSize:" + mPageSize);
            if (i4 != mPageSize) {
                break;
            }
        } while (i7 < queryBundleBuildQuerySpecialSubtitleBundle.getLimitedCount());
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String filePathWithoutExtension = getFilePathWithoutExtension(((SubtitleTrackInfo) it.next()).path);
            if (filePathWithoutExtension != null) {
                arrayList3.add(filePathWithoutExtension);
            }
        }
        Set setG1 = i81.g1(arrayList3);
        ArrayList<SubtitleTrackInfo> arrayList4 = new ArrayList();
        for (Object obj : arrayList) {
            SubtitleTrackInfo subtitleTrackInfo = (SubtitleTrackInfo) obj;
            String filePathWithoutExtension2 = getFilePathWithoutExtension(subtitleTrackInfo.path);
            int i8 = (filePathWithoutExtension2 == null || !setG1.contains(filePathWithoutExtension2)) ? i2 : i;
            if (i8 == 0) {
                vmb.i(TAG, "querySpecialSystemSubtitles notExistSubFile: " + subtitleTrackInfo);
            }
            if (i8 != 0) {
                arrayList4.add(obj);
            }
        }
        for (SubtitleTrackInfo subtitleTrackInfo2 : arrayList4) {
            String str = subtitleTrackInfo2.path;
            if (str != null && pathSet.add(str)) {
                list.add(subtitleTrackInfo2);
            }
        }
    }

    public final int deleteDownloadRecord(SubtitleHistory record) {
        Object objM279constructorimpl;
        y45.j(record, "record");
        try {
            Result.Companion companion = Result.INSTANCE;
            getMSubtitleDownloadHistoryDao().deleteSubtitleHistory(record);
            objM279constructorimpl = Result.m279constructorimpl(1);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.d(TAG, "deleteDownloadRecord error ::: ", thM282exceptionOrNullimpl);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = -1;
        }
        return ((Number) objM279constructorimpl).intValue();
    }

    public final int deleteSubtitleUsageRecord(String subtitlePath) {
        y45.j(subtitlePath, "subtitlePath");
        return getMSubtitleRecordDao().deleteSubtitleRecordByPath(subtitlePath);
    }

    public final int insertDownloadRecord(SubtitleHistory record) {
        Object objM279constructorimpl;
        y45.j(record, "record");
        try {
            Result.Companion companion = Result.INSTANCE;
            getMSubtitleDownloadHistoryDao().insertSubtitleHistory(record);
            objM279constructorimpl = Result.m279constructorimpl(1);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.d(TAG, "insertDownloadRecord error ::: ", thM282exceptionOrNullimpl);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = -1;
        }
        return ((Number) objM279constructorimpl).intValue();
    }

    public final int insertSubtitleSetting(SubtitleSettingData subtitleSetting) {
        y45.j(subtitleSetting, "subtitleSetting");
        try {
            getMSubtitleSettingDao().insertSubtitleSetting(subtitleSetting);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public final int insertSubtitleUsageRecord(int mediaId, SubtitleTrackInfo subtitle) {
        String str;
        y45.j(subtitle, AuthInfo.Component.CODE_SUBTITLE);
        if (!subtitle.isInnerSubtitle && ((str = subtitle.path) == null || str.length() == 0)) {
            vmb.i(TAG, "insertSubtitle SubtitleTrackInfo sud is null");
            return -1;
        }
        try {
            SubtitleRecord subtitleRecordQueryInnerSubtitleByMediaAndTrack = subtitle.isInnerSubtitle ? getMSubtitleRecordDao().queryInnerSubtitleByMediaAndTrack(mediaId, subtitle.track) : getMSubtitleRecordDao().querySubtitleByMediaAndTrackAndPath(mediaId, subtitle.track, subtitle.path);
            vmb.a(TAG, "Insert Subtitle oldSubtitleRecord:" + subtitleRecordQueryInnerSubtitleByMediaAndTrack);
            SubtitleRecord subtitleRecord = INSTANCE.toSubtitleRecord(subtitle, mediaId);
            if (subtitleRecordQueryInnerSubtitleByMediaAndTrack == null) {
                subtitleRecord.sub_track_delay_time = 0.0f;
                getMSubtitleRecordDao().insertSubtitleRecord(subtitleRecord);
            } else {
                subtitleRecord.id = subtitleRecordQueryInnerSubtitleByMediaAndTrack.id;
                subtitleRecord.sub_track_delay_time = subtitle.delayTime;
                getMSubtitleRecordDao().updateSubtitleRecord(subtitleRecord);
            }
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override
    public Uri providerUri() {
        return qq3.b.f();
    }

    public final SubtitleSettingData querySubtitleSetting() {
        return getMSubtitleSettingDao().queryNewestSubtitleSetting();
    }

    public final List<SubtitleTrackInfo> querySubtitleUsageRecordList(int mediaId, int track) {
        List<SubtitleRecord> allDataByMediaIdAndTrack = getMSubtitleRecordDao().getAllDataByMediaIdAndTrack(mediaId, track);
        y45.i(allDataByMediaIdAndTrack, "getAllDataByMediaIdAndTrack(...)");
        ArrayList<SubtitleRecord> arrayList = new ArrayList();
        for (Object obj : allDataByMediaIdAndTrack) {
            if (((SubtitleRecord) obj) != null) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return y71.k();
        }
        ArrayList arrayList2 = new ArrayList();
        for (SubtitleRecord subtitleRecord : arrayList) {
            Companion companion = INSTANCE;
            y45.g(subtitleRecord);
            SubtitleTrackInfo subtitleTrackInfo = companion.toSubtitleTrackInfo(subtitleRecord);
            if (subtitleTrackInfo == null) {
                getMSubtitleRecordDao().deleteSubtitleRecordByMediaIdAndPath(mediaId, subtitleRecord.subtitle_path);
            }
            if (subtitleTrackInfo != null) {
                arrayList2.add(subtitleTrackInfo);
            }
        }
        return arrayList2;
    }

    public final List<SubtitleTrackInfo> querySystemSubtitles() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        try {
            queryDownloadedSubtitles(arrayList, hashSet);
            querySystemNormalSubtitles(arrayList, hashSet);
            if (pp3.j()) {
                querySystemSpecialSubtitles(arrayList, hashSet);
            }
            vmb.a(TAG, "Query system subtitles total: " + arrayList.size());
            q5a.l(arrayList);
        } catch (Exception e) {
            vmb.c(TAG, "Query system subtitles failed: " + e.getMessage());
        }
        return arrayList;
    }
}
