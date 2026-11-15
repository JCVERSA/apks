package com.transsion.dbdata.source.data.repository;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.SparseArray;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.VideoInfoTrack;
import com.transsion.dbdata.source.data.ktx.ActionExtKt;
import com.transsion.dbdata.source.data.ktx.CursorExtKt;
import com.transsion.dbdata.source.data.ktx.MediaBucketExtKt;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.ktx.QueryBundleKtxKt;
import com.transsion.dbdata.source.data.ktx.SqlKt;
import com.transsion.dbdata.source.data.ktx.UriKtxKt;
import com.transsion.dbdata.source.data.repository.QueryBundle;
import com.transsion.dbdata.source.data.repository.SystemVideoQueryRepository;
import defpackage.abb;
import defpackage.av3;
import defpackage.e74;
import defpackage.ge6;
import defpackage.ly0;
import defpackage.oa1;
import defpackage.qtb;
import defpackage.s74;
import defpackage.vmb;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.ykc;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u0018\u0010\u0019J1\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010!\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u00042\b\u0010 \u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b!\u0010\nJ-\u0010%\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b%\u0010&J\u001f\u0010'\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010$\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b'\u0010\u0017J\u001f\u0010)\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010(\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b)\u0010\u0017J\u0013\u0010*\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b*\u0010\u0019J\u0017\u0010+\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b+\u0010\u0014J\u0019\u0010+\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\u000bH\u0000¢\u0006\u0004\b,\u0010\u000eJ!\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0007¢\u0006\u0004\b-\u0010.J!\u0010/\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0007¢\u0006\u0004\b/\u0010.J\u0013\u00100\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b0\u0010\u0019J/\u00107\u001a\b\u0012\u0004\u0012\u000203062\u0006\u00101\u001a\u00020\u001a2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020402¢\u0006\u0004\b7\u00108J#\u0010<\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u00109\u001a\u00020\"2\u0006\u0010;\u001a\u00020:¢\u0006\u0004\b<\u0010=J-\u0010>\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b>\u0010\u001eJ+\u0010?\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b?\u0010&J!\u0010@\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b@\u0010\u0017J\u001d\u0010A\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\bA\u0010\u0017J\u0013\u0010B\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\bB\u0010\u0019J\u0019\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\"0C¢\u0006\u0004\bD\u0010EJ\u0013\u0010G\u001a\b\u0012\u0004\u0012\u00020F0\u0007¢\u0006\u0004\bG\u0010\u0019¨\u0006H"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;", MethodDecl.initName, "()V", "", "primaryConditionClause", "primaryConditionArg", "", "Lcom/transsion/dbdata/beans/media/MediaItem;", "queryMVListByPrimaryCondition", "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;", "Landroid/net/Uri;", "uri", "queryOtherAppVideoItem", "(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;", "providerUri", "()Landroid/net/Uri;", "Lxk8$x;", "action", "querySingleMV", "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;", "searchText", "searchMVList", "(Ljava/lang/String;)Ljava/util/List;", "queryAllMVList", "()Ljava/util/List;", "", "mediaIds", "displayName", "queryMVList", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "albumName", "artistName", "queryAlbumArtistMVList", "", "bucketId", PlayAudioData.TAG_PARENT_PATH, "queryBucketMVList", "(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;", "queryParentPathMVList", "title", "queryTitleMVList", "queryRecentMVList", "querySingle", "querySingle$dbdata_release", "queryBatchByIds", "(Ljava/util/List;)Ljava/util/List;", "queryWhatsAppMedias", "queryAll", "limitedCount", "Lkotlin/Function1;", "Lcom/transsion/dbdata/beans/media/MediaBucket;", "Lzfb;", "indexUpdate", "Landroid/util/SparseArray;", "queryBuckets", "(ILe74;)Landroid/util/SparseArray;", "duration", "", "isLongerThan", "queryBatchByDuration", "(JZ)Ljava/util/List;", "queryBatchByIdsAndName", "queryBatchByBucket", "queryBatchByParentPath", "search", "queryRecent", "Lkotlin/Pair;", "getVideoTotalTrack", "()Lkotlin/Pair;", "Lcom/transsion/dbdata/beans/media/VideoInfoTrack;", "getVideoInfoTrack", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemVideoQueryRepository extends SystemBaseQueryRepository {
    public static final MediaItem queryAll$lambda$16(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final MediaItem queryAllMVList$lambda$2(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static List queryBatchByBucket$default(SystemVideoQueryRepository systemVideoQueryRepository, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return systemVideoQueryRepository.queryBatchByBucket(l, str);
    }

    public static final zfb queryBatchByBucket$lambda$24(Long l, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setSelection("bucket_id = ?");
        builder.setSelectionArgs(new String[]{l.toString()});
        builder.setLimitedCount(oa1.e());
        return zfb.a;
    }

    public static final MediaItem queryBatchByBucket$lambda$25(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final zfb queryBatchByDuration$lambda$20(long j, boolean z, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setSelection(SqlKt.toDurationSelection(j, z));
        return zfb.a;
    }

    public static final MediaItem queryBatchByDuration$lambda$21(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static List queryBatchByIdsAndName$default(SystemVideoQueryRepository systemVideoQueryRepository, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return systemVideoQueryRepository.queryBatchByIdsAndName(list, str);
    }

    public static final zfb queryBatchByIdsAndName$lambda$22(StringBuilder sb, List list, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setSelection(sb.toString());
        builder.setSelectionArgs((String[]) list.toArray(new String[0]));
        return zfb.a;
    }

    public static final MediaItem queryBatchByIdsAndName$lambda$23(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static List queryBatchByParentPath$default(SystemVideoQueryRepository systemVideoQueryRepository, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return systemVideoQueryRepository.queryBatchByParentPath(str);
    }

    public static final zfb queryBatchByParentPath$lambda$26(String str, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setSortOrder("date_modified DESC");
        builder.setSelection(str);
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final MediaItem queryBatchByParentPath$lambda$27(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static List queryBucketMVList$default(SystemVideoQueryRepository systemVideoQueryRepository, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return systemVideoQueryRepository.queryBucketMVList(l, str);
    }

    public static final zfb queryBuckets$lambda$17(int i, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setLimitedCount(i);
        return zfb.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List queryMVList$default(SystemVideoQueryRepository systemVideoQueryRepository, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return systemVideoQueryRepository.queryMVList(list, str);
    }

    public static final MediaItem queryMVList$lambda$3(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    private final List<MediaItem> queryMVListByPrimaryCondition(String primaryConditionClause, String primaryConditionArg) {
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle(new StringBuilder(primaryConditionClause), y71.q(primaryConditionArg), false), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryMVListByPrimaryCondition$lambda$7((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public static final MediaItem queryMVListByPrimaryCondition$lambda$7(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    private final MediaItem queryOtherAppVideoItem(final Uri uri) {
        if (uri == null) {
            return null;
        }
        MediaItem mediaItem = (MediaItem) querySingle(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryOtherAppVideoItem$lambda$8(uri, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryOtherAppVideoItem$lambda$9((Cursor) obj, (Uri) obj2);
            }
        });
        return mediaItem == null ? UriKtxKt.toMediaItem(uri) : mediaItem;
    }

    public static final zfb queryOtherAppVideoItem$lambda$8(Uri uri, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setUri(uri);
        return zfb.a;
    }

    public static final MediaItem queryOtherAppVideoItem$lambda$9(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "realUri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final zfb queryRecent$lambda$30(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setSelection("date_modified > ?");
        builder.setSelectionArgs(new String[]{str});
        builder.setLimitedCount(oa1.e());
        return zfb.a;
    }

    public static final MediaItem queryRecent$lambda$31(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final MediaItem querySingle$lambda$11(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final zfb querySingle$lambda$12(Uri uri, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setUri(uri);
        return zfb.a;
    }

    public static final MediaItem querySingle$lambda$13(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "realUri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final MediaItem querySingleMV$lambda$0(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final zfb search$lambda$28(StringBuilder sb, List list, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildVideoQueryBundle");
        builder.setSelection(sb.toString());
        builder.setSelectionArgs((String[]) list.toArray(new String[0]));
        return zfb.a;
    }

    public static final MediaItem search$lambda$29(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    public static final MediaItem searchMVList$lambda$1(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildMediaItem$default(cursor, uri, false, false, false, 14, null);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x016c  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a4 A[LOOP:2: B:62:0x019e->B:64:0x01a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x0172 A[EDGE_INSN: B:83:0x0172->B:61:0x0172 BREAK  A[LOOP:0: B:76:0x004b->B:85:?], SYNTHETIC] */
    public final List<VideoInfoTrack> getVideoInfoTrack() {
        int count;
        ArrayList arrayList;
        Throwable th;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        QueryBundle queryBundleBuildVideoQueryBundle$default = QueryBundleKtxKt.buildVideoQueryBundle$default(null, 1, null);
        Uri uri = queryBundleBuildVideoQueryBundle$default.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildVideoQueryBundle$default.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildVideoQueryBundle$default.getLimitedCount();
        int i = 0;
        int i2 = 0;
        do {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                try {
                    Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildVideoQueryBundle$default, i, mPageSize);
                    if (cursorQuery != null) {
                        Cursor cursor = cursorQuery;
                        try {
                            Cursor cursor2 = cursor;
                            count = cursor2.getCount();
                            try {
                                String mTag = getMTag();
                                StringBuilder sb = new StringBuilder();
                                sb.append("queryBatchNoResult(uri:");
                                sb.append(uri2);
                                try {
                                    sb.append(") end query,count:");
                                    sb.append(count);
                                    vmb.a(mTag, sb.toString());
                                    while (cursor2.moveToNext()) {
                                        String stringSafe = CursorExtKt.getStringSafe(cursor2, 3);
                                        boolean zQ = ge6.q(CursorExtKt.getStringSafe(cursor2, 6), false, 2, null);
                                        if (zQ) {
                                            try {
                                                String strJ = av3.j(stringSafe);
                                                y45.g(strJ);
                                                linkedHashMap.put(strJ, Integer.valueOf(((Number) linkedHashMap.getOrDefault(strJ, 0)).intValue() + 1));
                                            } catch (Throwable th2) {
                                                th = th2;
                                                try {
                                                    throw th;
                                                } catch (Throwable th3) {
                                                    ly0.a(cursor, th);
                                                    throw th3;
                                                }
                                            }
                                        }
                                        if (zQ) {
                                            i2++;
                                        }
                                        if (i2 >= queryBundleBuildVideoQueryBundle$default.getLimitedCount()) {
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
                                } catch (Throwable th4) {
                                    th = th4;
                                    th = th;
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        } catch (Throwable th6) {
                            th = th6;
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
                    arrayList = new ArrayList(linkedHashMap.size());
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        arrayList.add(new VideoInfoTrack((String) entry.getKey(), ((Number) entry.getValue()).intValue()));
                    }
                    return arrayList;
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
        } while (i2 < queryBundleBuildVideoQueryBundle$default.getLimitedCount());
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
        arrayList = new ArrayList(linkedHashMap.size());
        while (r1.hasNext()) {
            arrayList.add(new VideoInfoTrack((String) entry.getKey(), ((Number) entry.getValue()).intValue()));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x016d A[EDGE_INSN: B:106:0x016d->B:79:0x016d BREAK  A[LOOP:0: B:101:0x0048->B:78:0x016a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x0163  */
    public final Pair<Integer, Long> getVideoTotalTrack() {
        int count;
        Throwable th;
        long jLongValue;
        QueryBundle queryBundleBuildVideoQueryBundle$default = QueryBundleKtxKt.buildVideoQueryBundle$default(null, 1, null);
        Uri uri = queryBundleBuildVideoQueryBundle$default.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildVideoQueryBundle$default.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildVideoQueryBundle$default.getLimitedCount();
        int i = 0;
        int i2 = 0;
        long j = 0;
        do {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                try {
                    Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildVideoQueryBundle$default, i, mPageSize);
                    if (cursorQuery != null) {
                        Cursor cursor = cursorQuery;
                        try {
                            Cursor cursor2 = cursor;
                            count = cursor2.getCount();
                            try {
                                String mTag = getMTag();
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("queryBatchNoResult(uri:");
                                    sb.append(uri2);
                                    try {
                                        sb.append(") end query,count:");
                                        sb.append(count);
                                        vmb.a(mTag, sb.toString());
                                        while (cursor2.moveToNext()) {
                                            try {
                                                Long longSafe = CursorExtKt.getLongSafe(cursor2, 8);
                                                if (longSafe != null) {
                                                    try {
                                                        jLongValue = longSafe.longValue();
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        try {
                                                            throw th;
                                                        } catch (Throwable th3) {
                                                            ly0.a(cursor, th);
                                                            throw th3;
                                                        }
                                                    }
                                                } else {
                                                    jLongValue = 0;
                                                }
                                                j += jLongValue;
                                                if (ge6.q(CursorExtKt.getStringSafe(cursor2, 6), false, 2, null)) {
                                                    i2++;
                                                }
                                                try {
                                                    if (i2 >= queryBundleBuildVideoQueryBundle$default.getLimitedCount()) {
                                                        break;
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    th = th;
                                                    throw th;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                            }
                                        }
                                        try {
                                            zfb zfbVar = zfb.a;
                                            try {
                                                ly0.a(cursor, null);
                                            } catch (Exception e) {
                                                e = e;
                                                vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            th = th;
                                            throw th;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                            }
                        } catch (Throwable th10) {
                            th = th10;
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
                    return abb.a(Integer.valueOf(i2), Long.valueOf(j));
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
        } while (i2 < queryBundleBuildVideoQueryBundle$default.getLimitedCount());
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
        return abb.a(Integer.valueOf(i2), Long.valueOf(j));
    }

    @Override
    public Uri providerUri() {
        return qtb.b.f();
    }

    public final List<MediaItem> queryAlbumArtistMVList(String albumName, String artistName) {
        Pair pairA;
        if (albumName == null || albumName.length() == 0) {
            pairA = (artistName == null || artistName.length() == 0) ? null : abb.a("artist LIKE ?", artistName);
        } else {
            pairA = abb.a("album LIKE ?", albumName);
        }
        if (pairA != null) {
            return queryMVListByPrimaryCondition((String) pairA.component1(), (String) pairA.component2());
        }
        return null;
    }

    public final List<MediaItem> queryAll() {
        return m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle$default(null, 1, null), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryAll$lambda$16((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryAllMVList() {
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle(new StringBuilder(), new ArrayList(), false), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryAllMVList$lambda$2((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchByBucket(final Long bucketId, String parentPath) {
        return bucketId == null ? y71.k() : m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryBatchByBucket$lambda$24(bucketId, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryBatchByBucket$lambda$25((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchByDuration(final long duration, final boolean isLongerThan) {
        return duration <= 0 ? y71.k() : m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryBatchByDuration$lambda$20(duration, isLongerThan, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryBatchByDuration$lambda$21((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchByIds(List<Integer> mediaIds) {
        y45.j(mediaIds, "mediaIds");
        return queryBatchByIdsAndName(mediaIds, null);
    }

    public final List<MediaItem> queryBatchByIdsAndName(List<Integer> mediaIds, String displayName) {
        y45.j(mediaIds, "mediaIds");
        if (mediaIds.isEmpty()) {
            return y71.k();
        }
        Pair<StringBuilder, List<String>> pairBuildIdsAndNameCondition = SqlKt.buildIdsAndNameCondition(mediaIds, displayName);
        final StringBuilder sbComponent1 = pairBuildIdsAndNameCondition.component1();
        final List<String> listComponent2 = pairBuildIdsAndNameCondition.component2();
        return m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryBatchByIdsAndName$lambda$22(sbComponent1, listComponent2, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryBatchByIdsAndName$lambda$23((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBatchByParentPath(String parentPath) {
        Pair pairA;
        if (parentPath == null) {
            parentPath = "";
        }
        if (Build.VERSION.SDK_INT > 29) {
            pairA = abb.a("relative_path = ?", new String[]{parentPath});
        } else {
            pairA = abb.a("_data LIKE ?", new String[]{parentPath + "%"});
        }
        final String str = (String) pairA.component1();
        final String[] strArr = (String[]) pairA.component2();
        return m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryBatchByParentPath$lambda$26(str, strArr, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryBatchByParentPath$lambda$27((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryBucketMVList(Long bucketId, String parentPath) {
        Pair pairA = bucketId != null ? abb.a("bucket_id = ?", bucketId.toString()) : null;
        if (pairA != null) {
            return queryMVListByPrimaryCondition((String) pairA.component1(), (String) pairA.component2());
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01cb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x01c1  */
    public final SparseArray<MediaBucket> queryBuckets(final int limitedCount, e74 indexUpdate) {
        int i;
        int count;
        Throwable th;
        int iIntValue;
        y45.j(indexUpdate, "indexUpdate");
        SparseArray<MediaBucket> sparseArray = new SparseArray<>();
        QueryBundle queryBundleBuildVideoQueryBundle = QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryBuckets$lambda$17(limitedCount, (QueryBundle.Builder) obj);
            }
        });
        Uri uri = queryBundleBuildVideoQueryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildVideoQueryBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildVideoQueryBundle.getLimitedCount();
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                try {
                    Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildVideoQueryBundle, i2, mPageSize);
                    if (cursorQuery != null) {
                        Cursor cursor = cursorQuery;
                        try {
                            Cursor cursor2 = cursor;
                            count = cursor2.getCount();
                            try {
                                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end query,count:" + count);
                                while (true) {
                                    if (!cursor2.moveToNext()) {
                                        i = i2;
                                        break;
                                    }
                                    Integer intSafe = CursorExtKt.getIntSafe(cursor2, 10);
                                    if (intSafe != null) {
                                        try {
                                            iIntValue = intSafe.intValue();
                                        } catch (Throwable th2) {
                                            th = th2;
                                            i = i2;
                                            try {
                                                throw th;
                                            } catch (Throwable th3) {
                                                ly0.a(cursor, th);
                                                throw th3;
                                            }
                                        }
                                    } else {
                                        iIntValue = -1;
                                    }
                                    MediaBucket mediaBucket = sparseArray.get(iIntValue);
                                    String stringSafe = CursorExtKt.getStringSafe(cursor2, 6);
                                    if (mediaBucket == null) {
                                        MediaBucket videoBucket = MediaBucketExtKt.toVideoBucket(cursor2, uri2, z, indexUpdate);
                                        if (videoBucket != null) {
                                            i = i2;
                                            try {
                                                sparseArray.put((int) videoBucket.bucketId, videoBucket);
                                                if (stringSafe != null && stringSafe.length() != 0 && !videoBucket.mediaItemDataList.contains(stringSafe)) {
                                                    videoBucket.mediaItemDataList.add(stringSafe);
                                                    videoBucket.count++;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                th = th;
                                                throw th;
                                            }
                                        } else {
                                            i = i2;
                                            videoBucket = null;
                                        }
                                        if (videoBucket != null) {
                                            i3++;
                                        }
                                    } else {
                                        i = i2;
                                        if (stringSafe != null && stringSafe.length() != 0 && !mediaBucket.mediaItemDataList.contains(stringSafe)) {
                                            mediaBucket.mediaItemDataList.add(stringSafe);
                                            mediaBucket.count++;
                                        }
                                    }
                                    if (i3 >= queryBundleBuildVideoQueryBundle.getLimitedCount()) {
                                        break;
                                    }
                                    i2 = i;
                                    z = false;
                                }
                                zfb zfbVar = zfb.a;
                                try {
                                    ly0.a(cursor, null);
                                } catch (Exception e) {
                                    e = e;
                                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                                    i2 = i + mPageSize;
                                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i3 + ", pageSize:" + mPageSize);
                                    if (count == mPageSize) {
                                    }
                                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                                    return sparseArray;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                i = i2;
                            }
                        } catch (Throwable th6) {
                            i = i2;
                            th = th6;
                            count = 0;
                        }
                    } else {
                        i = i2;
                        try {
                            vmb.c(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") cursor is null");
                            count = 0;
                        } catch (Exception e2) {
                            e = e2;
                            count = 0;
                            vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    i = i2;
                    count = 0;
                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                    i2 = i + mPageSize;
                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i3 + ", pageSize:" + mPageSize);
                    if (count == mPageSize) {
                    }
                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                    return sparseArray;
                }
            } catch (Exception e4) {
                e = e4;
            }
            i2 = i + mPageSize;
            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + count + ", totalNumber:" + i3 + ", pageSize:" + mPageSize);
            if (count == mPageSize || i3 >= queryBundleBuildVideoQueryBundle.getLimitedCount()) {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                return sparseArray;
            }
            z = false;
        }
    }

    public final List<MediaItem> queryMVList(List<Integer> mediaIds, String displayName) {
        Pair<StringBuilder, List<String>> pairBuildIdsAndNameCondition = SqlKt.buildIdsAndNameCondition(mediaIds, displayName);
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle(pairBuildIdsAndNameCondition.component1(), pairBuildIdsAndNameCondition.component2(), false), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryMVList$lambda$3((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryParentPathMVList(String parentPath) {
        Pair pairA;
        if (Build.VERSION.SDK_INT > 29 && parentPath != null && parentPath.length() != 0) {
            pairA = abb.a("relative_path = ?", parentPath);
        } else if (parentPath == null || parentPath.length() == 0) {
            pairA = null;
        } else {
            pairA = abb.a("_data LIKE ?", parentPath + "%");
        }
        if (pairA != null) {
            return queryMVListByPrimaryCondition((String) pairA.component1(), (String) pairA.component2());
        }
        return null;
    }

    public final List<MediaItem> queryRecent() {
        final String strValueOf = String.valueOf(Math.abs((System.currentTimeMillis() / ((long) 1000)) - ((long) 604800)));
        return m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.queryRecent$lambda$30(strValueOf, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.queryRecent$lambda$31((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryRecentMVList() {
        return queryMVListByPrimaryCondition("date_modified > ?", String.valueOf(Math.abs((System.currentTimeMillis() / ((long) 1000)) - ((long) 604800))));
    }

    public final MediaItem querySingle(xk8.x action) {
        y45.j(action, "action");
        QueryBundle queryBundle = ActionExtKt.toQueryBundle(action, qtb.b.e());
        return queryBundle != null ? (MediaItem) querySingle(queryBundle, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.querySingle$lambda$11((Cursor) obj, (Uri) obj2);
            }
        }) : queryOtherAppVideoItem(action.f());
    }

    public final MediaItem querySingle$dbdata_release(final Uri uri) {
        y45.j(uri, "uri");
        return (MediaItem) querySingle(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.querySingle$lambda$12(uri, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.querySingle$lambda$13((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final MediaItem querySingleMV(xk8.x action) {
        y45.j(action, "action");
        QueryBundle queryMVBundle = ActionExtKt.toQueryMVBundle(action, false);
        if (queryMVBundle == null) {
            return null;
        }
        return (MediaItem) querySingle(queryMVBundle, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.querySingleMV$lambda$0((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> queryTitleMVList(String title) {
        if (title == null || title.length() == 0) {
            return null;
        }
        Pair pairA = abb.a("title LIKE ?", String.valueOf(title));
        return queryMVListByPrimaryCondition((String) pairA.component1(), (String) pairA.component2());
    }

    public final List<MediaItem> queryWhatsAppMedias(List<Integer> mediaIds) {
        y45.j(mediaIds, "mediaIds");
        ArrayList arrayListB = ykc.a().b();
        if (arrayListB == null || arrayListB.isEmpty()) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListB) {
            MediaItem mediaItem = (MediaItem) obj;
            if (mediaItem != null ? mediaIds.contains(Integer.valueOf(mediaItem.id)) : false) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<MediaItem> search(String searchText) {
        if (searchText == null || searchText.length() == 0) {
            return y71.k();
        }
        Pair<StringBuilder, List<String>> pairBuildSearchCondition = SqlKt.buildSearchCondition(searchText, false);
        final StringBuilder sbComponent1 = pairBuildSearchCondition.component1();
        final List<String> listComponent2 = pairBuildSearchCondition.component2();
        return m121queryBatch(QueryBundleKtxKt.buildVideoQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemVideoQueryRepository.search$lambda$28(sbComponent1, listComponent2, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.search$lambda$29((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<MediaItem> searchMVList(String searchText) {
        y45.j(searchText, "searchText");
        if (searchText.length() == 0) {
            return y71.k();
        }
        Pair pairBuildSearchCondition$default = SqlKt.buildSearchCondition$default(searchText, false, 2, null);
        return m121queryBatch(QueryBundleKtxKt.buildQueryMVBundle((StringBuilder) pairBuildSearchCondition$default.component1(), (List) pairBuildSearchCondition$default.component2(), false), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemVideoQueryRepository.searchMVList$lambda$1((Cursor) obj, (Uri) obj2);
            }
        });
    }
}
