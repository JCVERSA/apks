package com.transsion.dbdata.utils;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RoomDatabaseKt;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.AudioPlayHistory;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.MediaDataMissingItem;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMedia;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.database.VideoPlayListMedia;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository;
import defpackage.abb;
import defpackage.i81;
import defpackage.j1a;
import defpackage.ky5;
import defpackage.ly0;
import defpackage.mk0;
import defpackage.oe6;
import defpackage.se;
import defpackage.vmb;
import defpackage.wh1;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.c;
import kotlin.collections.a;

public final class MigrationUtils {
    public static int b;
    public static Boolean e;
    public static Boolean f;
    public static final MigrationUtils a = new MigrationUtils();
    public static final List c = y71.n("playlist", "media_playList", "AudioAlbum", "convert_audio");
    public static final List d = y71.n("video_playlist", "video_media_playList");

    public static final boolean e() {
        MigrationUtils migrationUtils = a;
        boolean zN = migrationUtils.n();
        boolean zO = migrationUtils.o();
        Log.i("MigrationUtils", "checkOldDatabaseExists: audioHasData=" + zN + ", videoHasData=" + zO);
        return zN || zO;
    }

    public static final boolean k() {
        return a.g() != 0;
    }

    public final int f() {
        return b;
    }

    public final int g() {
        boolean z = l() && n();
        boolean z2 = m() && o();
        if (z && z2) {
            return 3;
        }
        if (z) {
            return 1;
        }
        return z2 ? 2 : 0;
    }

    public final boolean h(String str, List list) {
        File databasePath = se.a().getDatabasePath(str);
        boolean z = false;
        if (!databasePath.exists()) {
            return false;
        }
        try {
            SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(databasePath.getAbsolutePath(), null, 1);
            try {
                List<String> list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    for (String str2 : list2) {
                        MigrationUtils migrationUtils = a;
                        y45.g(sQLiteDatabaseOpenDatabase);
                        if (migrationUtils.i(sQLiteDatabaseOpenDatabase, str2)) {
                            z = true;
                            break;
                        }
                    }
                }
                ly0.a(sQLiteDatabaseOpenDatabase, null);
                return z;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(sQLiteDatabaseOpenDatabase, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            Log.e("MigrationUtils", "hasOldData: open " + str + " failed, fallback to true", e2);
            return true;
        }
    }

    public final boolean i(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name=? COLLATE NOCASE", new String[]{str});
        try {
            if (!cursorRawQuery.moveToFirst()) {
                ly0.a(cursorRawQuery, null);
                return false;
            }
            zfb zfbVar = zfb.a;
            ly0.a(cursorRawQuery, null);
            Cursor cursorRawQuery2 = sQLiteDatabase.rawQuery("SELECT 1 FROM `" + str + "` LIMIT 1", null);
            try {
                boolean zMoveToFirst = cursorRawQuery2.moveToFirst();
                ly0.a(cursorRawQuery2, null);
                return zMoveToFirst;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(cursorRawQuery2, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                ly0.a(cursorRawQuery, th3);
                throw th4;
            }
        }
    }

    public final void j(int i) {
        String str;
        if (i == 1) {
            str = "mmkv_key_audio_migrate_retry_count";
        } else if (i == 2) {
            str = "mmkv_key_video_migrate_retry_count";
        } else if (i != 3) {
            return;
        } else {
            str = "mmkv_key_all_migrate_retry_count";
        }
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        mmkvP.t(str, mmkvP.g(str, 0) + 1);
    }

    public final boolean l() {
        return MMKV.p().e("mmkv_key_audio_is_migrate", true);
    }

    public final boolean m() {
        return MMKV.p().e("mmkv_key_video_is_migrate", true);
    }

    public final boolean n() {
        Boolean bool = e;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zH = h("audioMedia.db", c);
        e = Boolean.valueOf(zH);
        return zH;
    }

    public final boolean o() {
        Boolean bool = f;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zH = h("medias.db", d);
        f = Boolean.valueOf(zH);
        return zH;
    }

    public final void p(Context context) {
        Map mapL;
        Map mapL2;
        VideoRoomDatabase videoRoomDatabaseH = VideoRoomDatabase.h(context);
        AudioRoomDatabase audioRoomDatabaseF = AudioRoomDatabase.f(context);
        MediaRoomDatabase mediaRoomDatabaseD = MediaRoomDatabase.INSTANCE.d();
        audioRoomDatabaseF.query("PRAGMA query_only = ON", (Object[]) null);
        List<PlayListMedia> playedMediaList = audioRoomDatabaseF.e().getPlayedMediaList();
        PlayCountDataManager.b().c();
        Map map = PlayCountDataManager.b().a;
        y45.g(playedMediaList);
        List<PlayListMedia> list = playedMediaList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((PlayListMedia) it.next())._data);
        }
        Set setG1 = i81.g1(arrayList);
        Set setEntrySet = map.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : setEntrySet) {
            Boolean boolValueOf = Boolean.valueOf(setG1.contains(((Map.Entry) obj).getKey()));
            Object arrayList2 = linkedHashMap.get(boolValueOf);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(boolValueOf, arrayList2);
            }
            ((List) arrayList2).add(obj);
        }
        List list2 = (List) linkedHashMap.get(Boolean.TRUE);
        if (list2 != null) {
            List<Map.Entry> list3 = list2;
            mapL = new LinkedHashMap(wn8.d(ky5.g(z71.v(list3, 10)), 16));
            for (Map.Entry entry : list3) {
                Pair pairA = abb.a(entry.getKey(), entry.getValue());
                mapL.put(pairA.getFirst(), pairA.getSecond());
            }
        } else {
            mapL = a.l();
        }
        List list4 = (List) linkedHashMap.get(Boolean.FALSE);
        if (list4 != null) {
            List<Map.Entry> list5 = list4;
            mapL2 = new LinkedHashMap(wn8.d(ky5.g(z71.v(list5, 10)), 16));
            for (Map.Entry entry2 : list5) {
                Pair pairA2 = abb.a(entry2.getKey(), entry2.getValue());
                mapL2.put(pairA2.getFirst(), pairA2.getSecond());
            }
        } else {
            mapL2 = a.l();
        }
        Pair pair = new Pair(mapL, mapL2);
        Map map2 = (Map) pair.component1();
        Map<String, Integer> map3 = (Map) pair.component2();
        int iG = g();
        String str = "_data";
        if (iG == 1) {
            String str2 = "_data";
            ArrayList arrayList3 = new ArrayList(z71.v(list, 10));
            for (PlayListMedia playListMedia : list) {
                long j = playListMedia.media_id;
                String str3 = playListMedia._data;
                String str4 = str2;
                y45.i(str3, str4);
                Integer num = (Integer) map2.get(playListMedia._data);
                int iIntValue = num != null ? num.intValue() : 0;
                long j2 = playListMedia.record_time;
                arrayList3.add(new AudioPlayHistory(str3, Long.valueOf(j), iIntValue, j2, j2));
                str2 = str4;
            }
            mediaRoomDatabaseD.f().upsertMultiple(arrayList3);
        } else if (iG == 2) {
            videoRoomDatabaseH.f().batchUpdatePlayCounts(map3);
        } else if (iG == 3) {
            ArrayList arrayList4 = new ArrayList(z71.v(list, 10));
            for (PlayListMedia playListMedia2 : list) {
                long j3 = playListMedia2.media_id;
                String str5 = playListMedia2._data;
                y45.i(str5, str);
                Integer num2 = (Integer) map2.get(playListMedia2._data);
                int iIntValue2 = num2 != null ? num2.intValue() : 0;
                long j4 = playListMedia2.record_time;
                arrayList4.add(new AudioPlayHistory(str5, Long.valueOf(j3), iIntValue2, j4, j4));
                str = str;
            }
            mediaRoomDatabaseD.f().upsertMultiple(arrayList4);
            videoRoomDatabaseH.f().batchUpdatePlayCounts(map3);
        }
        audioRoomDatabaseF.query("PRAGMA query_only = OFF", (Object[]) null);
    }

    public final void q(Context context) {
        ArrayList arrayList;
        AudioRoomDatabase audioRoomDatabaseF = AudioRoomDatabase.f(context);
        MediaRoomDatabase mediaRoomDatabaseD = MediaRoomDatabase.INSTANCE.d();
        audioRoomDatabaseF.query("PRAGMA query_only = ON", (Object[]) null);
        List<PlayList> playList = audioRoomDatabaseF.d().getPlayList(Integer.MAX_VALUE);
        List<PlayListMedia> allPlayListMedia = audioRoomDatabaseF.e().getAllPlayListMedia();
        int i = 0;
        int size = playList != null ? playList.size() : 0;
        LogUtils.j("MigrationUtils", "Found " + size + " audio playlists, " + allPlayListMedia.size() + " media items");
        y45.g(allPlayListMedia);
        List<PlayListMedia> list = allPlayListMedia;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            PlayListMedia playListMedia = (PlayListMedia) obj;
            if (playListMedia.playlist_id != 0 || playListMedia.playlistFlag != 1) {
                arrayList2.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList2) {
            Integer numValueOf = Integer.valueOf(((PlayListMedia) obj2).playlist_id);
            Object arrayList3 = linkedHashMap.get(numValueOf);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(numValueOf, arrayList3);
            }
            ((List) arrayList3).add(obj2);
        }
        int i2 = 10;
        ArrayList arrayList4 = new ArrayList(z71.v(list, 10));
        for (PlayListMedia playListMedia2 : list) {
            arrayList4.add("id=" + playListMedia2.media_id + " pid=" + playListMedia2.playlist_id + " flag=" + playListMedia2.playlistFlag + " data=" + playListMedia2._data);
        }
        vmb.e("MigrationUtils", "migrateAudio: allMediaItems=" + arrayList4);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        List<PlayList> list2 = playList;
        int i3 = 2;
        if (list2 != null && !list2.isEmpty()) {
            for (PlayList playList2 : playList) {
                List listK = (List) linkedHashMap.get(Integer.valueOf(playList2.id));
                if (listK == null) {
                    listK = y71.k();
                }
                String str = playList2.name;
                y45.i(str, "name");
                PlayListItem playListItem = new PlayListItem(0L, str, (listK.isEmpty() || ((PlayListMedia) listK.get(i)).playlistFlag != i3) ? 3 : i3, 1, playList2.setup_time, playList2.last_play_time, 1, null);
                long jInsertSingle = mediaRoomDatabaseD.j().insertSingle(playListItem);
                linkedHashMap2.put(Integer.valueOf(playList2.id), Long.valueOf(jInsertSingle));
                vmb.e("MigrationUtils", "Inserted new playlistItem,oldListId: " + playList2.id + ", newPlaylistId: " + jInsertSingle + ",newItem:" + playListItem);
                i = 0;
                i3 = 2;
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            long jLongValue = ((Number) entry.getValue()).longValue();
            List listK2 = (List) linkedHashMap.get(Integer.valueOf(iIntValue));
            if (listK2 == null) {
                listK2 = y71.k();
            }
            List<PlayListMedia> list3 = listK2;
            ArrayList arrayList6 = new ArrayList(z71.v(list3, i2));
            for (PlayListMedia playListMedia3 : list3) {
                int i4 = playListMedia3.media_id;
                long j = playListMedia3.record_time;
                String str2 = playListMedia3._data;
                y45.i(str2, "_data");
                arrayList6.add(new PlayListMediaItem(0L, jLongValue, i4, j, str2, 1, null));
            }
            arrayList5.addAll(arrayList6);
            i2 = 10;
        }
        vmb.e("MigrationUtils", "create playlistItems,allNewMediaItems: " + arrayList5);
        long favoritePlaylistId = mediaRoomDatabaseD.j().getFavoritePlaylistId(1);
        vmb.e("MigrationUtils", "create favoriteItems,favoritePlaylistId: " + favoritePlaylistId);
        if (favoritePlaylistId <= 0) {
            vmb.i("MigrationUtils", "migrateAudio: favoritePlaylistId not found, creating default favorite playlist");
            long jCurrentTimeMillis = System.currentTimeMillis();
            favoritePlaylistId = mediaRoomDatabaseD.j().insertSingle(new PlayListItem(0L, "Favorite", 2, 1, jCurrentTimeMillis, jCurrentTimeMillis, 1, null));
            vmb.e("MigrationUtils", "migrateAudio: created favoritePlaylistId=" + favoritePlaylistId);
        }
        List list4 = (List) linkedHashMap.get(0);
        vmb.e("MigrationUtils", "migrateAudio: mediaItemsByPlaylistId[0] size=" + (list4 != null ? list4.size() : 0));
        if (list4 != null) {
            ArrayList<PlayListMedia> arrayList7 = new ArrayList();
            for (Object obj3 : list4) {
                if (((PlayListMedia) obj3).playlistFlag == 2) {
                    arrayList7.add(obj3);
                }
            }
            arrayList = new ArrayList(z71.v(arrayList7, 10));
            for (PlayListMedia playListMedia4 : arrayList7) {
                int i5 = playListMedia4.media_id;
                long j2 = playListMedia4.record_time;
                String str3 = playListMedia4._data;
                y45.i(str3, "_data");
                arrayList.add(new PlayListMediaItem(0L, favoritePlaylistId, i5, j2, str3, 1, null));
            }
        } else {
            arrayList = null;
        }
        vmb.e("MigrationUtils", "migrateAudio: favoritePlayListItems size=" + (arrayList != null ? arrayList.size() : 0));
        if (arrayList != null && !arrayList.isEmpty()) {
            arrayList5.addAll(arrayList);
            vmb.e("MigrationUtils", "create favoriteItems,favoritePlayListItems: " + arrayList);
        }
        if (!arrayList5.isEmpty()) {
            mediaRoomDatabaseD.k().insertMultiple(arrayList5);
        }
        audioRoomDatabaseF.query("PRAGMA query_only = OFF", (Object[]) null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0119  */
    /* JADX WARN: Code duplicated, block: B:48:0x0124  */
    /* JADX WARN: Code duplicated, block: B:64:0x01b4  */
    public final void r(Context context) {
        LinkedHashMap linkedHashMap;
        MediaDataMissingItem mediaDataMissingItem;
        String str;
        AudioRoomDatabase audioRoomDatabaseF = AudioRoomDatabase.f(context);
        MediaRoomDatabase mediaRoomDatabaseD = MediaRoomDatabase.INSTANCE.d();
        String mediaAlias = null;
        audioRoomDatabaseF.query("PRAGMA query_only = ON", (Object[]) null);
        List<AudioAlbum> allAudioAlbum = audioRoomDatabaseF.a().getAllAudioAlbum();
        List<AudioAlbum> list = allAudioAlbum;
        if (list == null || list.isEmpty()) {
            vmb.a("MigrationUtils", "migrateAudioCover: No audio album data found, skipping migration");
            audioRoomDatabaseF.query("PRAGMA query_only = OFF", (Object[]) null);
            return;
        }
        vmb.a("MigrationUtils", "migrateAudioCover: Found " + allAudioAlbum.size() + " audio album items to migrate");
        List<AudioAlbum> list2 = allAudioAlbum;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AudioAlbum) it.next()).id);
        }
        List listQueryBatchByIdsAndName$default = SystemAudioQueryRepository.queryBatchByIdsAndName$default(new SystemAudioQueryRepository(), arrayList, null, 2, null);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listQueryBatchByIdsAndName$default) {
            String str2 = ((AudioItem) obj).data;
            if (!(str2 == null || str2.length() == 0)) {
                arrayList2.add(obj);
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(wn8.d(ky5.g(z71.v(arrayList2, 10)), 16));
        for (Object obj2 : arrayList2) {
            linkedHashMap2.put(Integer.valueOf(((AudioItem) obj2).id), obj2);
        }
        if (linkedHashMap2.isEmpty()) {
            vmb.a("MigrationUtils", "migrateAudioCover: No valid audio items found after filtering");
            audioRoomDatabaseF.query("PRAGMA query_only = OFF", (Object[]) null);
            return;
        }
        oe6 oe6VarH = mediaRoomDatabaseD.h();
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            AudioAlbum audioAlbum = (AudioAlbum) it2.next();
            AudioItem audioItem = (AudioItem) linkedHashMap2.get(audioAlbum.id);
            if (audioItem != null) {
                String str3 = audioItem.data;
                y45.i(str3, "data");
                MediaDataMissingItem byMediaPath = oe6VarH.getByMediaPath(str3);
                String str4 = audioItem.title;
                if (str4 == null) {
                    str4 = audioItem.displayName;
                    if (str4 != null || str4.length() <= 0) {
                        str4 = mediaAlias;
                    }
                } else {
                    if (str4.length() <= 0) {
                        str4 = mediaAlias;
                    }
                    if (str4 == null) {
                        str4 = audioItem.displayName;
                        if (str4 != null) {
                            str4 = mediaAlias;
                        } else {
                            str4 = mediaAlias;
                        }
                    }
                }
                Integer num = audioAlbum.id;
                String str5 = audioItem.title;
                String str6 = audioItem.displayName;
                if (byMediaPath != null) {
                    mediaAlias = byMediaPath.getMediaAlias();
                }
                StringBuilder sb = new StringBuilder();
                linkedHashMap = linkedHashMap2;
                sb.append("migrateAudioCover: id=");
                sb.append(num);
                sb.append(" title=");
                sb.append(str5);
                sb.append(" displayName=");
                sb.append(str6);
                sb.append(" titleFromMediaStore=");
                sb.append(str4);
                sb.append(" existingAlias=");
                sb.append(mediaAlias);
                vmb.a("MigrationUtils", sb.toString());
                String str7 = audioItem.data;
                y45.i(str7, "data");
                Integer num2 = audioAlbum.id;
                y45.i(num2, TtmlNode.ATTR_ID);
                mediaDataMissingItem = new MediaDataMissingItem(str7, num2.intValue(), 1, null, null, null, null, null, null, null, str4, audioAlbum.imgPath, 1016, null);
                if (byMediaPath != null) {
                    String mediaAlias2 = byMediaPath.getMediaAlias();
                    if (mediaAlias2 == null) {
                        str = str4;
                    } else {
                        if (mediaAlias2.length() <= 0) {
                            mediaAlias2 = null;
                        }
                        if (mediaAlias2 == null) {
                            str = str4;
                        } else {
                            str = mediaAlias2;
                        }
                    }
                    String artist = byMediaPath.getArtist();
                    String album = byMediaPath.getAlbum();
                    String albumYear = byMediaPath.getAlbumYear();
                    Long duration = byMediaPath.getDuration();
                    Integer width = byMediaPath.getWidth();
                    Integer height = byMediaPath.getHeight();
                    Integer mediaSize = byMediaPath.getMediaSize();
                    String customCoverPath = audioAlbum.imgPath;
                    y45.g(customCoverPath);
                    if (customCoverPath.length() <= 0) {
                        customCoverPath = null;
                    }
                    if (customCoverPath == null) {
                        customCoverPath = byMediaPath.getCustomCoverPath();
                    }
                    MediaDataMissingItem mediaDataMissingItemCopy = mediaDataMissingItem.copy((7 & 1) != 0 ? mediaDataMissingItem._data : null, (7 & 2) != 0 ? mediaDataMissingItem.mediaId : 0, (7 & 4) != 0 ? mediaDataMissingItem.mediaType : 0, (7 & 8) != 0 ? mediaDataMissingItem.duration : duration, (7 & 16) != 0 ? mediaDataMissingItem.artist : artist, (7 & 32) != 0 ? mediaDataMissingItem.album : album, (7 & 64) != 0 ? mediaDataMissingItem.albumYear : albumYear, (7 & 128) != 0 ? mediaDataMissingItem.width : width, (7 & 256) != 0 ? mediaDataMissingItem.height : height, (7 & 512) != 0 ? mediaDataMissingItem.mediaSize : mediaSize, (7 & 1024) != 0 ? mediaDataMissingItem.mediaAlias : str, (7 & 2048) != 0 ? mediaDataMissingItem.customCoverPath : customCoverPath);
                    if (mediaDataMissingItemCopy != null) {
                        mediaDataMissingItem = mediaDataMissingItemCopy;
                    }
                }
            } else {
                it2 = it2;
                linkedHashMap = linkedHashMap2;
                mediaDataMissingItem = null;
            }
            if (mediaDataMissingItem != null) {
                arrayList3.add(mediaDataMissingItem);
            }
            it2 = it2;
            linkedHashMap2 = linkedHashMap;
            mediaAlias = null;
        }
        if (arrayList3.isEmpty()) {
            vmb.i("MigrationUtils", "migrateAudioCover: No valid media data missing items to insert");
        } else {
            oe6VarH.upsertMultiple(arrayList3);
            vmb.e("MigrationUtils", "migrateAudioCover: Successfully migrated " + arrayList3.size() + " audio cover items");
        }
        audioRoomDatabaseF.query("PRAGMA query_only = OFF", (Object[]) null);
        vmb.a("MigrationUtils", "migrateAudioCover: Database unlocked successfully");
    }

    public final void s(Context context) {
        String string;
        String str;
        String string2;
        MediaDataMissingItem mediaDataMissingItem;
        String mediaAlias;
        oe6 oe6VarH = MediaRoomDatabase.INSTANCE.d().h();
        SystemAudioQueryRepository systemAudioQueryRepository = new SystemAudioQueryRepository();
        List<MediaDataMissingItem> allMissingData = oe6VarH.getAllMissingData();
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(allMissingData, 10)), 16));
        for (Object obj : allMissingData) {
            linkedHashMap.put(((MediaDataMissingItem) obj).get_data(), obj);
        }
        List<AudioItem> listQueryAll$default = SystemAudioQueryRepository.queryAll$default(systemAudioQueryRepository, null, 1, null);
        if (listQueryAll$default.isEmpty()) {
            vmb.a("MigrationUtils", "migrateSmartEditAlias: No audio items found, skipping");
            return;
        }
        vmb.a("MigrationUtils", "migrateSmartEditAlias: Scanning " + listQueryAll$default.size() + " audio items");
        ArrayList arrayList = new ArrayList();
        for (AudioItem audioItem : listQueryAll$default) {
            String str2 = audioItem.data;
            if (str2 != null) {
                int i = audioItem.id;
                String str3 = audioItem.title;
                if (str3 != null && (string = j1a.i1(str3).toString()) != null && (str = audioItem.displayName) != null && (string2 = j1a.i1(str).toString()) != null && !y45.e(string, string2)) {
                    MediaDataMissingItem mediaDataMissingItem2 = (MediaDataMissingItem) linkedHashMap.get(str2);
                    if (mediaDataMissingItem2 == null || (mediaAlias = mediaDataMissingItem2.getMediaAlias()) == null || mediaAlias.length() <= 0) {
                        vmb.e("MigrationUtils", "migrateSmartEditAlias: title=" + string + " != displayName=" + string2 + ", path=" + str2);
                        if (mediaDataMissingItem2 == null || (mediaDataMissingItem = mediaDataMissingItem2.copy((7 & 1) != 0 ? mediaDataMissingItem2._data : null, (7 & 2) != 0 ? mediaDataMissingItem2.mediaId : 0, (7 & 4) != 0 ? mediaDataMissingItem2.mediaType : 0, (7 & 8) != 0 ? mediaDataMissingItem2.duration : null, (7 & 16) != 0 ? mediaDataMissingItem2.artist : null, (7 & 32) != 0 ? mediaDataMissingItem2.album : null, (7 & 64) != 0 ? mediaDataMissingItem2.albumYear : null, (7 & 128) != 0 ? mediaDataMissingItem2.width : null, (7 & 256) != 0 ? mediaDataMissingItem2.height : null, (7 & 512) != 0 ? mediaDataMissingItem2.mediaSize : null, (7 & 1024) != 0 ? mediaDataMissingItem2.mediaAlias : string, (7 & 2048) != 0 ? mediaDataMissingItem2.customCoverPath : null)) == null) {
                            String str4 = audioItem.artistName;
                            String str5 = audioItem.albumName;
                            String str6 = audioItem.mAlbumYear;
                            Long lValueOf = Long.valueOf(audioItem.duration);
                            mediaDataMissingItem = new MediaDataMissingItem(str2, i, 1, lValueOf.longValue() > 0 ? lValueOf : null, str4, str5, str6, null, null, null, string, null, 2944, null);
                        }
                        arrayList.add(mediaDataMissingItem);
                    } else {
                        vmb.a("MigrationUtils", "migrateSmartEditAlias: skip (alias exists), path=" + str2);
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            vmb.a("MigrationUtils", "migrateSmartEditAlias: No alias items to migrate");
            return;
        }
        oe6VarH.upsertMultiple(arrayList);
        vmb.e("MigrationUtils", "migrateSmartEditAlias: Migrated " + arrayList.size() + " alias items");
    }

    public final void t(Context context) {
        ArrayList arrayList;
        VideoRoomDatabase videoRoomDatabaseH = VideoRoomDatabase.h(context);
        MediaRoomDatabase mediaRoomDatabaseD = MediaRoomDatabase.INSTANCE.d();
        videoRoomDatabaseH.query("PRAGMA query_only = ON", (Object[]) null);
        List<VideoPlayList> playList = videoRoomDatabaseH.d().getPlayList(Integer.MAX_VALUE);
        List<VideoPlayListMedia> allPlayListMedia = videoRoomDatabaseH.e().getAllPlayListMedia();
        int i = 0;
        int size = playList != null ? playList.size() : 0;
        vmb.a("MigrationUtils", "Found " + size + " video playlists, " + allPlayListMedia.size() + " media items");
        y45.g(allPlayListMedia);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : allPlayListMedia) {
            if (((VideoPlayListMedia) obj).playlistFlag != 1) {
                arrayList2.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList2) {
            Integer numValueOf = Integer.valueOf(((VideoPlayListMedia) obj2).playlist_id);
            Object arrayList3 = linkedHashMap.get(numValueOf);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(numValueOf, arrayList3);
            }
            ((List) arrayList3).add(obj2);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        List<VideoPlayList> list = playList;
        if (list != null && !list.isEmpty()) {
            for (VideoPlayList videoPlayList : playList) {
                List listK = (List) linkedHashMap.get(Integer.valueOf(videoPlayList.id));
                if (listK == null) {
                    listK = y71.k();
                }
                String str = videoPlayList.name;
                y45.i(str, "name");
                PlayListItem playListItem = new PlayListItem(0L, str, (listK.isEmpty() || ((VideoPlayListMedia) listK.get(i)).playlistFlag != 2) ? 3 : 2, 2, videoPlayList.setup_time, videoPlayList.last_play_time, 1, null);
                long jInsertSingle = mediaRoomDatabaseD.j().insertSingle(playListItem);
                linkedHashMap2.put(Integer.valueOf(videoPlayList.id), Long.valueOf(jInsertSingle));
                vmb.e("MigrationUtils", "Inserted new video playlistItem,oldListId: " + videoPlayList.id + ", newPlaylistId: " + jInsertSingle + ",newItem:" + playListItem);
                linkedHashMap = linkedHashMap;
                i = 0;
            }
        }
        LinkedHashMap linkedHashMap3 = linkedHashMap;
        ArrayList arrayList4 = new ArrayList();
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            long jLongValue = ((Number) entry.getValue()).longValue();
            Integer numValueOf2 = Integer.valueOf(iIntValue);
            LinkedHashMap linkedHashMap4 = linkedHashMap3;
            List listK2 = (List) linkedHashMap4.get(numValueOf2);
            if (listK2 == null) {
                listK2 = y71.k();
            }
            List<VideoPlayListMedia> list2 = listK2;
            ArrayList arrayList5 = new ArrayList(z71.v(list2, 10));
            for (VideoPlayListMedia videoPlayListMedia : list2) {
                int i2 = videoPlayListMedia.media_id;
                long j = videoPlayListMedia.record_time;
                String str2 = videoPlayListMedia._data;
                y45.i(str2, "_data");
                ArrayList arrayList6 = arrayList5;
                arrayList6.add(new PlayListMediaItem(0L, jLongValue, i2, j, str2, 1, null));
                arrayList5 = arrayList6;
            }
            arrayList4.addAll(arrayList5);
            linkedHashMap3 = linkedHashMap4;
        }
        LinkedHashMap linkedHashMap5 = linkedHashMap3;
        vmb.e("MigrationUtils", "create video playlistItems,allNewMediaItems: " + arrayList4);
        long favoritePlaylistId = mediaRoomDatabaseD.j().getFavoritePlaylistId(2);
        vmb.e("MigrationUtils", "create video favoriteItems,favoritePlaylistId: " + favoritePlaylistId);
        if (favoritePlaylistId <= 0) {
            vmb.i("MigrationUtils", "migrateVideo: favoritePlaylistId not found, creating default favorite playlist");
            long jCurrentTimeMillis = System.currentTimeMillis();
            favoritePlaylistId = mediaRoomDatabaseD.j().insertSingle(new PlayListItem(0L, "Favorite", 2, 2, jCurrentTimeMillis, jCurrentTimeMillis, 1, null));
            vmb.e("MigrationUtils", "migrateVideo: created favoritePlaylistId=" + favoritePlaylistId);
        }
        List list3 = (List) linkedHashMap5.get(0);
        if (list3 != null) {
            ArrayList<VideoPlayListMedia> arrayList7 = new ArrayList();
            for (Object obj3 : list3) {
                if (((VideoPlayListMedia) obj3).playlistFlag == 2) {
                    arrayList7.add(obj3);
                }
            }
            arrayList = new ArrayList(z71.v(arrayList7, 10));
            for (VideoPlayListMedia videoPlayListMedia2 : arrayList7) {
                int i3 = videoPlayListMedia2.media_id;
                long j2 = videoPlayListMedia2.record_time;
                String str3 = videoPlayListMedia2._data;
                y45.i(str3, "_data");
                arrayList.add(new PlayListMediaItem(0L, favoritePlaylistId, i3, j2, str3, 1, null));
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            arrayList4.addAll(arrayList);
            vmb.e("MigrationUtils", "create video favoriteItems,favoritePlayListItems: " + arrayList);
        }
        if (!arrayList4.isEmpty()) {
            mediaRoomDatabaseD.k().insertMultiple(arrayList4);
        }
        videoRoomDatabaseH.query("PRAGMA query_only = OFF", (Object[]) null);
    }

    public final void u(int i) {
        b = i;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object v(Context context, wh1 wh1Var) {
        MigrationUtils$starMigrateTask$1 migrationUtils$starMigrateTask$1;
        if (wh1Var instanceof MigrationUtils$starMigrateTask$1) {
            migrationUtils$starMigrateTask$1 = (MigrationUtils$starMigrateTask$1) wh1Var;
            int i = migrationUtils$starMigrateTask$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                migrationUtils$starMigrateTask$1.label = i - Integer.MIN_VALUE;
            } else {
                migrationUtils$starMigrateTask$1 = new MigrationUtils$starMigrateTask$1(this, wh1Var);
            }
        } else {
            migrationUtils$starMigrateTask$1 = new MigrationUtils$starMigrateTask$1(this, wh1Var);
        }
        Object obj = migrationUtils$starMigrateTask$1.result;
        Object objF = z45.f();
        int i2 = migrationUtils$starMigrateTask$1.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                c.b(obj);
                p(context);
                int iG = g();
                if (iG == 0) {
                    return mk0.a(true);
                }
                j(iG);
                MediaRoomDatabase mediaRoomDatabaseD = MediaRoomDatabase.INSTANCE.d();
                MigrationUtils$starMigrateTask$2 migrationUtils$starMigrateTask$2 = new MigrationUtils$starMigrateTask$2(iG, context, null);
                migrationUtils$starMigrateTask$1.L$0 = context;
                migrationUtils$starMigrateTask$1.label = 1;
                if (RoomDatabaseKt.withTransaction(mediaRoomDatabaseD, migrationUtils$starMigrateTask$2, migrationUtils$starMigrateTask$1) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
        } catch (Exception e2) {
            try {
                AudioRoomDatabase.f(context).query("PRAGMA query_only = OFF", (Object[]) null);
                VideoRoomDatabase.h(context).query("PRAGMA query_only = OFF", (Object[]) null);
            } catch (Exception e3) {
                vmb.d("MigrationUtils", "Failed to unlock databases", e3);
            }
            vmb.d("MigrationUtils", "migration failed", e2);
            z = false;
        }
        return mk0.a(z);
    }
}
