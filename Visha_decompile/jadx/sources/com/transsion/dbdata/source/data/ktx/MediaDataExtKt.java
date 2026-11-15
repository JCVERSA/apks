package com.transsion.dbdata.source.data.ktx;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.MediaDataMissingItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import defpackage.av3;
import defpackage.g1a;
import defpackage.ge6;
import defpackage.qe6;
import defpackage.s74;
import defpackage.tr4;
import defpackage.vmb;
import defpackage.y45;
import defpackage.z71;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Triple;
import kotlin.c;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u001f\u001aN\u0010\u000b\u001a\u0004\u0018\u00010\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u001a\b\u0004\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0006H\u0082\b¢\u0006\u0004\b\u000b\u0010\f\u001a+\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0011\u001a1\u0010\u0012\u001a\u0004\u0018\u00010\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a1\u0010\u0014\u001a\u0004\u0018\u00010\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0014\u0010\u0013\u001a;\u0010\u0016\u001a\u0004\u0018\u00010\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u0018*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001aG\u0010\u001f\u001a\u0004\u0018\u00010\u0018*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u0013\u0010\"\u001a\u00020!*\u00020\u000fH\u0002¢\u0006\u0004\b\"\u0010#\u001a\u0013\u0010%\u001a\u00020\u000f*\u00020$H\u0002¢\u0006\u0004\b%\u0010&\u001a\u0019\u0010)\u001a\u00020(*\u00020\b2\u0006\u0010'\u001a\u00020\u000f¢\u0006\u0004\b)\u0010*\u001a%\u0010)\u001a\b\u0012\u0004\u0012\u00020(0+*\b\u0012\u0004\u0012\u00020\b0+2\u0006\u0010'\u001a\u00020\u000f¢\u0006\u0004\b)\u0010,\u001a\u0019\u0010.\u001a\u00020$*\u00020\b2\u0006\u0010-\u001a\u00020!¢\u0006\u0004\b.\u0010/\u001a%\u00100\u001a\b\u0012\u0004\u0012\u00020$0+*\b\u0012\u0004\u0012\u00020\b0+2\u0006\u0010-\u001a\u00020!¢\u0006\u0004\b0\u00101\u001a\u0019\u0010.\u001a\u00020$*\u00020\u00182\u0006\u0010-\u001a\u00020!¢\u0006\u0004\b.\u00102\u001a%\u00103\u001a\b\u0012\u0004\u0012\u00020$0+*\b\u0012\u0004\u0012\u00020\u00180+2\u0006\u0010-\u001a\u00020!¢\u0006\u0004\b3\u00101\u001a\u0011\u00104\u001a\u00020\b*\u00020\b¢\u0006\u0004\b4\u00105\u001a\u0011\u00106\u001a\u00020\u0018*\u00020$¢\u0006\u0004\b6\u00107\u001a\u001d\u00108\u001a\b\u0012\u0004\u0012\u00020\u00180+*\b\u0012\u0004\u0012\u00020$0+¢\u0006\u0004\b8\u00109\u001a\u0011\u0010:\u001a\u00020\b*\u00020$¢\u0006\u0004\b:\u0010;\u001a\u001d\u0010<\u001a\b\u0012\u0004\u0012\u00020\b0+*\b\u0012\u0004\u0012\u00020$0+¢\u0006\u0004\b<\u00109\"\u0014\u0010=\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b=\u0010>\"\u0014\u0010?\u001a\u00020!8\u0002X\u0082T¢\u0006\u0006\n\u0004\b?\u0010@\"\u0014\u0010A\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\bA\u0010B\"\u0014\u0010C\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\bC\u0010B\"\u0014\u0010D\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\bD\u0010B\"\u0014\u0010E\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\bE\u0010B\"\u0014\u0010F\u001a\u00020!8\u0002X\u0082T¢\u0006\u0006\n\u0004\bF\u0010@\"\u0014\u0010G\u001a\u00020!8\u0002X\u0082T¢\u0006\u0006\n\u0004\bG\u0010@\"\u0014\u0010H\u001a\u00020!8\u0002X\u0082T¢\u0006\u0006\n\u0004\bH\u0010@\"\u0014\u0010I\u001a\u00020!8\u0002X\u0082T¢\u0006\u0006\n\u0004\bI\u0010@¨\u0006J"}, d2 = {"Landroid/database/Cursor;", "Landroid/net/Uri;", "dbUri", "", "checkFileSuffix", "checkHlsVideo", "Lkotlin/Function2;", "", "Lcom/transsion/dbdata/beans/media/MediaItem;", "Lzfb;", "extendHandle", "buildBaseMediaItem", "(Landroid/database/Cursor;Landroid/net/Uri;ZZLs74;)Lcom/transsion/dbdata/beans/media/MediaItem;", Progress.FILE_PATH, "Lkotlin/Triple;", "", "processHlsVideo", "(Ljava/lang/String;)Lkotlin/Triple;", "buildVideoMediaItem", "(Landroid/database/Cursor;Landroid/net/Uri;ZZ)Lcom/transsion/dbdata/beans/media/MediaItem;", "buildFileMediaItem", "fromFileTable", "buildMediaItem", "(Landroid/database/Cursor;Landroid/net/Uri;ZZZ)Lcom/transsion/dbdata/beans/media/MediaItem;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "buildAudioItem", "(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;", "preloadedFilePath", PlayAudioData.TAG_PARENT_PATH, "preloadedSize", "preloadedDuration", "buildAudioItemInternal", "(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/transsion/dbdata/beans/media/AudioItem;", "", "toSafeDbSizeInt", "(J)I", "Lcom/transsion/dbdata/database/MediaDataMissingItem;", "resolveSafeSize", "(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J", "playListId", "Lcom/transsion/dbdata/database/PlayListMediaItem;", "toPlayListMediaItem", "(Lcom/transsion/dbdata/beans/media/MediaItem;J)Lcom/transsion/dbdata/database/PlayListMediaItem;", "", "(Ljava/util/List;J)Ljava/util/List;", "mediaType", "toMediaDataMissingItem", "(Lcom/transsion/dbdata/beans/media/MediaItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;", "mToMediaDataMissingItem", "(Ljava/util/List;I)Ljava/util/List;", "(Lcom/transsion/dbdata/beans/media/AudioItem;I)Lcom/transsion/dbdata/database/MediaDataMissingItem;", "aToMediaDataMissingItem", "createGroupHeaderItem", "(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;", "toAudioItem", "(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/AudioItem;", "toAudioItems", "(Ljava/util/List;)Ljava/util/List;", "toMediaItem", "(Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/beans/media/MediaItem;", "toMediaItems", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "DEFAULT_INVALID_ID", "I", "DEFAULT_INVALID_BUCKET_ID", "J", "DEFAULT_DATE", "DEFAULT_DURATION", "DEFAULT_SIZE", "DEFAULT_YEAR", "DEFAULT_TRACK_NUMBER", "DEFAULT_ORIENTATION", "DEFAULT_DIMENSION", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class MediaDataExtKt {
    private static final long DEFAULT_DATE = 0;
    private static final int DEFAULT_DIMENSION = 0;
    private static final long DEFAULT_DURATION = 0;
    private static final long DEFAULT_INVALID_BUCKET_ID = -1;
    private static final int DEFAULT_INVALID_ID = -1;
    private static final int DEFAULT_ORIENTATION = 0;
    private static final long DEFAULT_SIZE = 0;
    private static final int DEFAULT_TRACK_NUMBER = 0;
    private static final int DEFAULT_YEAR = 0;
    private static final String TAG = "MediaDataExt";

    public static final List<MediaDataMissingItem> aToMediaDataMissingItem(List<? extends AudioItem> list, int i) {
        y45.j(list, "<this>");
        List<? extends AudioItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(toMediaDataMissingItem((AudioItem) it.next(), i));
        }
        return arrayList;
    }

    public static final AudioItem buildAudioItem(Cursor cursor, Uri uri) {
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        return buildAudioItemInternal$default(cursor, uri, null, null, 0L, 0L, 28, null);
    }

    /* JADX WARN: Code duplicated, block: B:130:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:147:0x0216  */
    /* JADX WARN: Code duplicated, block: B:177:0x0261  */
    /* JADX WARN: Code duplicated, block: B:179:0x0269  */
    /* JADX WARN: Code duplicated, block: B:180:0x026e  */
    /* JADX WARN: Code duplicated, block: B:65:0x0100  */
    /* JADX WARN: Code duplicated, block: B:72:0x0116  */
    /* JADX WARN: Code duplicated, block: B:74:0x011c  */
    /* JADX WARN: Code duplicated, block: B:75:0x011e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0125  */
    /* JADX WARN: Code duplicated, block: B:80:0x012c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0133  */
    /* JADX WARN: Code duplicated, block: B:85:0x0136  */
    /* JADX WARN: Code duplicated, block: B:86:0x013b  */
    /* JADX WARN: Code duplicated, block: B:87:0x013d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0149  */
    public static final AudioItem buildAudioItemInternal(Cursor cursor, Uri uri, String str, String str2, long j, long j2) {
        qe6 missingItemById;
        String strL;
        long jLongValue;
        long jLongValue2;
        String stringSafe;
        String stringSafe2;
        Integer intSafe;
        int iIntValue;
        String strValueOf;
        Integer intSafe2;
        String stringSafe3;
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        String stringSafe4 = str == null ? CursorExtKt.getStringSafe(cursor, 6) : str;
        if (stringSafe4 == null || stringSafe4.length() == 0) {
            return null;
        }
        Integer intSafe3 = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue2 = intSafe3 != null ? intSafe3.intValue() : -1;
        try {
            qe6 missingItemByPath = stringSafe4.length() > 0 ? MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemByPath(stringSafe4) : null;
            missingItemById = missingItemByPath == null ? MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemById(iIntValue2, false) : missingItemByPath;
            if (missingItemById != null) {
                vmb.a(TAG, "Cache hit for audio: mediaId=" + iIntValue2 + ", path=" + stringSafe4 + ", byPath=" + (missingItemByPath != null));
            }
        } catch (Exception e) {
            vmb.d(TAG, "Failed to get missing data from cache for audio: mediaId=" + iIntValue2 + ", path=" + stringSafe4, e);
            missingItemById = null;
        }
        String strJ = str2 == null ? ge6.a.j(stringSafe4) : str2;
        String strH = ge6.a.h(stringSafe4);
        boolean z = Build.VERSION.SDK_INT > 29;
        if (missingItemById == null || (strL = missingItemById.e()) == null || strL.length() <= 0) {
            strL = null;
        }
        String stringSafe5 = CursorExtKt.getStringSafe(cursor, 1);
        String str3 = strL == null ? stringSafe5 : strL;
        String strL2 = (stringSafe5 == null || stringSafe5.length() == 0) ? "" : av3.l(stringSafe5);
        String strL3 = av3.l(strH);
        if (strL == null) {
            y45.g(strL2);
            if (strL2.length() > 0) {
                y45.g(strL3);
                if (strL3.length() <= 0 || !g1a.E(strL2, strL3, true)) {
                    y45.g(strL3);
                    if (strL3.length() <= 0 && strL2.length() > 0 && !g1a.E(strL2, strL3, true)) {
                        strL = strL3;
                    } else if (strL2.length() > 0) {
                        strL = strL2;
                    } else if (strL3.length() <= 0) {
                        stringSafe3 = CursorExtKt.getStringSafe(cursor, 2);
                        if (stringSafe3 != null || stringSafe3.length() <= 0) {
                            stringSafe3 = null;
                        }
                        if (stringSafe3 != null) {
                            strL = av3.l(stringSafe3);
                        } else if (stringSafe5 != null || stringSafe5.length() == 0) {
                            strL = strL3;
                        } else {
                            strL = av3.l(stringSafe5);
                        }
                    } else {
                        strL = strL3;
                    }
                } else {
                    strL = strL2;
                }
            } else {
                y45.g(strL3);
                if (strL3.length() <= 0) {
                    if (strL2.length() > 0) {
                        strL = strL2;
                    } else if (strL3.length() <= 0) {
                        stringSafe3 = CursorExtKt.getStringSafe(cursor, 2);
                        if (stringSafe3 != null) {
                            stringSafe3 = null;
                        } else {
                            stringSafe3 = null;
                        }
                        if (stringSafe3 != null) {
                            strL = av3.l(stringSafe3);
                        } else if (stringSafe5 != null) {
                            strL = strL3;
                        } else {
                            strL = strL3;
                        }
                    } else {
                        strL = strL3;
                    }
                } else if (strL2.length() > 0) {
                    strL = strL2;
                } else if (strL3.length() <= 0) {
                    stringSafe3 = CursorExtKt.getStringSafe(cursor, 2);
                    if (stringSafe3 != null) {
                        stringSafe3 = null;
                    } else {
                        stringSafe3 = null;
                    }
                    if (stringSafe3 != null) {
                        strL = av3.l(stringSafe3);
                    } else if (stringSafe5 != null) {
                        strL = strL3;
                    } else {
                        strL = strL3;
                    }
                } else {
                    strL = strL3;
                }
            }
        }
        AudioItem audioItem = new AudioItem();
        audioItem.id = iIntValue2;
        audioItem.title = str3;
        audioItem.displayName = strL;
        audioItem.mineType = CursorExtKt.getStringSafe(cursor, 3);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 4);
        audioItem.dateAdd = longSafe != null ? longSafe.longValue() : 0L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        audioItem.dateModified = longSafe2 != null ? longSafe2.longValue() : 0L;
        if (j2 > 0) {
            jLongValue = j2;
        } else {
            Long longSafe3 = CursorExtKt.getLongSafe(cursor, 7);
            jLongValue = longSafe3 != null ? longSafe3.longValue() : 0L;
        }
        audioItem.duration = jLongValue;
        if (j > 0) {
            jLongValue2 = j;
        } else {
            Long longSafe4 = CursorExtKt.getLongSafe(cursor, 8);
            jLongValue2 = longSafe4 != null ? longSafe4.longValue() : 0L;
        }
        audioItem.size = jLongValue2;
        audioItem.uri = Uri.withAppendedPath(uri, String.valueOf(audioItem.id));
        audioItem.relativePath = ge6.l(stringSafe4, strL);
        audioItem.data = stringSafe4;
        audioItem.parentPath = strJ;
        Integer intSafe4 = CursorExtKt.getIntSafe(cursor, 9);
        audioItem.albumId = intSafe4 != null ? intSafe4.intValue() : -1;
        if (missingItemById == null || (stringSafe = missingItemById.a()) == null) {
            stringSafe = CursorExtKt.getStringSafe(cursor, 10);
        } else {
            if (!(stringSafe.length() > 0)) {
                stringSafe = null;
            }
            if (stringSafe == null) {
                stringSafe = CursorExtKt.getStringSafe(cursor, 10);
            }
        }
        audioItem.albumName = stringSafe;
        Integer intSafe5 = CursorExtKt.getIntSafe(cursor, 11);
        audioItem.artistId = intSafe5 != null ? intSafe5.intValue() : -1;
        if (missingItemById == null || (stringSafe2 = missingItemById.c()) == null) {
            stringSafe2 = CursorExtKt.getStringSafe(cursor, 12);
        } else {
            if (!(stringSafe2.length() > 0)) {
                stringSafe2 = null;
            }
            if (stringSafe2 == null) {
                stringSafe2 = CursorExtKt.getStringSafe(cursor, 12);
            }
        }
        audioItem.artistName = stringSafe2;
        Long longSafe5 = CursorExtKt.getLongSafe(cursor, 13);
        audioItem.bucketId = longSafe5 != null ? longSafe5.longValue() : -1L;
        String stringSafe6 = CursorExtKt.getStringSafe(cursor, 14);
        if (stringSafe6 == null || stringSafe6.length() == 0) {
            stringSafe6 = null;
        }
        if (stringSafe6 != null) {
            strH = stringSafe6;
        }
        audioItem.bucketDisplayName = strH;
        if (missingItemById == null || (strValueOf = missingItemById.b()) == null) {
            intSafe = CursorExtKt.getIntSafe(cursor, 15);
            if (intSafe != null) {
                iIntValue = intSafe.intValue();
            } else {
                iIntValue = 0;
            }
            strValueOf = String.valueOf(iIntValue);
        } else {
            if (!(strValueOf.length() > 0)) {
                strValueOf = null;
            }
            if (strValueOf == null) {
                intSafe = CursorExtKt.getIntSafe(cursor, 15);
                if (intSafe != null) {
                    iIntValue = intSafe.intValue();
                } else {
                    iIntValue = 0;
                }
                strValueOf = String.valueOf(iIntValue);
            }
        }
        audioItem.mAlbumYear = strValueOf;
        audioItem.num = (!z || (intSafe2 = CursorExtKt.getIntSafe(cursor, 16)) == null) ? 0 : intSafe2.intValue();
        audioItem.mCustomCoverPath = missingItemById != null ? missingItemById.d() : null;
        return audioItem;
    }

    public static AudioItem buildAudioItemInternal$default(Cursor cursor, Uri uri, String str, String str2, long j, long j2, int i, Object obj) {
        return buildAudioItemInternal(cursor, uri, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? -1L : j, (i & 16) != 0 ? -1L : j2);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008f  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ab  */
    private static final MediaItem buildBaseMediaItem(Cursor cursor, Uri uri, boolean z, boolean z2, s74 s74Var) {
        qe6 missingItemByPath;
        String stringSafe;
        String stringSafe2;
        String str;
        Triple tripleProcessHlsVideo;
        String stringSafe3 = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe3 == null || !FileValidExtKt.isValidVideoFilePath(stringSafe3, false, z, false)) {
            return null;
        }
        String strH = ge6.a.h(stringSafe3);
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue = intSafe != null ? intSafe.intValue() : -1;
        try {
            missingItemByPath = stringSafe3.length() > 0 ? MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemByPath(stringSafe3) : MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemById(iIntValue, true);
            if (missingItemByPath != null) {
                vmb.a(TAG, "Cache hit for audio: mediaId=" + iIntValue + ", path=" + stringSafe3);
            }
        } catch (Exception e) {
            vmb.d(TAG, "Failed to get missing data from cache for audio: mediaId=" + iIntValue + ", path=" + stringSafe3, e);
            missingItemByPath = null;
        }
        if (missingItemByPath == null || (stringSafe = missingItemByPath.e()) == null) {
            stringSafe = CursorExtKt.getStringSafe(cursor, 1);
        } else {
            if (stringSafe.length() <= 0) {
                stringSafe = null;
            }
            if (stringSafe == null) {
                stringSafe = CursorExtKt.getStringSafe(cursor, 1);
            }
        }
        if (missingItemByPath != null) {
            String strE = missingItemByPath.e();
            str = strE.length() > 0 ? strE : null;
            if (str == null) {
                stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
                if (stringSafe2 == null) {
                    str = strH;
                } else {
                    str = stringSafe2;
                }
            }
        } else {
            stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
            if (stringSafe2 == null) {
                str = strH;
            } else {
                str = stringSafe2;
            }
        }
        MediaItem mediaItem = new MediaItem(stringSafe3);
        mediaItem.id = iIntValue;
        mediaItem.title = stringSafe;
        mediaItem.displayName = str;
        mediaItem.mineType = CursorExtKt.getStringSafe(cursor, 3);
        mediaItem.relativePath = ge6.l(stringSafe3, str);
        mediaItem.parentPath = ge6.a.j(stringSafe3);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 4);
        mediaItem.dateAdd = longSafe != null ? longSafe.longValue() : 0L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        mediaItem.dateModified = longSafe2 != null ? longSafe2.longValue() : 0L;
        mediaItem.uri = Uri.withAppendedPath(uri, String.valueOf(iIntValue));
        Long longSafe3 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue = longSafe3 != null ? longSafe3.longValue() : 0L;
        Long longSafe4 = CursorExtKt.getLongSafe(cursor, 8);
        long jLongValue2 = longSafe4 != null ? longSafe4.longValue() : 0L;
        if (z2 && (tripleProcessHlsVideo = processHlsVideo(stringSafe3)) != null) {
            jLongValue = ((Number) tripleProcessHlsVideo.component1()).longValue();
            jLongValue2 = ((Number) tripleProcessHlsVideo.component2()).longValue();
            mediaItem.thumbnailUrl = (String) tripleProcessHlsVideo.component3();
        }
        mediaItem.duration = jLongValue;
        mediaItem.size = jLongValue2;
        s74Var.invoke(strH, mediaItem);
        return mediaItem;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0099  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b5  */
    public static MediaItem buildBaseMediaItem$default(Cursor cursor, Uri uri, boolean z, boolean z2, s74 s74Var, int i, Object obj) {
        qe6 missingItemByPath;
        String stringSafe;
        String stringSafe2;
        String str;
        Triple tripleProcessHlsVideo;
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        String stringSafe3 = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe3 == null || !FileValidExtKt.isValidVideoFilePath(stringSafe3, false, z, false)) {
            return null;
        }
        String strH = ge6.a.h(stringSafe3);
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue = intSafe != null ? intSafe.intValue() : -1;
        try {
            missingItemByPath = stringSafe3.length() > 0 ? MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemByPath(stringSafe3) : MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemById(iIntValue, true);
            if (missingItemByPath != null) {
                vmb.a(TAG, "Cache hit for audio: mediaId=" + iIntValue + ", path=" + stringSafe3);
            }
        } catch (Exception e) {
            vmb.d(TAG, "Failed to get missing data from cache for audio: mediaId=" + iIntValue + ", path=" + stringSafe3, e);
            missingItemByPath = null;
        }
        if (missingItemByPath == null || (stringSafe = missingItemByPath.e()) == null) {
            stringSafe = CursorExtKt.getStringSafe(cursor, 1);
        } else {
            if (stringSafe.length() <= 0) {
                stringSafe = null;
            }
            if (stringSafe == null) {
                stringSafe = CursorExtKt.getStringSafe(cursor, 1);
            }
        }
        if (missingItemByPath != null) {
            String strE = missingItemByPath.e();
            str = strE.length() > 0 ? strE : null;
            if (str == null) {
                stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
                if (stringSafe2 == null) {
                    str = strH;
                } else {
                    str = stringSafe2;
                }
            }
        } else {
            stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
            if (stringSafe2 == null) {
                str = strH;
            } else {
                str = stringSafe2;
            }
        }
        MediaItem mediaItem = new MediaItem(stringSafe3);
        mediaItem.id = iIntValue;
        mediaItem.title = stringSafe;
        mediaItem.displayName = str;
        mediaItem.mineType = CursorExtKt.getStringSafe(cursor, 3);
        mediaItem.relativePath = ge6.l(stringSafe3, str);
        mediaItem.parentPath = ge6.a.j(stringSafe3);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 4);
        mediaItem.dateAdd = longSafe != null ? longSafe.longValue() : 0L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        mediaItem.dateModified = longSafe2 != null ? longSafe2.longValue() : 0L;
        mediaItem.uri = Uri.withAppendedPath(uri, String.valueOf(iIntValue));
        Long longSafe3 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue = longSafe3 != null ? longSafe3.longValue() : 0L;
        Long longSafe4 = CursorExtKt.getLongSafe(cursor, 8);
        long jLongValue2 = longSafe4 != null ? longSafe4.longValue() : 0L;
        if (z2 && (tripleProcessHlsVideo = processHlsVideo(stringSafe3)) != null) {
            jLongValue = ((Number) tripleProcessHlsVideo.component1()).longValue();
            jLongValue2 = ((Number) tripleProcessHlsVideo.component2()).longValue();
            mediaItem.thumbnailUrl = (String) tripleProcessHlsVideo.component3();
        }
        mediaItem.duration = jLongValue;
        mediaItem.size = jLongValue2;
        s74Var.invoke(strH, mediaItem);
        return mediaItem;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b2  */
    private static final MediaItem buildFileMediaItem(Cursor cursor, Uri uri, boolean z, boolean z2) {
        qe6 missingItemByPath;
        String stringSafe;
        String stringSafe2;
        Triple tripleProcessHlsVideo;
        String stringSafe3 = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe3 == null) {
            return null;
        }
        if (!FileValidExtKt.isValidVideoFilePath(stringSafe3, false, z, false)) {
            return null;
        }
        String strH = ge6.a.h(stringSafe3);
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue = intSafe != null ? intSafe.intValue() : -1;
        boolean z3 = true;
        try {
            missingItemByPath = stringSafe3.length() > 0 ? MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemByPath(stringSafe3) : MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemById(iIntValue, true);
            if (missingItemByPath != null) {
                vmb.a(TAG, "Cache hit for audio: mediaId=" + iIntValue + ", path=" + stringSafe3);
            }
        } catch (Exception e) {
            vmb.d(TAG, "Failed to get missing data from cache for audio: mediaId=" + iIntValue + ", path=" + stringSafe3, e);
            missingItemByPath = null;
        }
        if (missingItemByPath == null || (stringSafe = missingItemByPath.e()) == null) {
            stringSafe = CursorExtKt.getStringSafe(cursor, 1);
        } else {
            if (stringSafe.length() <= 0) {
                stringSafe = null;
            }
            if (stringSafe == null) {
                stringSafe = CursorExtKt.getStringSafe(cursor, 1);
            }
        }
        if (missingItemByPath != null) {
            stringSafe2 = missingItemByPath.e();
            if (stringSafe2.length() <= 0) {
                stringSafe2 = null;
            }
            if (stringSafe2 == null) {
                stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
                if (stringSafe2 == null) {
                    stringSafe2 = strH;
                }
            }
        } else {
            stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
            if (stringSafe2 == null) {
                stringSafe2 = strH;
            }
        }
        MediaItem mediaItem = new MediaItem(stringSafe3);
        mediaItem.id = iIntValue;
        mediaItem.title = stringSafe;
        mediaItem.displayName = stringSafe2;
        mediaItem.mineType = CursorExtKt.getStringSafe(cursor, 3);
        mediaItem.relativePath = ge6.l(stringSafe3, stringSafe2);
        ge6 ge6Var = ge6.a;
        mediaItem.parentPath = ge6Var.j(stringSafe3);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 4);
        mediaItem.dateAdd = longSafe != null ? longSafe.longValue() : 0L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        mediaItem.dateModified = longSafe2 != null ? longSafe2.longValue() : 0L;
        mediaItem.uri = Uri.withAppendedPath(uri, String.valueOf(iIntValue));
        Long longSafe3 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue = longSafe3 != null ? longSafe3.longValue() : 0L;
        Long longSafe4 = CursorExtKt.getLongSafe(cursor, 8);
        long jLongValue2 = longSafe4 != null ? longSafe4.longValue() : 0L;
        if (z2 && (tripleProcessHlsVideo = processHlsVideo(stringSafe3)) != null) {
            jLongValue = ((Number) tripleProcessHlsVideo.component1()).longValue();
            jLongValue2 = ((Number) tripleProcessHlsVideo.component2()).longValue();
            mediaItem.thumbnailUrl = (String) tripleProcessHlsVideo.component3();
        }
        mediaItem.duration = jLongValue;
        mediaItem.size = jLongValue2;
        Long longSafe5 = CursorExtKt.getLongSafe(cursor, 9);
        mediaItem.dateToken = longSafe5 != null ? longSafe5.longValue() : 0L;
        Long longSafe6 = CursorExtKt.getLongSafe(cursor, 10);
        mediaItem.bucketId = longSafe6 != null ? longSafe6.longValue() : -1L;
        String stringSafe4 = CursorExtKt.getStringSafe(cursor, 11);
        if (stringSafe4 != null && stringSafe4.length() != 0) {
            z3 = false;
        }
        String strH2 = z3 ? null : stringSafe4;
        if (strH2 == null) {
            strH2 = ge6Var.h(strH);
        }
        mediaItem.bucketDisplayName = strH2;
        Integer intSafe2 = CursorExtKt.getIntSafe(cursor, 12);
        mediaItem.setDegree(intSafe2 != null ? intSafe2.intValue() : 0);
        Integer intSafe3 = CursorExtKt.getIntSafe(cursor, 13);
        mediaItem.width = intSafe3 != null ? intSafe3.intValue() : 0;
        Integer intSafe4 = CursorExtKt.getIntSafe(cursor, 14);
        mediaItem.height = intSafe4 != null ? intSafe4.intValue() : 0;
        return mediaItem;
    }

    public static MediaItem buildFileMediaItem$default(Cursor cursor, Uri uri, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return buildFileMediaItem(cursor, uri, z, z2);
    }

    public static final MediaItem buildMediaItem(Cursor cursor, Uri uri, boolean z, boolean z2, boolean z3) {
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        return z3 ? buildFileMediaItem(cursor, uri, z, z2) : buildVideoMediaItem(cursor, uri, z, z2);
    }

    public static MediaItem buildMediaItem$default(Cursor cursor, Uri uri, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        if ((i & 8) != 0) {
            z3 = false;
        }
        return buildMediaItem(cursor, uri, z, z2, z3);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0091  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ac  */
    private static final MediaItem buildVideoMediaItem(Cursor cursor, Uri uri, boolean z, boolean z2) {
        qe6 missingItemByPath;
        String stringSafe;
        String stringSafe2;
        Triple tripleProcessHlsVideo;
        String stringSafe3 = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe3 == null) {
            return null;
        }
        if (!FileValidExtKt.isValidVideoFilePath(stringSafe3, false, z, false)) {
            return null;
        }
        String strH = ge6.a.h(stringSafe3);
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        int iIntValue = intSafe != null ? intSafe.intValue() : -1;
        boolean z3 = true;
        try {
            missingItemByPath = stringSafe3.length() > 0 ? MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemByPath(stringSafe3) : MediaCombineCacheManager.INSTANCE.getInstance().getMissingItemById(iIntValue, true);
            if (missingItemByPath != null) {
                vmb.a(TAG, "Cache hit for audio: mediaId=" + iIntValue + ", path=" + stringSafe3);
            }
        } catch (Exception e) {
            vmb.d(TAG, "Failed to get missing data from cache for audio: mediaId=" + iIntValue + ", path=" + stringSafe3, e);
            missingItemByPath = null;
        }
        if (missingItemByPath == null || (stringSafe = missingItemByPath.e()) == null) {
            stringSafe = CursorExtKt.getStringSafe(cursor, 1);
        } else {
            if (stringSafe.length() <= 0) {
                stringSafe = null;
            }
            if (stringSafe == null) {
                stringSafe = CursorExtKt.getStringSafe(cursor, 1);
            }
        }
        if (missingItemByPath != null) {
            stringSafe2 = missingItemByPath.e();
            if (stringSafe2.length() <= 0) {
                stringSafe2 = null;
            }
            if (stringSafe2 == null) {
                stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
                if (stringSafe2 == null) {
                    stringSafe2 = strH;
                }
            }
        } else {
            stringSafe2 = CursorExtKt.getStringSafe(cursor, 2);
            if (stringSafe2 == null) {
                stringSafe2 = strH;
            }
        }
        MediaItem mediaItem = new MediaItem(stringSafe3);
        mediaItem.id = iIntValue;
        mediaItem.title = stringSafe;
        mediaItem.displayName = stringSafe2;
        mediaItem.mineType = CursorExtKt.getStringSafe(cursor, 3);
        mediaItem.relativePath = ge6.l(stringSafe3, stringSafe2);
        mediaItem.parentPath = ge6.a.j(stringSafe3);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 4);
        mediaItem.dateAdd = longSafe != null ? longSafe.longValue() : 0L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 5);
        mediaItem.dateModified = longSafe2 != null ? longSafe2.longValue() : 0L;
        mediaItem.uri = Uri.withAppendedPath(uri, String.valueOf(iIntValue));
        Long longSafe3 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue = longSafe3 != null ? longSafe3.longValue() : 0L;
        Long longSafe4 = CursorExtKt.getLongSafe(cursor, 8);
        long jLongValue2 = longSafe4 != null ? longSafe4.longValue() : 0L;
        if (z2 && (tripleProcessHlsVideo = processHlsVideo(stringSafe3)) != null) {
            jLongValue = ((Number) tripleProcessHlsVideo.component1()).longValue();
            jLongValue2 = ((Number) tripleProcessHlsVideo.component2()).longValue();
            mediaItem.thumbnailUrl = (String) tripleProcessHlsVideo.component3();
        }
        mediaItem.duration = jLongValue;
        mediaItem.size = jLongValue2;
        Long longSafe5 = CursorExtKt.getLongSafe(cursor, 9);
        mediaItem.dateToken = longSafe5 != null ? longSafe5.longValue() : 0L;
        Long longSafe6 = CursorExtKt.getLongSafe(cursor, 10);
        mediaItem.bucketId = longSafe6 != null ? longSafe6.longValue() : -1L;
        String stringSafe4 = CursorExtKt.getStringSafe(cursor, 11);
        if (stringSafe4 != null && stringSafe4.length() != 0) {
            z3 = false;
        }
        String str = z3 ? null : stringSafe4;
        if (str != null) {
            strH = str;
        }
        mediaItem.bucketDisplayName = strH;
        Integer intSafe2 = CursorExtKt.getIntSafe(cursor, 12);
        mediaItem.setDegree(intSafe2 != null ? intSafe2.intValue() : 0);
        Integer intSafe3 = CursorExtKt.getIntSafe(cursor, 13);
        mediaItem.width = intSafe3 != null ? intSafe3.intValue() : 0;
        Integer intSafe4 = CursorExtKt.getIntSafe(cursor, 14);
        mediaItem.height = intSafe4 != null ? intSafe4.intValue() : 0;
        mediaItem.resolution = CursorExtKt.getStringSafe(cursor, 15);
        return mediaItem;
    }

    public static MediaItem buildVideoMediaItem$default(Cursor cursor, Uri uri, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return buildVideoMediaItem(cursor, uri, z, z2);
    }

    public static final MediaItem createGroupHeaderItem(MediaItem mediaItem) {
        y45.j(mediaItem, "<this>");
        MediaItem mediaItem2 = new MediaItem(mediaItem.id, mediaItem.bucketId, mediaItem.title, mediaItem.displayName, mediaItem.mineType, mediaItem.bucketDisplayName, mediaItem.data, mediaItem.dateToken, mediaItem.dateAdd, mediaItem.dateModified, mediaItem.resolution, mediaItem.duration, mediaItem.size, mediaItem.uri);
        mediaItem2.setRelativePath(mediaItem.relativePath);
        mediaItem2.dateModified = mediaItem.dateModified;
        mediaItem2.isTimeItem = true;
        return mediaItem2;
    }

    public static final List<MediaDataMissingItem> mToMediaDataMissingItem(List<? extends MediaItem> list, int i) {
        y45.j(list, "<this>");
        List<? extends MediaItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(toMediaDataMissingItem((MediaItem) it.next(), i));
        }
        return arrayList;
    }

    public static final Triple<Long, Long, String> processHlsVideo(String str) {
        if (!tr4.c(str)) {
            return null;
        }
        tr4.b(new File(str));
        return null;
    }

    private static final long resolveSafeSize(MediaDataMissingItem mediaDataMissingItem) {
        Object objM279constructorimpl;
        Integer mediaSize = mediaDataMissingItem.getMediaSize();
        long jIntValue = mediaSize != null ? mediaSize.intValue() : 0L;
        if (jIntValue > 0) {
            return jIntValue;
        }
        String str = mediaDataMissingItem.get_data();
        if (str.length() <= 0) {
            str = null;
        }
        if (str == null) {
            return 0L;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Long.valueOf(new File(str).length()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = 0L;
        }
        return ((Number) objM279constructorimpl).longValue();
    }

    public static final AudioItem toAudioItem(MediaDataMissingItem mediaDataMissingItem) {
        y45.j(mediaDataMissingItem, "<this>");
        AudioItem audioItem = new AudioItem();
        audioItem.id = mediaDataMissingItem.getMediaId();
        audioItem.data = mediaDataMissingItem.get_data();
        Long duration = mediaDataMissingItem.getDuration();
        audioItem.duration = duration != null ? duration.longValue() : 0L;
        audioItem.artistName = mediaDataMissingItem.getArtist();
        audioItem.albumName = mediaDataMissingItem.getAlbum();
        audioItem.mAlbumYear = mediaDataMissingItem.getAlbumYear();
        audioItem.size = resolveSafeSize(mediaDataMissingItem);
        audioItem.title = mediaDataMissingItem.getMediaAlias();
        audioItem.displayName = mediaDataMissingItem.getMediaAlias();
        Integer width = mediaDataMissingItem.getWidth();
        audioItem.width = width != null ? width.intValue() : 0;
        Integer height = mediaDataMissingItem.getHeight();
        audioItem.height = height != null ? height.intValue() : 0;
        audioItem.mCustomCoverPath = mediaDataMissingItem.getCustomCoverPath();
        return audioItem;
    }

    public static final List<AudioItem> toAudioItems(List<MediaDataMissingItem> list) {
        y45.j(list, "<this>");
        List<MediaDataMissingItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(toAudioItem((MediaDataMissingItem) it.next()));
        }
        return arrayList;
    }

    public static final MediaDataMissingItem toMediaDataMissingItem(MediaItem mediaItem, int i) {
        y45.j(mediaItem, "<this>");
        String str = mediaItem.data;
        y45.i(str, "data");
        return new MediaDataMissingItem(str, mediaItem.id, i, Long.valueOf(mediaItem.duration), null, null, null, Integer.valueOf(mediaItem.width), Integer.valueOf(mediaItem.height), Integer.valueOf(toSafeDbSizeInt(mediaItem.size)), null, null, 3184, null);
    }

    public static final MediaItem toMediaItem(MediaDataMissingItem mediaDataMissingItem) {
        y45.j(mediaDataMissingItem, "<this>");
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = mediaDataMissingItem.getMediaId();
        mediaItem.data = mediaDataMissingItem.get_data();
        Long duration = mediaDataMissingItem.getDuration();
        mediaItem.duration = duration != null ? duration.longValue() : 0L;
        mediaItem.size = resolveSafeSize(mediaDataMissingItem);
        mediaItem.title = mediaDataMissingItem.getMediaAlias();
        mediaItem.displayName = mediaDataMissingItem.getMediaAlias();
        Integer width = mediaDataMissingItem.getWidth();
        mediaItem.width = width != null ? width.intValue() : 0;
        Integer height = mediaDataMissingItem.getHeight();
        mediaItem.height = height != null ? height.intValue() : 0;
        return mediaItem;
    }

    public static final List<MediaItem> toMediaItems(List<MediaDataMissingItem> list) {
        y45.j(list, "<this>");
        List<MediaDataMissingItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(toMediaItem((MediaDataMissingItem) it.next()));
        }
        return arrayList;
    }

    public static final PlayListMediaItem toPlayListMediaItem(MediaItem mediaItem, long j) {
        y45.j(mediaItem, "<this>");
        int i = mediaItem.id;
        String str = mediaItem.data;
        y45.i(str, "data");
        return new PlayListMediaItem(0L, j, i, 0L, str, 9, null);
    }

    private static final int toSafeDbSizeInt(long j) {
        if (j <= 0) {
            return 0;
        }
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    public static final List<PlayListMediaItem> toPlayListMediaItem(List<? extends MediaItem> list, long j) {
        y45.j(list, "<this>");
        List<? extends MediaItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(toPlayListMediaItem((MediaItem) it.next(), j));
        }
        return arrayList;
    }

    public static final MediaDataMissingItem toMediaDataMissingItem(AudioItem audioItem, int i) {
        y45.j(audioItem, "<this>");
        String str = audioItem.data;
        y45.i(str, "data");
        return new MediaDataMissingItem(str, audioItem.id, i, Long.valueOf(audioItem.duration), audioItem.artistName, audioItem.albumName, audioItem.mAlbumYear, Integer.valueOf(audioItem.width), Integer.valueOf(audioItem.height), Integer.valueOf(toSafeDbSizeInt(audioItem.size)), audioItem.displayName, audioItem.mCustomCoverPath);
    }
}
