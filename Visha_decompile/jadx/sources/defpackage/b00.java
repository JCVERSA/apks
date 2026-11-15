package defpackage;

import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListMedia;
import com.transsion.dbdata.engine.DataEngine;
import com.transsion.dbdata.engine.base.scope.DataScope;
import com.transsion.dbdata.utils.AudioFilterUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public abstract class b00 {
    public static long[] f(int i, String str, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AudioItem audioItem = (AudioItem) it.next();
            arrayList2.add(rv8.b(i, str, audioItem.data, audioItem.id, System.currentTimeMillis()));
        }
        return AudioRoomDatabase.f(Utils.a()).e().insertPlayListMedia(arrayList2);
    }

    public static int g() {
        return AudioRoomDatabase.f(Utils.a()).b().deleteAllConvertAudio();
    }

    public static Uri h(PlayList playList, List list) {
        if (list == null || list.size() <= 0) {
            return Uri.parse("");
        }
        PlayListMedia playListMedia = (PlayListMedia) list.get(list.size() - 1);
        String str = playListMedia._data;
        playList.uriType = 0;
        playList.isCustomCover = false;
        AudioAlbum audioAlbumD = ao.U().D(playListMedia.media_id);
        if (audioAlbumD != null && audioAlbumD.imgPath != null && new File(audioAlbumD.imgPath).exists()) {
            str = audioAlbumD.imgPath;
            playList.uriType = 1;
            playList.isCustomCover = true;
        }
        return Uri.parse(str != null ? str : "");
    }

    public static boolean i(PlayListMedia playListMedia, AudioItem audioItem) {
        return audioItem.id == playListMedia.media_id;
    }

    public static void j(ArrayList arrayList, int i, final PlayListMedia playListMedia) {
        if (arrayList.size() >= i) {
            return;
        }
        try {
            arrayList.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return b00.i(playListMedia, (AudioItem) obj);
                }
            }).findFirst().get();
        } catch (NoSuchElementException unused) {
            if (arrayList.isEmpty()) {
                return;
            }
            AudioRoomDatabase.f(Utils.a()).e().deletePlayListMedia(playListMedia);
        }
    }

    public static Integer k(AudioItem audioItem) {
        return Integer.valueOf(audioItem.id);
    }

    public static boolean l(PlayListMedia playListMedia, AudioItem audioItem) {
        return audioItem.id == playListMedia.media_id;
    }

    public static void m(ArrayList arrayList, int i, ArrayList arrayList2, final PlayListMedia playListMedia) {
        if (arrayList.size() >= i) {
            return;
        }
        try {
            arrayList.add((AudioItem) arrayList2.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return b00.l(playListMedia, (AudioItem) obj);
                }
            }).findFirst().get());
        } catch (NoSuchElementException unused) {
            if (arrayList2.isEmpty()) {
                return;
            }
            AudioRoomDatabase.f(Utils.a()).e().deletePlayListMedia(playListMedia);
        }
    }

    public static ArrayList n(int i, String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getPlayListMediaIdByPlayListId(i);
        if (arrayList2.size() == 0) {
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList(DataEngine.a.c(DataScope.AUDIO, os1.a(new cr.a().t(str).f(true).v(arrayList2).e(), Utils.a(), AudioItem.class)));
        AudioFilterUtils.D(arrayList3, false);
        return arrayList3;
    }

    public static ArrayList o(String str) {
        ArrayList arrayList = (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getFavoriteItemMediaIds(oa1.e());
        if (arrayList.size() == 0) {
            return new ArrayList();
        }
        final ArrayList arrayList2 = new ArrayList(DataEngine.a.c(DataScope.AUDIO, os1.a(new cr.a().t(str).f(true).v(arrayList).e(), Utils.a(), AudioItem.class)));
        ArrayList arrayList3 = (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getAllFavoriteItem(oa1.e());
        final int iE = oa1.e();
        arrayList3.stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                b00.j(arrayList2, iE, (PlayListMedia) obj);
            }
        });
        AudioFilterUtils.D(arrayList2, true);
        return arrayList2;
    }

    public static List p(List list) {
        d68 d68VarE = AudioRoomDatabase.f(Utils.a()).e();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PlayList playList = (PlayList) it.next();
            ArrayList arrayList = (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getPlayListMediaIdByPlayListId(playList.id);
            ArrayList arrayList2 = new ArrayList(DataEngine.a.c(DataScope.AUDIO, os1.a(new cr.a().f(true).v(arrayList).e(), Utils.a(), AudioItem.class)));
            AudioFilterUtils.D(arrayList2, false);
            playList.count = arrayList2.size();
            if (!arrayList2.isEmpty()) {
                ArrayList arrayList3 = (ArrayList) arrayList2.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return b00.k((AudioItem) obj);
                    }
                }).collect(Collectors.toList());
                ArrayList arrayList4 = new ArrayList();
                arrayList4.addAll(arrayList);
                arrayList4.removeAll(arrayList3);
                if (!arrayList4.isEmpty()) {
                    d68VarE.deletePlayListMediaByMediaId(arrayList4);
                }
            }
            playList.uri = h(playList, (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getPlayListMediaById(playList.id, oa1.e()));
        }
        return list;
    }

    public static ArrayList q(String str) {
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getAudioPlayRecordMediaIds(oa1.e());
        if (arrayList2.size() == 0) {
            return arrayList;
        }
        final ArrayList arrayList3 = new ArrayList(DataEngine.a.c(DataScope.AUDIO, os1.a(new cr.a().t(str).f(true).v(arrayList2).e(), Utils.a(), AudioItem.class)));
        ArrayList arrayList4 = (ArrayList) AudioRoomDatabase.f(Utils.a()).e().getAllAudioViewRecord(oa1.e());
        final int iE = oa1.e();
        arrayList4.stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                b00.m(arrayList, iE, arrayList3, (PlayListMedia) obj);
            }
        });
        AudioFilterUtils.D(arrayList, false);
        return arrayList;
    }

    public static int r(AudioItem audioItem) {
        d68 d68VarE = AudioRoomDatabase.f(Utils.a()).e();
        PlayListMedia audioPlayRecordById = d68VarE.getAudioPlayRecordById(audioItem.id);
        if (audioPlayRecordById == null) {
            return (int) d68VarE.insertPlayListMedia(rv8.c(audioItem.data, audioItem.id, 1, 1, System.currentTimeMillis()));
        }
        audioPlayRecordById.record_time = System.currentTimeMillis();
        audioPlayRecordById.playlistFlag = 1;
        audioPlayRecordById.play_count++;
        return d68VarE.updateAudioPlayRecord(audioPlayRecordById);
    }

    public static void s(AudioItem audioItem, boolean z) {
        d68 d68VarE = AudioRoomDatabase.f(Utils.a()).e();
        if (z) {
            dp3.e().a(true, audioItem);
            d68VarE.insertPlayListMedia(rv8.c(audioItem.data, audioItem.id, 2, 0, System.currentTimeMillis()));
        } else {
            d68VarE.deleteFavoriteItemById(audioItem.id);
            dp3.e().a(false, audioItem);
        }
        h27.c().e(1055, new Object[0]);
    }
}
