package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.VideoPlayList;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class dp3 {
    public static dp3 j = new dp3();
    public Uri d;
    public Uri e;
    public Uri f;
    public volatile Map a = new HashMap();
    public List b = new ArrayList();
    public volatile Map c = new HashMap();
    public volatile Map g = new HashMap();
    public Set h = new HashSet();
    public ArrayList i = new ArrayList();

    public static dp3 e() {
        return j;
    }

    public void a(boolean z, AudioItem audioItem) {
        if (z) {
            this.g.put(audioItem.data, audioItem);
            this.h.add(audioItem.data);
        } else {
            this.g.remove(audioItem.data);
            this.h.remove(audioItem.data);
        }
        h27.c().e(1107, audioItem.data);
    }

    public void b(boolean z, MediaItem mediaItem) {
        if (z) {
            this.a.put(mediaItem.data, mediaItem);
            this.h.add(mediaItem.data);
        } else {
            this.a.remove(mediaItem.data);
            this.h.remove(mediaItem.data);
        }
    }

    public final void c(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (MediaItem mediaItem : this.i) {
            Iterator it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (((MediaItem) it.next()).id == mediaItem.id) {
                    z = true;
                }
            }
            if (!z) {
                b(false, mediaItem);
            }
        }
    }

    public VideoPlayList d(Context context) {
        if (context == null) {
            return null;
        }
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.playlistFlag = 2;
        videoPlayList.count = n();
        if (e().d != null) {
            videoPlayList.uri = e().d;
        }
        return videoPlayList;
    }

    public boolean f(String str) {
        return g(str);
    }

    public boolean g(String str) {
        return this.h.contains(str);
    }

    public boolean h(String str) {
        return g(str);
    }

    public void i(MediaItem mediaItem) {
        if (mediaItem == null) {
            return;
        }
        this.i.clear();
        this.i.add(mediaItem);
    }

    public void j(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        this.i.clear();
        this.i.addAll(arrayList);
    }

    public void k(Context context) {
        l(context, null);
    }

    public void l(Context context, List list) {
        if (list == null) {
            list = b00.o(null);
        }
        this.g.clear();
        this.h.removeAll(this.g.keySet());
        if (list == null || list.size() <= 0) {
            return;
        }
        for (AudioItem audioItem : list) {
            this.g.put(audioItem.data, audioItem);
            this.h.add(audioItem.data);
        }
        this.e = ((AudioItem) list.get(0)).uri;
        AudioAlbum audioAlbum = AudioRoomDatabase.f(context).a().getAudioAlbum(((AudioItem) list.get(0)).id);
        if (audioAlbum == null || audioAlbum.imgPath == null || !new File(audioAlbum.imgPath).exists()) {
            return;
        }
        this.f = Uri.parse(audioAlbum.imgPath);
    }

    public synchronized void m() {
        try {
            this.a.clear();
            this.h.removeAll(this.a.keySet());
            ArrayList<MediaItem> arrayListI = t6c.i(2);
            c(arrayListI);
            if (arrayListI == null || arrayListI.isEmpty()) {
                this.d = null;
            } else {
                for (MediaItem mediaItem : arrayListI) {
                    this.a.put(mediaItem.data, mediaItem);
                    this.h.add(mediaItem.data);
                }
                this.d = Uri.parse(TextUtils.isEmpty(((MediaItem) arrayListI.get(0)).thumbnailUrl) ? ((MediaItem) arrayListI.get(0)).data : ((MediaItem) arrayListI.get(0)).thumbnailUrl);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int n() {
        if (this.a.values() == null) {
            return 0;
        }
        return this.a.values().size();
    }
}
