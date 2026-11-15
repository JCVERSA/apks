package com.transsion.dbdata.source.data.ktx;

import android.database.Cursor;
import android.net.Uri;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.dbdata.beans.FolderLabelItem;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.utils.FolderLabelUtils;
import com.transsion.utils.BaseConstant;
import defpackage.e74;
import defpackage.g1a;
import defpackage.ge6;
import defpackage.uf1;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\u001a3\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\r\u001a\u00020\n*\u00020\b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a9\u0010\r\u001a\u0004\u0018\u00010\n*\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0000¢\u0006\u0004\b\r\u0010\u0013\u001a'\u0010\u0018\u001a\u00020\n*\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00152\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a-\u0010\u0018\u001a\u0004\u0018\u00010\n*\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0018\u0010\u001d¨\u0006\u001e"}, d2 = {"", PlayAudioData.TAG_PARENT_PATH, "bucketDisplayName", "relativePath", "", "isAudioBucket", "determineBucketParentName", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;", "Lcom/transsion/dbdata/beans/media/MediaItem;", "Lkotlin/Function1;", "Lcom/transsion/dbdata/beans/media/MediaBucket;", "Lzfb;", "indexUpdate", "toVideoBucket", "(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)Lcom/transsion/dbdata/beans/media/MediaBucket;", "Landroid/database/Cursor;", "Landroid/net/Uri;", "uri", "checkSuffix", "(Landroid/database/Cursor;Landroid/net/Uri;ZLe74;)Lcom/transsion/dbdata/beans/media/MediaBucket;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "", "childrenCount", "name", "toAudioBucket", "(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaBucket;", "dbUri", "fromMV", "needFilter", "(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaBucket;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MediaBucketExtKt {
    private static final String determineBucketParentName(String str, String str2, String str3, boolean z) {
        if (y45.e(str, uf1.a.f())) {
            str2 = Consts.SUFFIX_ROOT;
        } else if (str2 == null || str2.length() == 0) {
            str2 = ge6.a.h(str);
        }
        if (z || !g1a.E(str3, "DCIM/Camera/", true)) {
            return str2;
        }
        return str2 + " (SD)";
    }

    public static String determineBucketParentName$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        return determineBucketParentName(str, str2, str3, z);
    }

    public static final MediaBucket toAudioBucket(AudioItem audioItem, int i, String str) {
        y45.j(audioItem, "<this>");
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setBucketId(audioItem.bucketId);
        mediaBucket.setDateModified(audioItem.dateModified);
        mediaBucket.setParentPath(audioItem.parentPath);
        mediaBucket.setUri(UriKtxKt.getAudioMediaUriWithAppendedPath(audioItem.id));
        mediaBucket.setCount(i);
        if (str == null || str.length() == 0) {
            String str2 = audioItem.parentPath;
            y45.i(str2, PlayAudioData.TAG_PARENT_PATH);
            String str3 = audioItem.bucketDisplayName;
            String str4 = audioItem.relativePath;
            y45.i(str4, "relativePath");
            mediaBucket.setParentName(determineBucketParentName(str2, str3, str4, true));
        } else {
            mediaBucket.setParentName(str);
        }
        return mediaBucket;
    }

    public static MediaBucket toAudioBucket$default(AudioItem audioItem, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        return toAudioBucket(audioItem, i, str);
    }

    public static final MediaBucket toVideoBucket(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "<this>");
        y45.j(e74Var, "indexUpdate");
        String str = mediaItem.parentPath;
        String str2 = mediaItem.displayName;
        String strL = ge6.l(mediaItem.data, str2);
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.count = 0;
        mediaBucket.setBucketId(mediaItem.bucketId);
        mediaBucket.setParentPath(str);
        mediaBucket.setRelativePath(strL);
        mediaBucket.setDateModified(mediaItem.dateModified);
        mediaBucket.setUri(UriKtxKt.getFileMediaUriWithAppendedPath(mediaItem.id));
        FolderLabelItem folderLabelItemB = FolderLabelUtils.b(str, str2, false);
        if (folderLabelItemB != null) {
            mediaBucket.setParentName(folderLabelItemB.folderName);
            mediaBucket.setIndex(folderLabelItemB.folderIndex);
            mediaBucket.setLabelFolder(true);
        } else {
            y45.g(str);
            mediaBucket.setParentName(determineBucketParentName(str, mediaItem.bucketDisplayName, strL, false));
            e74Var.invoke(mediaBucket);
            mediaBucket.setLabelFolder(false);
        }
        return mediaBucket;
    }

    public static final MediaBucket toAudioBucket(Cursor cursor, Uri uri, boolean z, boolean z2) {
        boolean zFilterAudioMVBucket;
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        String stringSafe = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe == null) {
            return null;
        }
        if (z2) {
            if (z) {
                zFilterAudioMVBucket = AudioFilterKtxKt.filterAudioBucket(cursor);
            } else {
                zFilterAudioMVBucket = AudioFilterKtxKt.filterAudioMVBucket(cursor);
            }
            if (zFilterAudioMVBucket) {
                return null;
            }
        }
        ge6 ge6Var = ge6.a;
        String strJ = ge6Var.j(stringSafe);
        if ((!z2 && y45.e(BaseConstant.i, strJ)) || !ge6Var.o(stringSafe)) {
            return null;
        }
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue = intSafe != null ? intSafe.intValue() : -1;
        String stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 13);
        long jLongValue = longSafe != null ? longSafe.longValue() : -1L;
        String stringSafe3 = CursorExtKt.getStringSafe(cursor, 14);
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        long jLongValue2 = longSafe2 != null ? longSafe2.longValue() : 0L;
        String strL = ge6.l(stringSafe, stringSafe2);
        String strDetermineBucketParentName = determineBucketParentName(strJ, stringSafe3, strL, true);
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setBucketId(jLongValue);
        mediaBucket.setParentPath(strJ);
        mediaBucket.setRelativePath(strL);
        mediaBucket.setDateModified(jLongValue2);
        mediaBucket.setUri(Uri.withAppendedPath(uri, String.valueOf(iIntValue)));
        mediaBucket.setParentName(strDetermineBucketParentName);
        return mediaBucket;
    }

    public static final MediaBucket toVideoBucket(Cursor cursor, Uri uri, boolean z, e74 e74Var) {
        y45.j(cursor, "<this>");
        y45.j(uri, "uri");
        y45.j(e74Var, "indexUpdate");
        String stringSafe = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe == null || !FileValidExtKt.isValidVideoFilePath(stringSafe, true, z, true)) {
            return null;
        }
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue = intSafe != null ? intSafe.intValue() : -1;
        String stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 10);
        long jLongValue = longSafe != null ? longSafe.longValue() : -1L;
        String stringSafe3 = CursorExtKt.getStringSafe(cursor, 11);
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        long jLongValue2 = longSafe2 != null ? longSafe2.longValue() : 0L;
        String strJ = ge6.a.j(stringSafe);
        String strL = ge6.l(stringSafe, stringSafe2);
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setBucketId(jLongValue);
        mediaBucket.setParentPath(strJ);
        mediaBucket.setRelativePath(strL);
        mediaBucket.setDateModified(jLongValue2);
        mediaBucket.setUri(UriKtxKt.getFileMediaUriWithAppendedPath(iIntValue));
        FolderLabelItem folderLabelItemB = FolderLabelUtils.b(strJ, stringSafe2, false);
        if (folderLabelItemB != null) {
            mediaBucket.setParentName(folderLabelItemB.folderName);
            mediaBucket.setIndex(folderLabelItemB.folderIndex);
            mediaBucket.setLabelFolder(true);
        } else {
            mediaBucket.setParentName(determineBucketParentName(strJ, stringSafe3, strL, false));
            e74Var.invoke(mediaBucket);
            mediaBucket.setLabelFolder(false);
        }
        return mediaBucket;
    }
}
