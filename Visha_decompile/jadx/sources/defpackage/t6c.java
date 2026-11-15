package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.database.VideoRecord;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.utils.LoadDataUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public abstract class t6c {
    public static long c(MediaItem mediaItem) {
        long jInsertPlayListMedia = VideoRoomDatabase.h(Utils.a()).e().insertPlayListMedia(rv8.d(2, mediaItem.data, mediaItem.id, System.currentTimeMillis()));
        dp3.e().b(true, mediaItem);
        return jInsertPlayListMedia;
    }

    public static long[] d(int i, String str, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            arrayList2.add(rv8.e(i, str, mediaItem.data, mediaItem.id, System.currentTimeMillis()));
        }
        return VideoRoomDatabase.h(Utils.a()).e().insertPlayListMedia(arrayList2);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0048 A[SYNTHETIC] */
    public static void e(ArrayList arrayList, ArrayList arrayList2, boolean z) {
        ArrayList<MediaItem> arrayListB = ykc.a().b();
        boolean z2 = arrayList2.size() > 100 && arrayListB.size() > 100;
        HashSet hashSet = new HashSet(arrayList2);
        for (MediaItem mediaItem : arrayListB) {
            int i = mediaItem.id;
            Integer numValueOf = Integer.valueOf(i);
            if (z2) {
                if (hashSet.contains(numValueOf)) {
                    arrayList.add(mediaItem);
                    if (z2) {
                        hashSet.remove(Integer.valueOf(i));
                    } else {
                        arrayList2.remove(Integer.valueOf(i));
                    }
                }
            } else if (arrayList2.contains(numValueOf)) {
                arrayList.add(mediaItem);
                if (z2) {
                    hashSet.remove(Integer.valueOf(i));
                } else {
                    arrayList2.remove(Integer.valueOf(i));
                }
            }
        }
        if (z2 && z) {
            arrayList2.clear();
            arrayList2.addAll(hashSet);
        }
    }

    public static void f(Context context, MediaItem mediaItem) {
        if (mediaItem == null) {
            Log.e("VideoRoomDatabaseHelper", "deleteVideoStatesInDb error");
            return;
        }
        g5c g5cVarF = VideoRoomDatabase.h(context).f();
        Cursor videoRecordByMediaIdAndBuickId = null;
        try {
            videoRecordByMediaIdAndBuickId = g5cVarF.getVideoRecordByMediaIdAndBuickId(mediaItem.id, (int) mediaItem.bucketId);
            if (videoRecordByMediaIdAndBuickId != null && videoRecordByMediaIdAndBuickId.moveToFirst()) {
                g5cVarF.deleteVideoRecordByMediaIdAndData(mediaItem.data, mediaItem.id);
            }
        } finally {
            if (videoRecordByMediaIdAndBuickId != null) {
                videoRecordByMediaIdAndBuickId.close();
            }
        }
    }

    public static Integer g(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public static boolean h(String str, MediaItem mediaItem) {
        return mediaItem.data.equals(str);
    }

    public static ArrayList i(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaIdByPlayListFlag(i);
        if (arrayList2.size() == 0) {
            return arrayList;
        }
        e(arrayList, arrayList2, true);
        qpb.c(Utils.a());
        ArrayList arrayList3 = (ArrayList) VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaByPlaylistFlag(i);
        arrayList.addAll(qpb.X(Utils.a().getContentResolver(), arrayList2, false));
        arrayList.addAll((ArrayList) ruc.b(arrayList3));
        ye6.b(arrayList);
        return ns9.o() ? qpb.k0((ArrayList) ns9.sortMediaItem(arrayList)) : (ArrayList) ns9.sortMediaItem(arrayList);
    }

    public static ArrayList j(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaIdByPlayListId(i);
        if (arrayList2.size() == 0) {
            return arrayList;
        }
        qpb.c(Utils.a());
        ArrayList arrayListX = qpb.X(Utils.a().getContentResolver(), arrayList2, false);
        return ns9.o() ? qpb.k0(arrayListX) : arrayListX;
    }

    public static ArrayList k(ArrayList arrayList) {
        ivb ivbVarE = VideoRoomDatabase.h(Utils.a()).e();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            VideoPlayList videoPlayList = (VideoPlayList) it.next();
            ArrayList arrayList2 = (ArrayList) VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaIdByPlayListId(videoPlayList.id);
            ArrayList arrayListX = qpb.X(Utils.a().getContentResolver(), arrayList2, false);
            e(arrayListX, arrayList2, false);
            videoPlayList.count = arrayListX.size();
            videoPlayList.uri = arrayListX.isEmpty() ? null : ((MediaItem) arrayListX.get(0)).uri;
            if (!arrayListX.isEmpty()) {
                ArrayList arrayList3 = (ArrayList) arrayListX.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return t6c.g((MediaItem) obj);
                    }
                }).collect(Collectors.toList());
                ArrayList arrayList4 = new ArrayList();
                arrayList4.addAll(arrayList2);
                arrayList4.removeAll(arrayList3);
                if (!arrayList4.isEmpty()) {
                    ivbVarE.deletePlayListMediaByMediaId(arrayList4);
                }
            }
        }
        return arrayList;
    }

    public static ArrayList l(Context context, int i, boolean z) {
        return m(context, i, z, false);
    }

    public static ArrayList m(Context context, int i, boolean z, boolean z2) {
        MediaItem mediaItem;
        ArrayList arrayList = new ArrayList();
        try {
            g5c g5cVarF = VideoRoomDatabase.h(context).f();
            ArrayList<VideoRecord> arrayList2 = (ArrayList) g5cVarF.getAllRecordOrderRecordDate();
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                ArrayList arrayList3 = (ArrayList) g5cVarF.getRecordMediaIdsOrderRecordDate(oa1.e());
                boolean z3 = false;
                ArrayList arrayListX = qpb.X(context.getContentResolver(), arrayList3, false);
                e(arrayList, arrayList3, true);
                Log.d("VideoRoomDatabaseHelper", "queryAllVideoStates recordList count:" + arrayList2.size());
                for (VideoRecord videoRecord : arrayList2) {
                    final String str = videoRecord.data;
                    int i2 = videoRecord._id;
                    int i3 = videoRecord.position;
                    boolean z4 = videoRecord.isPlayCompleted == 1 ? true : z3;
                    boolean z5 = videoRecord.isVirtualFolder == 1 ? true : z3;
                    String str2 = videoRecord.virtualFolder_matchName;
                    int i4 = videoRecord.subtitle_index;
                    try {
                        mediaItem = (MediaItem) arrayListX.stream().filter(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return t6c.h(str, (MediaItem) obj);
                            }
                        }).findFirst().get();
                    } catch (NoSuchElementException unused) {
                        mediaItem = null;
                    }
                    if (mediaItem != null) {
                        if (arrayList.contains(mediaItem)) {
                            Log.w("VideoRoomDatabaseHelper", "queryAllVideoStates have duplicate:" + videoRecord);
                        } else {
                            mediaItem.setVirtualFolder(z5);
                            mediaItem.setVirtualFolderMatchName(str2);
                            mediaItem.setPlayPosition(i3);
                            mediaItem.isPlayComplete = z4;
                            mediaItem.setSubtitleIndex(i4);
                            mediaItem.dateToken = mediaItem.dateModified;
                            mediaItem.dateModified = videoRecord.record_date_modified / 1000;
                            mediaItem.duration = videoRecord.duration;
                            arrayList.add(mediaItem);
                        }
                    } else if (!z2) {
                        MediaItem mediaItemA = ruc.a(str);
                        if (mediaItemA != null) {
                            mediaItemA.isPlayComplete = z4;
                            mediaItemA.setPlayPosition(i3);
                            mediaItemA.dateToken = mediaItemA.dateModified;
                            mediaItemA.dateModified = videoRecord.record_date_modified / 1000;
                            mediaItemA.isFavorite = VideoRoomDatabase.h(context).e().getFavoriteItem(mediaItemA.data) != null;
                            arrayList.add(mediaItemA);
                        } else if (z && !arrayListX.isEmpty()) {
                            g5cVarF.deleteVideoRecordByMediaIdAndData(str, i2);
                        }
                    }
                    if (arrayList.size() > i) {
                        break;
                    }
                    z3 = false;
                }
            }
        } catch (Exception e) {
            LogUtils.m("VideoRoomDatabaseHelper", "Exception:" + e.getMessage());
        }
        Log.d("VideoRoomDatabaseHelper", "queryAllVideoStates " + arrayList.size());
        return arrayList;
    }

    public static ArrayList n(Context context, boolean z, int i, boolean z2) {
        ArrayList arrayListL = l(context, i, z2);
        ye6.b(arrayListL);
        return z ? qpb.k0(arrayListL) : arrayListL;
    }

    public static AudioTrack o(int i) {
        return VideoRoomDatabase.h(Utils.a()).g().getAudioTrack(i);
    }

    public static ArrayList p(int i, PlayVideoData playVideoData) {
        ArrayList arrayList = new ArrayList();
        if (((ArrayList) VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaIdByPlayListId(i)).size() == 0) {
            return arrayList;
        }
        qpb.c(Utils.a());
        arrayList.add(ruc.a(playVideoData.mYoutubeId));
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void q(Context context, PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates) {
        if (mediaItem == null || playVideoData == null) {
            return;
        }
        g5c g5cVarF = VideoRoomDatabase.h(context).f();
        VideoRecord theVideoRecordMediaCountByData = VideoRoomDatabase.h(context).f().getTheVideoRecordMediaCountByData(playVideoData.mYoutubeId);
        Object[] objArr = theVideoRecordMediaCountByData != null;
        int i = playerStates.currentPosition;
        if (i <= 1000 && playerStates.state == -1) {
            Log.w("VideoRoomDatabaseHelper", "not recordVideoStates the video can't play");
            if (objArr == true) {
                g5cVarF.deleteVideoRecordByData(playVideoData.mYoutubeId);
                return;
            }
            return;
        }
        int i2 = (playerStates.state == 6 || ((long) i) >= playVideoData.duration * 1000) ? 1 : 0;
        if (objArr == false) {
            theVideoRecordMediaCountByData = new VideoRecord();
        }
        theVideoRecordMediaCountByData.data = playVideoData.mYoutubeId;
        theVideoRecordMediaCountByData.position = i2 != 0 ? (int) playVideoData.duration : playerStates.currentPosition;
        theVideoRecordMediaCountByData.duration = (int) playVideoData.duration;
        theVideoRecordMediaCountByData.isPlayCompleted = i2;
        theVideoRecordMediaCountByData.isVirtualFolder = playVideoData.isVirtualFolder ? 1 : 0;
        String str = playVideoData.virtualFolderMatchName;
        if (str == null) {
            str = "";
        }
        theVideoRecordMediaCountByData.virtualFolder_matchName = str;
        theVideoRecordMediaCountByData.bucket_id = (int) mediaItem.bucketId;
        theVideoRecordMediaCountByData._id = mediaItem.id;
        theVideoRecordMediaCountByData.record_date_modified = System.currentTimeMillis();
        theVideoRecordMediaCountByData.subtitle_index = playerStates.subtitleIndex;
        if (objArr == true) {
            g5cVarF.updateVideoRecord(theVideoRecordMediaCountByData);
        } else {
            g5cVarF.insertVideoRecord(theVideoRecordMediaCountByData);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void r(Context context, PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates) {
        if (playVideoData != null) {
            try {
                if (playVideoData.isFromNet) {
                    q(context, playVideoData, mediaItem, playerStates);
                    return;
                }
            } catch (Exception e) {
                Log.e("VideoRoomDatabaseHelper", "recordVideoStates " + e.getMessage());
                return;
            }
        }
        if (mediaItem == null || playVideoData == null) {
            Log.w("VideoRoomDatabaseHelper", "recordVideoStates null");
            return;
        }
        if (!LoadDataUtils.m(mediaItem.id)) {
            Log.w("VideoRoomDatabaseHelper", "recordVideoStates not isLegalID");
            return;
        }
        g5c g5cVarF = VideoRoomDatabase.h(context).f();
        VideoRecord theVideoRecordMediaCountById = VideoRoomDatabase.h(context).f().getTheVideoRecordMediaCountById(mediaItem.id);
        Object[] objArr = theVideoRecordMediaCountById != null;
        int i = playerStates.currentPosition;
        if (i <= 1000 && playerStates.state == -1) {
            Log.w("VideoRoomDatabaseHelper", "not recordVideoStates the video can't play");
            if (objArr == true) {
                g5cVarF.deleteVideoRecordByMediaIdAndData(mediaItem.data, mediaItem.id);
                return;
            }
            return;
        }
        int i2 = (playerStates.state == 6 || ((long) i) >= mediaItem.duration) ? 1 : 0;
        if (objArr == false) {
            theVideoRecordMediaCountById = new VideoRecord();
        }
        theVideoRecordMediaCountById.data = mediaItem.data;
        theVideoRecordMediaCountById.position = playerStates.currentPosition;
        theVideoRecordMediaCountById.duration = (int) mediaItem.duration;
        theVideoRecordMediaCountById.isPlayCompleted = i2;
        theVideoRecordMediaCountById.isVirtualFolder = playVideoData.isVirtualFolder ? 1 : 0;
        String str = playVideoData.virtualFolderMatchName;
        if (str == null) {
            str = "";
        }
        theVideoRecordMediaCountById.virtualFolder_matchName = str;
        theVideoRecordMediaCountById.bucket_id = (int) mediaItem.bucketId;
        theVideoRecordMediaCountById._id = mediaItem.id;
        theVideoRecordMediaCountById.record_date_modified = System.currentTimeMillis();
        theVideoRecordMediaCountById.subtitle_index = playerStates.subtitleIndex;
        if (objArr == true) {
            g5cVarF.updateVideoRecord(theVideoRecordMediaCountById);
        } else {
            g5cVarF.insertVideoRecord(theVideoRecordMediaCountById);
        }
        Log.w("VideoRoomDatabaseHelper", "recordVideoStates " + theVideoRecordMediaCountById);
    }

    public static long s(MediaItem mediaItem) {
        return VideoRoomDatabase.h(Utils.a()).e().deleteFavoriteListMedia(mediaItem.data);
    }

    public static long[] t(int i, ArrayList arrayList) {
        long[] jArr = new long[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            jArr[i2] = VideoRoomDatabase.h(Utils.a()).e().deletePlayListMedia(i, ((MediaItem) arrayList.get(i2)).id);
        }
        return jArr;
    }
}
