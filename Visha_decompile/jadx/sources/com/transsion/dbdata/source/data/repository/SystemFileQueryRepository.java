package com.transsion.dbdata.source.data.repository;

import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.source.data.ktx.ActionExtKt;
import com.transsion.dbdata.source.data.ktx.CursorExtKt;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.ktx.QueryBundleKtxKt;
import com.transsion.dbdata.source.data.ktx.SqlKt;
import com.transsion.dbdata.source.data.repository.QueryBundle;
import com.transsion.dbdata.source.data.repository.SystemFileQueryRepository;
import defpackage.abb;
import defpackage.e74;
import defpackage.g1a;
import defpackage.ge6;
import defpackage.hi;
import defpackage.j1a;
import defpackage.ly0;
import defpackage.pc9;
import defpackage.qq3;
import defpackage.s74;
import defpackage.tr4;
import defpackage.ubc;
import defpackage.uf1;
import defpackage.vmb;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.c;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\u000b\u001a\u00020\n*\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0014J\u001b\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\u0006\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\bJ1\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b!\u0010\"J\u0013\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00120\u0006¢\u0006\u0004\b#\u0010\u001eJ!\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0006¢\u0006\u0004\b$\u0010%J-\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b&\u0010\u001cJ\u0013\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00120\u0006¢\u0006\u0004\b'\u0010\u001eJ#\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\u0006\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\n¢\u0006\u0004\b*\u0010+J5\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010-\u001a\u00020\n2\b\b\u0002\u0010.\u001a\u00020\n¢\u0006\u0004\b/\u00100J+\u00102\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00120\u0006¢\u0006\u0004\b2\u00103J\u001d\u00104\u001a\b\u0012\u0004\u0012\u00020\u00120\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b4\u0010\bJ\u0013\u00105\u001a\b\u0012\u0004\u0012\u00020\u00120\u0006¢\u0006\u0004\b5\u0010\u001eJ\u0019\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001f06¢\u0006\u0004\b7\u00108¨\u00069"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;", MethodDecl.initName, "()V", "", PlayAudioData.TAG_PARENT_PATH, "", "getNotSupportAndHlsVideoFilePath", "(Ljava/lang/String;)Ljava/util/List;", "Ljava/io/File;", "", "isValidHlsWithLogging", "(Ljava/io/File;)Z", "Landroid/net/Uri;", "providerUri", "()Landroid/net/Uri;", "Lxk8$x;", "action", "Lcom/transsion/dbdata/beans/media/MediaItem;", "querySingle", "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;", "querySingleMV", "searchText", "searchMVList", "", "mediaIds", "displayName", "queryMVList", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "queryAllMVList", "()Ljava/util/List;", "", "bucketId", "queryBucketMVList", "(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;", "queryRecentMVList", "queryBatchVideoByIds", "(Ljava/util/List;)Ljava/util/List;", "queryBatchVideoByIdsAndName", "queryAllVideo", "duration", "isLongerThan", "queryBatchVideoByDuration", "(JZ)Ljava/util/List;", "paths", "needFileTableVideoQueryCondition", "checkFileSuffix", "queryBatchVideoByPaths", "(Ljava/util/List;ZZ)Ljava/util/List;", "mediaItems", "queryBatchVideoByParentPath", "(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;", "searchVideo", "queryRecentVideo", "Lkotlin/Pair;", "getVideoTotalTrack", "()Lkotlin/Pair;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemFileQueryRepository extends SystemBaseQueryRepository {
    private final List<String> getNotSupportAndHlsVideoFilePath(String parentPath) {
        File[] fileArrListFiles;
        pc9 pc9VarK;
        pc9 pc9VarF;
        pc9 pc9VarS;
        List<String> listC0;
        if (parentPath == null || parentPath.length() == 0) {
            return null;
        }
        if (!g1a.R(parentPath, "/", false, 2, null)) {
            parentPath = uf1.a.f() + File.separator + parentPath;
        }
        File file = new File(parentPath);
        if (!file.isDirectory()) {
            file = null;
        }
        if (file == null || (fileArrListFiles = file.listFiles()) == null || (pc9VarK = hi.K(fileArrListFiles)) == null || (pc9VarF = SequencesKt___SequencesKt.F(pc9VarK, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((File) obj).isFile());
            }
        })) == null || (pc9VarS = SequencesKt___SequencesKt.S(pc9VarF, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemFileQueryRepository.getNotSupportAndHlsVideoFilePath$lambda$17(this.b, (File) obj);
            }
        })) == null || (listC0 = SequencesKt___SequencesKt.c0(pc9VarS)) == null || listC0.isEmpty()) {
            return null;
        }
        return listC0;
    }

    public static final String getNotSupportAndHlsVideoFilePath$lambda$17(SystemFileQueryRepository systemFileQueryRepository, File file) {
        String path = file.getPath();
        ge6 ge6Var = ge6.a;
        y45.g(path);
        if (ge6Var.f(path, true)) {
            return path;
        }
        y45.g(file);
        if (systemFileQueryRepository.isValidHlsWithLogging(file)) {
            return path;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004b  */
    private final boolean isValidHlsWithLogging(File file) {
        Object objM279constructorimpl;
        String str;
        String name = file.getName();
        try {
            Result.Companion companion = Result.INSTANCE;
            tr4.b(file);
            objM279constructorimpl = Result.m279constructorimpl(null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl == null) {
            ubc.a(objM279constructorimpl);
            Log.w(getMTag(), "HLS verification failed: " + name);
            return false;
        }
        String message = thM282exceptionOrNullimpl.getMessage();
        if (message == null) {
            str = "Unknown error";
        } else {
            str = j1a.o0(message) ? null : message;
            if (str == null) {
                str = "Unknown error";
            }
        }
        Log.w(getMTag(), "HLS checks for abnormalities [" + name + "]: " + str);
        return false;
    }

    public static final MediaItem queryAllVideo$lambda$8(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static final MediaItem queryBatchVideoByDuration$lambda$9(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static List queryBatchVideoByIdsAndName$default(SystemFileQueryRepository systemFileQueryRepository, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return systemFileQueryRepository.queryBatchVideoByIdsAndName(list, str);
    }

    public static final MediaItem queryBatchVideoByIdsAndName$lambda$7(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static List queryBatchVideoByPaths$default(SystemFileQueryRepository systemFileQueryRepository, List list, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return systemFileQueryRepository.queryBatchVideoByPaths(list, z, z2);
    }

    public static final zfb queryBatchVideoByPaths$lambda$10(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildFileQueryBundle");
        builder.setSelection(str);
        return zfb.a;
    }

    public static final MediaItem queryBatchVideoByPaths$lambda$11(boolean z, Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, z, false, true, 4, null);
    }

    public static List queryBucketMVList$default(SystemFileQueryRepository systemFileQueryRepository, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return systemFileQueryRepository.queryBucketMVList(l, str);
    }

    public static final MediaItem queryBucketMVList$lambda$5$lambda$4(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List queryMVList$default(SystemFileQueryRepository systemFileQueryRepository, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return systemFileQueryRepository.queryMVList(list, str);
    }

    public static final MediaItem queryMVList$lambda$3(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static final MediaItem queryRecentMVList$lambda$6(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static final MediaItem queryRecentVideo$lambda$25(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static final MediaItem querySingle$lambda$0(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, true, 6, null);
    }

    public static final MediaItem querySingleMV$lambda$1(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, false, 12, null);
    }

    public static final MediaItem searchMVList$lambda$2(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    public static final MediaItem searchVideo$lambda$24(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, true, false, true, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0152  */
    /* JADX WARN: Code duplicated, block: B:69:0x0158 A[EDGE_INSN: B:69:0x0158->B:54:0x0158 BREAK  A[LOOP:0: B:66:0x0050->B:71:?], SYNTHETIC] */
    public final Pair<Integer, Long> getVideoTotalTrack() {
        int count;
        Throwable th;
        QueryBundle queryBundleBuildQueryVideoBundleFromFileTable = QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(new StringBuilder(), new ArrayList());
        Uri uri = queryBundleBuildQueryVideoBundleFromFileTable.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildQueryVideoBundleFromFileTable.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildQueryVideoBundleFromFileTable.getLimitedCount();
        int i = 0;
        int i2 = 0;
        long jLongValue = 0;
        do {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                try {
                    Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildQueryVideoBundleFromFileTable, i, mPageSize);
                    if (cursorQuery != null) {
                        Cursor cursor = cursorQuery;
                        try {
                            Cursor cursor2 = cursor;
                            count = cursor2.getCount();
                            try {
                                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end query,count:" + count);
                                while (cursor2.moveToNext()) {
                                    Long longSafe = CursorExtKt.getLongSafe(cursor2, 8);
                                    jLongValue += longSafe != null ? longSafe.longValue() : 0L;
                                    if (ge6.q(CursorExtKt.getStringSafe(cursor2, 6), false, 2, null)) {
                                        i2++;
                                    }
                                    if (i2 >= queryBundleBuildQueryVideoBundleFromFileTable.getLimitedCount()) {
                                        break;
                                    }
                                }
                                zfb zfbVar = zfb.a;
                                try {
                                    ly0.a(cursor, null);
                                } catch (Exception e) {
                                    e = e;
                                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    throw th;
                                } catch (Throwable th3) {
                                    ly0.a(cursor, th);
                                    throw th3;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            count = 0;
                        }
                    } else {
                        vmb.c(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") cursor is null");
                        count = 0;
                    }
                } catch (Exception e2) {
                    e = e2;
                    count = 0;
                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                    i += mPageSize;
                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i2 + ", pageSize:" + mPageSize);
                    if (count == mPageSize) {
                        break;
                    }
                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                    return abb.a(Integer.valueOf(i2), Long.valueOf(jLongValue));
                }
            } catch (Exception e3) {
                e = e3;
            }
            i += mPageSize;
            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i2 + ", pageSize:" + mPageSize);
            if (count == mPageSize) {
                break;
                break;
            }
        } while (i2 < queryBundleBuildQueryVideoBundleFromFileTable.getLimitedCount());
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
        return abb.a(Integer.valueOf(i2), Long.valueOf(jLongValue));
    }

    @Override
    public Uri providerUri() {
        return qq3.b.f();
    }

    public final List<MediaItem> queryAllMVList() {
        return queryMVList(null, null);
    }

    public final List<MediaItem> queryAllVideo() {
        return m121queryBatch(QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(new StringBuilder(), new ArrayList()), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryAllVideo$lambda$8((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchVideoByDuration(long duration, boolean isLongerThan) {
        return duration <= 0 ? y71.k() : m121queryBatch(QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(new StringBuilder(SqlKt.toDurationSelection(duration, isLongerThan)), new ArrayList()), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryBatchVideoByDuration$lambda$9((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchVideoByIds(List<Integer> mediaIds) {
        y45.j(mediaIds, "mediaIds");
        return queryBatchVideoByIdsAndName(mediaIds, null);
    }

    public final List<MediaItem> queryBatchVideoByIdsAndName(List<Integer> mediaIds, String displayName) {
        y45.j(mediaIds, "mediaIds");
        if (mediaIds.isEmpty()) {
            return y71.k();
        }
        Pair<StringBuilder, List<String>> pairBuildIdsAndNameCondition = SqlKt.buildIdsAndNameCondition(mediaIds, displayName);
        return m121queryBatch(QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(pairBuildIdsAndNameCondition.component1(), pairBuildIdsAndNameCondition.component2()), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryBatchVideoByIdsAndName$lambda$7((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchVideoByParentPath(String parentPath, List<? extends MediaItem> mediaItems) {
        y45.j(mediaItems, "mediaItems");
        List<String> notSupportAndHlsVideoFilePath = getNotSupportAndHlsVideoFilePath(parentPath);
        List<String> list = notSupportAndHlsVideoFilePath;
        if (list == null || list.isEmpty()) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = mediaItems.iterator();
        while (it.hasNext()) {
            String str = ((MediaItem) it.next()).data;
            if (str != null) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : notSupportAndHlsVideoFilePath) {
            if (!arrayList.contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        return queryBatchVideoByPaths$default(this, arrayList2, false, false, 6, null);
    }

    public final List<MediaItem> queryBatchVideoByPaths(List<String> paths, boolean needFileTableVideoQueryCondition, final boolean checkFileSuffix) {
        y45.j(paths, "paths");
        if (paths.isEmpty()) {
            return y71.k();
        }
        final String dataInSelection = SqlKt.toDataInSelection(paths);
        return m121queryBatch(needFileTableVideoQueryCondition ? QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(new StringBuilder(dataInSelection), new ArrayList()) : QueryBundleKtxKt.buildFileQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemFileQueryRepository.queryBatchVideoByPaths$lambda$10(dataInSelection, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryBatchVideoByPaths$lambda$11(checkFileSuffix, (Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBucketMVList(Long bucketId, String parentPath) {
        Pair pairA = bucketId != null ? abb.a("bucket_id = ?", bucketId.toString()) : null;
        if (pairA != null) {
            return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle(new StringBuilder((String) pairA.component1()), y71.q((String) pairA.component2()), true), new s74() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return SystemFileQueryRepository.queryBucketMVList$lambda$5$lambda$4((Cursor) obj, (Uri) obj2);
                }
            });
        }
        return null;
    }

    public final List<MediaItem> queryMVList(List<Integer> mediaIds, String displayName) {
        Pair<StringBuilder, List<String>> pairBuildIdsAndNameCondition = SqlKt.buildIdsAndNameCondition(mediaIds, displayName);
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle(pairBuildIdsAndNameCondition.component1(), pairBuildIdsAndNameCondition.component2(), true), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryMVList$lambda$3((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryRecentMVList() {
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle(new StringBuilder("date_modified > ?"), y71.q(String.valueOf(Math.abs((System.currentTimeMillis() / ((long) 1000)) - ((long) 604800)))), true), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryRecentMVList$lambda$6((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryRecentVideo() {
        return m121queryBatch(QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(new StringBuilder("date_modified > ?"), y71.q(String.valueOf(Math.abs((System.currentTimeMillis() / ((long) 1000)) - ((long) 604800))))), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.queryRecentVideo$lambda$25((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final MediaItem querySingle(xk8.x action) {
        y45.j(action, "action");
        QueryBundle queryBundle = ActionExtKt.toQueryBundle(action, qq3.b.e());
        if (queryBundle == null) {
            return null;
        }
        return (MediaItem) querySingle(queryBundle, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.querySingle$lambda$0((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final MediaItem querySingleMV(xk8.x action) {
        y45.j(action, "action");
        QueryBundle queryMVBundle = ActionExtKt.toQueryMVBundle(action, true);
        if (queryMVBundle == null) {
            return null;
        }
        return (MediaItem) querySingle(queryMVBundle, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.querySingleMV$lambda$1((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> searchMVList(String searchText) {
        y45.j(searchText, "searchText");
        if (searchText.length() == 0) {
            return y71.k();
        }
        Pair pairBuildSearchCondition$default = SqlKt.buildSearchCondition$default(searchText, false, 2, null);
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle((StringBuilder) pairBuildSearchCondition$default.component1(), (List) pairBuildSearchCondition$default.component2(), true), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.searchMVList$lambda$2((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> searchVideo(String searchText) {
        if (searchText == null || searchText.length() == 0) {
            return y71.k();
        }
        Pair<StringBuilder, List<String>> pairBuildSearchCondition = SqlKt.buildSearchCondition(searchText, false);
        return m121queryBatch(QueryBundleKtxKt.buildQueryVideoBundleFromFileTable(pairBuildSearchCondition.component1(), pairBuildSearchCondition.component2()), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemFileQueryRepository.searchVideo$lambda$24((Cursor) obj, (Uri) obj2);
            }
        });
    }
}
