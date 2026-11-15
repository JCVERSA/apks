package com.transsion.dbdata.beans.media;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.ao;
import defpackage.av3;
import defpackage.fi1;
import defpackage.h27;
import defpackage.iia;
import defpackage.iz;
import defpackage.r0a;
import defpackage.w6c;
import defpackage.zu3;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class PlayAudioListData {
    private static volatile PlayAudioListData INSTANCE;
    public boolean init;
    private String mCurrentSource;
    private String mLastSource;
    private String mPlayListTitle;
    private AudioItem mPlayMediaItem;
    private StringBuffer mSource;
    private int mPlayIndex = -1;
    private int mShuffleIndex = -1;
    volatile ArrayList<AudioItem> mCurrentPlayList = new ArrayList<>();
    volatile ArrayList<AudioItem> mLastPlayList = new ArrayList<>();
    ArrayList<AudioItem> mShuffleList = new ArrayList<>();
    private Object mLock = new Object();
    private iz mRepeat = new iz(1);

    public interface Md5Callback {
        void onMd5Computed(String str);
    }

    public interface RemoveListener {
        void onRemoveAndPlayNew(AudioItem audioItem);
    }

    public PlayAudioListData() {
        this.mRepeat.e(w6c.d(Utils.a(), "audio_play_repeat_mode", 1));
    }

    private void checkLastPlayList() {
        StringBuffer stringBuffer = this.mSource;
        String string = stringBuffer != null ? stringBuffer.toString() : "";
        if (string.equals(this.mCurrentSource)) {
            return;
        }
        if (TextUtils.isEmpty(this.mSource)) {
            this.mCurrentSource = string;
            return;
        }
        this.mLastSource = this.mCurrentSource;
        this.mCurrentSource = string;
        this.mLastPlayList = new ArrayList<>();
        this.mLastPlayList.addAll(this.mCurrentPlayList);
    }

    private void filterData(List<AudioItem> list) {
    }

    public static PlayAudioListData getInstance() {
        if (INSTANCE == null) {
            synchronized (PlayAudioListData.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new PlayAudioListData();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return INSTANCE;
    }

    public static boolean lambda$deleteItem$13(String str, AudioItem audioItem) {
        return str.equals(audioItem.data);
    }

    public static void lambda$persistPlayListAsync$0(ArrayList arrayList, boolean z, String str) {
        String strE = fi1.e(arrayList);
        CacheManager.getInstance().setCache("music_playlist", strE);
        MMKV.p().w("music_playlist", strE);
        if (z) {
            MMKV.p().w("music_playlist_source", str);
        }
    }

    public static void lambda$setUpMd5Async$3(AudioItem audioItem, final Md5Callback md5Callback) {
        if (audioItem == null) {
            return;
        }
        final String strS = zu3.s(audioItem.data);
        if (r0a.g(strS)) {
            return;
        }
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                md5Callback.onMd5Computed(strS);
            }
        });
    }

    public void lambda$synDelete$4() {
        Stream.of((Object[]) new ArrayList[]{this.mCurrentPlayList, this.mShuffleList, this.mLastPlayList}).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.synDelete((ArrayList) obj);
            }
        });
    }

    public static boolean lambda$synDelete$5(AudioItem audioItem) {
        return !av3.x(audioItem.data);
    }

    public static boolean lambda$synFilter$10(Set set, AudioItem audioItem) {
        return !set.contains(audioItem.data);
    }

    public void lambda$synFilter$8(List list) {
        final Set set = (Set) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((AudioItem) obj).data;
            }
        }).collect(Collectors.toSet());
        Stream.of((Object[]) new ArrayList[]{this.mCurrentPlayList, this.mShuffleList, this.mLastPlayList}).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.lambda$synFilter$7(set, (ArrayList) obj);
            }
        });
    }

    public void lambda$synFilter$9() {
        final List list = (List) ao.U().x(null).getSecond();
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$synFilter$8(list);
            }
        });
    }

    public static void lambda$synRename$12(String str, String str2, AudioItem audioItem) {
        if (str.equals(audioItem.data)) {
            audioItem.data = str2;
            audioItem.displayName = new File(str2).getName();
        }
    }

    private void nextInsert(boolean z, int i, List<AudioItem> list, AudioItem audioItem) {
        if (z) {
            if (i > list.size() - 2) {
                list.add(audioItem);
                return;
            } else {
                list.add(i + 1, audioItem);
                return;
            }
        }
        if (i > list.size() - 2) {
            list.add(audioItem);
        } else {
            list.add(i + 1, audioItem);
        }
    }

    private void persistPlayListAsync(List<AudioItem> list, final boolean z) {
        final ArrayList arrayList = list == null ? new ArrayList() : new ArrayList(list);
        final String str = z ? this.mCurrentSource : null;
        iia.a(new Runnable() {
            @Override
            public final void run() {
                PlayAudioListData.lambda$persistPlayListAsync$0(arrayList, z, str);
            }
        });
    }

    private void setUpMd5Async(final AudioItem audioItem, final Md5Callback md5Callback) {
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                PlayAudioListData.lambda$setUpMd5Async$3(audioItem, md5Callback);
            }
        });
    }

    private void setupMd5(AudioItem audioItem) {
        if (audioItem == null) {
            return;
        }
        String strS = zu3.s(audioItem.data);
        if (r0a.g(strS)) {
            return;
        }
        audioItem.md5Str = strS;
    }

    public void addToPlayList(AudioItem audioItem, int i) {
        if (this.mRepeat.c()) {
            this.mShuffleList.add(i, audioItem);
        } else {
            this.mCurrentPlayList.add(i, audioItem);
        }
    }

    public void clearPlayList() {
        this.mCurrentPlayList.clear();
    }

    public void lambda$deleteItem$14(final String str, List<AudioItem> list) {
        if (list != null) {
            try {
                if (list.isEmpty() || r0a.g(str)) {
                    return;
                }
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return PlayAudioListData.lambda$deleteItem$13(str, (AudioItem) obj);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public ArrayList<AudioItem> getLastPlayList() {
        return this.mLastPlayList;
    }

    public ArrayList<AudioItem> getNewShuffleList() {
        Collections.shuffle(this.mShuffleList);
        this.mShuffleIndex = queryShuffleIndex(this.mPlayMediaItem);
        LiveEventBus.b().d("audio_play_list_change").postValue(0);
        return this.mShuffleList;
    }

    public int getNextIndex(int i, int i2) {
        int i3 = i2 + 1;
        if (i3 >= i) {
            return 0;
        }
        return i3;
    }

    public int getNextIndexSafe(int i, int i2, AudioItem audioItem) {
        synchronized (this.mLock) {
            if (audioItem != null) {
                try {
                    if (!r0a.g(audioItem.data) && (new File(audioItem.data).exists() || getPlayList().contains(audioItem))) {
                        int i3 = i2 + 1;
                        if (i3 >= i) {
                            i3 = 0;
                        }
                        return i3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return i2;
        }
    }

    public ArrayList<AudioItem> getPlayList() {
        return this.mRepeat.c() ? this.mShuffleList : this.mCurrentPlayList;
    }

    public int getPlayListFlag() {
        StringBuffer stringBuffer = this.mSource;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            try {
                return Integer.parseInt(this.mSource.substring(0, 2));
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public String getPlayListTitle() {
        return this.mPlayListTitle;
    }

    public int getPreviousSafe(int i) {
        int i2 = i - 1;
        return i2 < 0 ? this.mCurrentPlayList.size() - 1 : i2;
    }

    public boolean hasNext() {
        return this.mCurrentPlayList.size() != 0;
    }

    public boolean hasPrevious() {
        return this.mCurrentPlayList.size() != 0;
    }

    public boolean haveLastPlayList() {
        checkLastPlayList();
        return this.mLastPlayList != null && this.mLastPlayList.size() > 0;
    }

    public boolean isAllDemaged() {
        Iterator<AudioItem> it = getPlayList().iterator();
        while (it.hasNext()) {
            if (!it.next().isDamaged()) {
                return false;
            }
        }
        return true;
    }

    public boolean isCurrentListEmpty() {
        return this.mCurrentPlayList.size() == 0;
    }

    public void later(AudioItem audioItem) {
        if (this.mCurrentPlayList.contains(audioItem)) {
            this.mCurrentPlayList.remove(audioItem);
            this.mShuffleList.remove(audioItem);
            this.mShuffleList.add(audioItem);
            this.mCurrentPlayList.add(audioItem);
        } else {
            this.mCurrentPlayList.add(audioItem);
            this.mShuffleList.add(audioItem);
        }
        h27.c().e(1089, new Object[0]);
    }

    public void next(AudioItem audioItem) {
        if (this.mCurrentPlayList.contains(audioItem)) {
            AudioItem audioItem2 = this.mPlayMediaItem;
            if (audioItem2 != null && audioItem.data.equals(audioItem2.data)) {
                return;
            }
            this.mCurrentPlayList.remove(audioItem);
            this.mShuffleList.remove(audioItem);
            nextInsert(true, playIndex(), this.mCurrentPlayList, audioItem);
            nextInsert(true, queryShuffleIndex(), this.mShuffleList, audioItem);
        } else {
            nextInsert(false, playIndex(), this.mCurrentPlayList, audioItem);
            nextInsert(false, queryShuffleIndex(), this.mShuffleList, audioItem);
        }
        h27.c().e(1089, new Object[0]);
    }

    public int playIndex() {
        int iQueryPlayListIndex = queryPlayListIndex(this.mPlayMediaItem);
        this.mPlayIndex = iQueryPlayListIndex;
        return iQueryPlayListIndex;
    }

    public int playIndexReal() {
        return this.mRepeat.c() ? queryShuffleIndex() : playIndex();
    }

    public AudioItem playMediaItem() {
        return this.mPlayMediaItem;
    }

    public AudioItem playNext() {
        this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
        try {
            if (this.mRepeat.b()) {
                return this.mPlayMediaItem;
            }
            if (this.mRepeat.a()) {
                ArrayList<AudioItem> arrayList = this.mCurrentPlayList;
                int nextIndexSafe = getNextIndexSafe(this.mCurrentPlayList.size(), this.mPlayIndex, this.mPlayMediaItem);
                this.mPlayIndex = nextIndexSafe;
                return arrayList.get(nextIndexSafe);
            }
            if (this.mRepeat.c()) {
                try {
                    int nextIndexSafe2 = getNextIndexSafe(this.mShuffleList.size(), this.mShuffleIndex, this.mPlayMediaItem);
                    this.mShuffleIndex = nextIndexSafe2;
                    if (this.mShuffleList.get(nextIndexSafe2).data.equals(this.mPlayMediaItem.data)) {
                        this.mShuffleIndex = getNextIndexSafe(this.mShuffleList.size(), this.mShuffleIndex + 1, this.mPlayMediaItem);
                    }
                    if (this.mShuffleIndex >= this.mShuffleList.size()) {
                        this.mShuffleIndex = this.mShuffleList.size() - 1;
                    }
                    return this.mShuffleList.get(this.mShuffleIndex);
                } catch (Exception unused) {
                    return this.mPlayMediaItem;
                }
            }
            return this.mPlayMediaItem;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public AudioItem playNextByBtn() {
        this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
        try {
            if (this.mRepeat.b()) {
                ArrayList<AudioItem> arrayList = this.mCurrentPlayList;
                int nextIndexSafe = getNextIndexSafe(this.mCurrentPlayList.size(), this.mPlayIndex, this.mPlayMediaItem);
                this.mPlayIndex = nextIndexSafe;
                return arrayList.get(nextIndexSafe);
            }
            if (this.mRepeat.a()) {
                ArrayList<AudioItem> arrayList2 = this.mCurrentPlayList;
                int nextIndexSafe2 = getNextIndexSafe(this.mCurrentPlayList.size(), this.mPlayIndex, this.mPlayMediaItem);
                this.mPlayIndex = nextIndexSafe2;
                return arrayList2.get(nextIndexSafe2);
            }
            if (this.mRepeat.c()) {
                try {
                    int nextIndexSafe3 = getNextIndexSafe(this.mShuffleList.size(), this.mShuffleIndex, this.mPlayMediaItem);
                    this.mShuffleIndex = nextIndexSafe3;
                    if (nextIndexSafe3 >= this.mShuffleList.size()) {
                        this.mShuffleIndex = this.mShuffleList.size() - 1;
                    }
                    return this.mShuffleList.get(this.mShuffleIndex);
                } catch (Exception unused) {
                    return this.mPlayMediaItem;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.mPlayMediaItem;
    }

    public AudioItem playPrevious() {
        this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
        try {
            if (this.mRepeat.b()) {
                return this.mPlayMediaItem;
            }
            if (this.mRepeat.a()) {
                ArrayList<AudioItem> arrayList = this.mCurrentPlayList;
                int previousSafe = getPreviousSafe(this.mPlayIndex);
                this.mPlayIndex = previousSafe;
                return arrayList.get(previousSafe);
            }
            if (this.mRepeat.c()) {
                try {
                    int previousSafe2 = getPreviousSafe(this.mShuffleIndex);
                    this.mShuffleIndex = previousSafe2;
                    if (previousSafe2 >= this.mShuffleList.size()) {
                        this.mShuffleIndex = this.mShuffleList.size() - 1;
                    }
                    return this.mShuffleList.get(this.mShuffleIndex);
                } catch (Exception unused) {
                    return this.mPlayMediaItem;
                }
            }
            return this.mPlayMediaItem;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public AudioItem playPreviousByBtn() {
        this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
        try {
            if (this.mRepeat.b()) {
                ArrayList<AudioItem> arrayList = this.mCurrentPlayList;
                int previousSafe = getPreviousSafe(this.mPlayIndex);
                this.mPlayIndex = previousSafe;
                return arrayList.get(previousSafe);
            }
            if (this.mRepeat.a()) {
                ArrayList<AudioItem> arrayList2 = this.mCurrentPlayList;
                int previousSafe2 = getPreviousSafe(this.mPlayIndex);
                this.mPlayIndex = previousSafe2;
                return arrayList2.get(previousSafe2);
            }
            if (this.mRepeat.c()) {
                try {
                    int previousSafe3 = getPreviousSafe(this.mShuffleIndex);
                    this.mShuffleIndex = previousSafe3;
                    if (previousSafe3 >= this.mShuffleList.size()) {
                        this.mShuffleIndex = this.mShuffleList.size() - 1;
                    }
                    return this.mShuffleList.get(this.mShuffleIndex);
                } catch (Exception unused) {
                    return this.mPlayMediaItem;
                }
            }
            return this.mPlayMediaItem;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int queryPlayListIndex(AudioItem audioItem) {
        if (audioItem != null) {
            try {
                if (this.mCurrentPlayList != null) {
                    int size = this.mCurrentPlayList.size();
                    for (int i = 0; i < size; i++) {
                        if (audioItem.id == this.mCurrentPlayList.get(i).id) {
                            return i;
                        }
                    }
                }
            } catch (Exception e) {
                Log.e("queryPlayListIndex", "queryPlayListIndex: " + e.getMessage());
            }
        }
        return 0;
    }

    public int queryShuffleIndex(AudioItem audioItem) {
        return this.mShuffleList.indexOf(audioItem);
    }

    public AudioItem removeAndPlayNext(AudioItem audioItem) {
        if (getPlayList().contains(this.mPlayMediaItem)) {
            this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
        }
        try {
            this.mShuffleIndex = queryShuffleIndex();
            if (this.mRepeat.b() || this.mRepeat.a()) {
                if (this.mCurrentPlayList.size() > this.mPlayIndex) {
                    ArrayList<AudioItem> arrayList = this.mCurrentPlayList;
                    int nextIndexSafe = getNextIndexSafe(this.mCurrentPlayList.size(), this.mPlayIndex, audioItem);
                    this.mPlayIndex = nextIndexSafe;
                    return arrayList.get(nextIndexSafe);
                }
            }
            if (this.mRepeat.c() && this.mShuffleList.size() > this.mShuffleIndex) {
                try {
                    int nextIndexSafe2 = getNextIndexSafe(this.mShuffleList.size(), this.mShuffleIndex, audioItem);
                    this.mShuffleIndex = nextIndexSafe2;
                    if (nextIndexSafe2 >= this.mShuffleList.size()) {
                        this.mShuffleIndex = this.mShuffleList.size() - 1;
                    }
                    return this.mShuffleList.get(this.mShuffleIndex);
                } catch (Exception unused) {
                    return this.mPlayMediaItem;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.mPlayMediaItem;
    }

    public AudioItem removeAndPlayNextNotSafe() {
        if (getPlayList().contains(this.mPlayMediaItem)) {
            this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
        }
        try {
            this.mShuffleIndex = queryShuffleIndex();
            if (this.mRepeat.b() || this.mRepeat.a()) {
                if (this.mCurrentPlayList.size() > this.mPlayIndex) {
                    ArrayList<AudioItem> arrayList = this.mCurrentPlayList;
                    int nextIndex = getNextIndex(this.mCurrentPlayList.size(), this.mPlayIndex);
                    this.mPlayIndex = nextIndex;
                    return arrayList.get(nextIndex);
                }
            }
            if (this.mRepeat.c() && this.mShuffleList.size() > this.mShuffleIndex) {
                try {
                    int nextIndex2 = getNextIndex(this.mShuffleList.size(), this.mShuffleIndex);
                    this.mShuffleIndex = nextIndex2;
                    if (nextIndex2 >= this.mShuffleList.size()) {
                        this.mShuffleIndex = this.mShuffleList.size() - 1;
                    }
                    return this.mShuffleList.get(this.mShuffleIndex);
                } catch (Exception unused) {
                    return this.mPlayMediaItem;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.mPlayMediaItem;
    }

    public synchronized PlayAudioListData removeAndReFreshPlayList(AudioItem audioItem, RemoveListener removeListener) {
        int size;
        int size2;
        if (audioItem == null) {
            return this;
        }
        try {
            this.mPlayIndex = queryPlayListIndex(this.mPlayMediaItem);
            this.mShuffleIndex = queryShuffleIndex(this.mPlayMediaItem);
            if (this.mCurrentPlayList == null || this.mCurrentPlayList.size() <= 0) {
                size = 0;
            } else {
                int size3 = this.mCurrentPlayList.size();
                for (int i = 0; i < this.mCurrentPlayList.size(); i++) {
                    if (audioItem.equals(this.mCurrentPlayList.get(i))) {
                        if (this.mPlayMediaItem == audioItem) {
                            this.mPlayIndex = i;
                        }
                        this.mCurrentPlayList.remove(i);
                        break;
                    }
                }
                size = size3 - this.mCurrentPlayList.size();
            }
            ArrayList<AudioItem> arrayList = this.mShuffleList;
            if (arrayList == null || arrayList.size() <= 0) {
                size2 = 0;
            } else {
                int size4 = this.mShuffleList.size();
                for (int i2 = 0; i2 < this.mShuffleList.size(); i2++) {
                    if (audioItem.equals(this.mShuffleList.get(i2))) {
                        if (this.mPlayMediaItem == audioItem) {
                            this.mShuffleIndex = i2;
                        }
                        this.mShuffleList.remove(i2);
                        break;
                    }
                }
                size2 = size4 - this.mShuffleList.size();
            }
            persistPlayListAsync(this.mCurrentPlayList, false);
            AudioItem audioItem2 = this.mPlayMediaItem;
            if (audioItem2 == audioItem) {
                if (this.mRepeat.c()) {
                    if (this.mShuffleIndex < 0) {
                        this.mShuffleIndex = 0;
                    }
                    if (this.mShuffleIndex >= (this.mShuffleList.size() - 1) + size2) {
                        this.mShuffleIndex = 0;
                    }
                    setPlayMediaItem(this.mShuffleIndex);
                } else {
                    if (this.mPlayIndex >= (this.mCurrentPlayList.size() - 1) + size) {
                        this.mPlayIndex = 0;
                    }
                    setPlayMediaItem(this.mPlayIndex);
                }
                if (removeListener != null) {
                    removeListener.onRemoveAndPlayNew(this.mPlayMediaItem);
                }
            } else {
                this.mPlayIndex = queryPlayListIndex(audioItem2);
                this.mShuffleIndex = queryShuffleIndex(this.mPlayMediaItem);
            }
            LiveEventBus.b().d("audio_play_list_change").postValue(0);
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void restore(List<AudioItem> list) {
        String str;
        String str2;
        String str3;
        if (!this.init) {
            String strL = MMKV.p().l("music_playlist");
            List<AudioItem> list2 = !TextUtils.isEmpty(strL) ? (List) fi1.c(strL, new TypeToken<List<AudioItem>>() {
            }.getType()) : null;
            if (list2 == null || list2.isEmpty()) {
                String strL2 = MMKV.p().l("music_playing");
                if (TextUtils.isEmpty(strL2)) {
                    this.init = true;
                    return;
                }
                AudioItem audioItem = (AudioItem) fi1.b(strL2, AudioItem.class);
                if (audioItem == null) {
                    this.init = true;
                    return;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(audioItem);
                    list2 = arrayList;
                }
            }
            if (list != null) {
                HashMap map = new HashMap();
                for (AudioItem audioItem2 : list) {
                    if (audioItem2 != null && (str3 = audioItem2.data) != null) {
                        map.put(str3, audioItem2.uri);
                    }
                }
                for (AudioItem audioItem3 : list2) {
                    if (audioItem3 != null && (str2 = audioItem3.data) != null && map.containsKey(str2)) {
                        audioItem3.setUri((Uri) map.get(audioItem3.data));
                    }
                }
            }
            this.mCurrentSource = MMKV.p().l("music_playlist_source");
            setPlayList(list2, null);
            String strL3 = MMKV.p().l("music_playing");
            if (!TextUtils.isEmpty(strL3)) {
                AudioItem audioItem4 = (AudioItem) fi1.b(strL3, AudioItem.class);
                for (AudioItem audioItem5 : list2) {
                    if (audioItem5 != null && audioItem4 != null && (str = audioItem5.data) != null && str.equals(audioItem4.data)) {
                        this.mPlayMediaItem = audioItem5;
                        Log.d("PlayAudioListData", "restore setPlayMediaItem " + this.mPlayMediaItem);
                        break;
                    }
                }
                if (this.mPlayMediaItem == null) {
                    if (audioItem4 == null) {
                        audioItem4 = list2.get(0);
                    }
                    this.mPlayMediaItem = audioItem4;
                }
                if (this.mPlayMediaItem != null) {
                    getInstance().setPlayMediaItem(this.mPlayMediaItem).selectedPlayMediaItem();
                }
                h27.c().e(1069, new Object[0]);
            }
        }
        this.init = true;
    }

    public PlayAudioListData selectedPlayMediaItem() {
        try {
            if (this.mPlayMediaItem == null) {
                return this;
            }
            for (AudioItem audioItem : this.mCurrentPlayList) {
                audioItem.setSelected(this.mPlayMediaItem.id == audioItem.id);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this;
    }

    public synchronized PlayAudioListData setPlayList(List<AudioItem> list, iz izVar) {
        try {
            ArrayList arrayList = list == null ? new ArrayList() : new ArrayList(list);
            persistPlayListAsync(arrayList, true);
            checkLastPlayList();
            this.mCurrentPlayList.clear();
            this.mCurrentPlayList.addAll(arrayList);
            if (izVar != null) {
                this.mRepeat = izVar;
            }
            int iQueryPlayListIndex = queryPlayListIndex(this.mPlayMediaItem);
            this.mPlayIndex = iQueryPlayListIndex;
            setPlayMediaItem(iQueryPlayListIndex);
            this.mShuffleList.clear();
            this.mShuffleList.addAll(this.mCurrentPlayList);
            Collections.shuffle(this.mShuffleList);
            this.mShuffleIndex = queryShuffleIndex(this.mPlayMediaItem);
            LiveEventBus.b().d("audio_play_list_change").postValue(0);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public void setPlayListTitle(String str) {
        this.mPlayListTitle = str;
    }

    public PlayAudioListData setPlayMediaItem(final AudioItem audioItem) {
        setUpMd5Async(audioItem, new Md5Callback() {
            @Override
            public final void onMd5Computed(String str) {
                audioItem.md5Str = str;
            }
        });
        this.mPlayIndex = queryPlayListIndex(audioItem);
        this.mShuffleIndex = queryShuffleIndex(this.mPlayMediaItem);
        if (this.mCurrentPlayList.size() <= 0 || this.mPlayIndex < 0) {
            this.mPlayMediaItem = audioItem;
        } else {
            this.mPlayMediaItem = this.mCurrentPlayList.get(this.mPlayIndex);
        }
        Log.d("PlayAudioListData", "setPlayMediaItem " + this.mPlayMediaItem);
        String strE = fi1.e(this.mPlayMediaItem);
        CacheManager.getInstance().setCache("music_playing", strE);
        MMKV.p().w("music_playing", strE);
        AudioItem audioItem2 = this.mPlayMediaItem;
        if (audioItem2 != null && audioItem2.uri != null) {
            MMKV.p().w("v_current_playing_audio_uri", this.mPlayMediaItem.getUri().toString());
        }
        return this;
    }

    public PlayAudioListData setRepeatMode(iz izVar) {
        if (izVar != null) {
            this.mRepeat = izVar;
        }
        return this;
    }

    public void setSource(PlayAudioData playAudioData, String str) {
        StringBuffer stringBuffer = new StringBuffer(playAudioData.listFlag + "");
        this.mSource = stringBuffer;
        int i = playAudioData.listFlag;
        if (i == 30) {
            if (TextUtils.isEmpty(str)) {
                this.mSource.append(playAudioData.folderName);
                return;
            } else {
                this.mSource.append(str);
                return;
            }
        }
        if (i == 25) {
            stringBuffer.append(playAudioData.albumName);
            return;
        }
        if (i == 26) {
            stringBuffer.append(playAudioData.artistName);
        } else if (i == 22) {
            stringBuffer.append(playAudioData.parentPath);
        } else if (i == 20) {
            stringBuffer.append(PlayAudioData.TAG_NEW_AUDIO);
        }
    }

    public PlayAudioListData sortSyn(List<AudioItem> list) {
        if (this.mRepeat.c()) {
            this.mShuffleList = new ArrayList<>();
            for (AudioItem audioItem : list) {
                if (!this.mShuffleList.contains(audioItem)) {
                    this.mShuffleList.add(audioItem);
                }
            }
        } else {
            this.mCurrentPlayList = new ArrayList<>();
            for (AudioItem audioItem2 : list) {
                if (!this.mCurrentPlayList.contains(audioItem2)) {
                    this.mCurrentPlayList.add(audioItem2);
                }
            }
            int iQueryPlayListIndex = queryPlayListIndex(this.mPlayMediaItem);
            this.mPlayIndex = iQueryPlayListIndex;
            setPlayMediaItem(iQueryPlayListIndex);
        }
        return this;
    }

    public void switchData() {
        String str = this.mLastSource;
        this.mLastSource = this.mCurrentSource;
        this.mCurrentSource = str;
        setPlayList(new ArrayList(this.mLastPlayList), null);
    }

    public void synDelete() {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$synDelete$4();
            }
        });
    }

    public void synFilter(Context context) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$synFilter$9();
            }
        });
    }

    public void synRename(final String str, final String str2) {
        Stream.of((Object[]) new ArrayList[]{this.mCurrentPlayList, this.mShuffleList, this.mLastPlayList}).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.lambda$synRename$11(str, str2, (ArrayList) obj);
            }
        });
    }

    public void filterData() {
        filterData(this.mShuffleList);
        filterData(this.mCurrentPlayList);
    }

    public int queryShuffleIndex() {
        return this.mShuffleList.indexOf(this.mPlayMediaItem);
    }

    public void setRepeatMode(int i) {
        iz izVar = this.mRepeat;
        if (izVar != null) {
            izVar.e(i);
        }
    }

    public void synDelete(List<AudioItem> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return PlayAudioListData.lambda$synDelete$5((AudioItem) obj);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void lambda$synFilter$7(final Set<String> set, List<AudioItem> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return PlayAudioListData.lambda$synFilter$10(set, (AudioItem) obj);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void lambda$synRename$11(final String str, final String str2, List<AudioItem> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                list.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        PlayAudioListData.lambda$synRename$12(str, str2, (AudioItem) obj);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void deleteItem(final String str) {
        Stream.of((Object[]) new ArrayList[]{this.mCurrentPlayList, this.mShuffleList, this.mLastPlayList}).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.lambda$deleteItem$14(str, (ArrayList) obj);
            }
        });
    }

    public PlayAudioListData setPlayMediaItem(int i) {
        if (i >= 0 && i < this.mCurrentPlayList.size() && i < this.mShuffleList.size()) {
            setPlayMediaItem((this.mRepeat.c() ? this.mShuffleList : this.mCurrentPlayList).get(i));
        }
        return this;
    }
}
