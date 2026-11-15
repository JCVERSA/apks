package com.transsion.dbdata.engine.observer;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.ao;
import defpackage.r0a;
import defpackage.se;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.ToLongFunction;
import org.mozilla.javascript.ES6Iterator;

public class AudioMediaObserver {
    public static volatile AudioMediaObserver k;
    public final Context a;
    public ContentObserver b;
    public HandlerThread c;
    public Handler d;
    public final b i;
    public Set e = ConcurrentHashMap.newKeySet();
    public ArrayList f = new ArrayList();
    public final ConcurrentHashMap g = new ConcurrentHashMap();
    public final Boolean h = Boolean.FALSE;
    public boolean j = false;

    public interface b {
        void a(ArrayList arrayList);
    }

    public AudioMediaObserver(Context context, b bVar) {
        this.a = context == null ? se.a() : context;
        this.i = bVar;
    }

    public static void f(ArrayList arrayList) {
        SharedPreferences.Editor editorEdit = se.a().getSharedPreferences("new_audio_temp_list", 0).edit();
        editorEdit.putString(ES6Iterator.VALUE_PROPERTY, new Gson().toJson(arrayList));
        editorEdit.apply();
    }

    public static ArrayList j() {
        return (ArrayList) new Gson().fromJson(se.a().getSharedPreferences("new_audio_temp_list", 0).getString(ES6Iterator.VALUE_PROPERTY, null), new TypeToken<ArrayList<AudioItem>>() {
        }.getType());
    }

    public static AudioMediaObserver k(Context context, b bVar) {
        if (k == null) {
            synchronized (AudioMediaObserver.class) {
                try {
                    if (k == null) {
                        k = new AudioMediaObserver(context, bVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return k;
    }

    public final void e(AudioItem audioItem) {
        AudioItem audioItem2 = (AudioItem) this.g.get(audioItem.uri);
        if (audioItem2 != null) {
            int i = audioItem.id;
            if (i == 0) {
                i = audioItem2.id;
            }
            audioItem.id = i;
            String str = audioItem.parentPath;
            if (str == null) {
                str = audioItem2.parentPath;
            }
            audioItem.parentPath = str;
            long j = audioItem.bucketId;
            if (j == 0) {
                j = audioItem2.bucketId;
            }
            audioItem.bucketId = j;
            String str2 = audioItem.displayName;
            if (str2 == null) {
                str2 = audioItem2.displayName;
            }
            audioItem.displayName = str2;
            String str3 = audioItem.title;
            if (str3 == null) {
                str3 = audioItem2.title;
            }
            audioItem.title = str3;
            long j2 = audioItem.duration;
            if (j2 == 0) {
                j2 = audioItem2.duration;
            }
            audioItem.duration = j2;
            String str4 = audioItem.data;
            if (str4 == null) {
                str4 = audioItem2.data;
            }
            audioItem.data = str4;
            long j3 = audioItem.dateAdd;
            if (j3 == 0) {
                j3 = audioItem2.dateAdd;
            }
            audioItem.dateAdd = j3;
            long j4 = audioItem.dateModified;
            if (j4 == 0) {
                j4 = audioItem2.dateModified;
            }
            audioItem.dateModified = j4;
            int i2 = audioItem.albumId;
            if (i2 == 0) {
                i2 = audioItem2.albumId;
            }
            audioItem.albumId = i2;
            String str5 = audioItem.albumName;
            if (str5 == null) {
                str5 = audioItem2.albumName;
            }
            audioItem.albumName = str5;
            int i3 = audioItem.artistId;
            if (i3 == 0) {
                i3 = audioItem2.artistId;
            }
            audioItem.artistId = i3;
            String str6 = audioItem.artistName;
            if (str6 == null) {
                str6 = audioItem2.artistName;
            }
            audioItem.artistName = str6;
            long j5 = audioItem.size;
            if (j5 == 0) {
                j5 = audioItem2.size;
            }
            audioItem.size = j5;
            String str7 = audioItem.bucketDisplayName;
            if (str7 == null) {
                str7 = audioItem2.bucketDisplayName;
            }
            audioItem.bucketDisplayName = str7;
            this.g.remove(audioItem.uri);
        }
    }

    public final void g(Uri uri) {
        if (uri == null) {
            return;
        }
        this.j = false;
        AudioItem audioItemH = ao.U().H(uri);
        if (n(audioItemH) || audioItemH == null || !uri.equals(audioItemH.getUri())) {
            return;
        }
        if ("VishaAudios".equals(audioItemH.bucketDisplayName) && r0a.g(audioItemH.artistName)) {
            this.g.put(uri, audioItemH);
            return;
        }
        if (audioItemH.id == 0) {
            e(audioItemH);
        }
        p(audioItemH);
    }

    public void h() {
        synchronized (this.h) {
            this.e = ConcurrentHashMap.newKeySet();
        }
    }

    public void i() {
        synchronized (this.h) {
            this.f = o();
            this.e = ConcurrentHashMap.newKeySet();
        }
    }

    public ArrayList l(boolean z) {
        ArrayList arrayListJ;
        synchronized (this.h) {
            if (z) {
                try {
                    i();
                } catch (Throwable th) {
                    throw th;
                }
            }
            arrayListJ = this.f.isEmpty() ? j() : new ArrayList(this.f);
        }
        return arrayListJ;
    }

    public final boolean m(AudioItem audioItem) {
        return audioItem == null || audioItem.size < 0 || TextUtils.isEmpty(audioItem.mineType) || "null".equals(audioItem.mineType);
    }

    public final boolean n(AudioItem audioItem) {
        String str;
        if (audioItem != null && (str = audioItem.data) != null && !str.contains("SoundRecorder")) {
            return false;
        }
        Log.w("AudioMediaObserver", "filterRecorder: " + audioItem);
        return true;
    }

    public final ArrayList o() {
        ArrayList arrayList = new ArrayList(Arrays.asList((AudioItem[]) this.e.toArray(new AudioItem[0])));
        arrayList.sort(Comparator.comparingLong(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                return ((AudioItem) obj).getFileCreateTime();
            }
        }));
        return arrayList;
    }

    public final void p(AudioItem audioItem) {
        if (m(audioItem)) {
            Log.d("AudioMediaObserver", "checkForNewAudio,valid item:" + audioItem);
            return;
        }
        Log.d("AudioMediaObserver", "checkForNewAudio,item:" + audioItem);
        this.e.add(audioItem);
        if (this.j) {
            return;
        }
        this.j = true;
    }

    public void q() {
        Uri uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        if (this.a != null) {
            HandlerThread handlerThread = new HandlerThread("AudioObserverThread", 10);
            this.c = handlerThread;
            handlerThread.start();
            this.d = new Handler(this.c.getLooper());
            this.b = new a(this.d);
            this.a.getContentResolver().registerContentObserver(uri, true, this.b);
        }
    }

    public void r() {
        Context context;
        if (this.b != null && (context = this.a) != null) {
            context.getContentResolver().unregisterContentObserver(this.b);
        }
        HandlerThread handlerThread = this.c;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    public class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        public final void b(ArrayList arrayList) {
            if (AudioMediaObserver.this.i != null) {
                AudioMediaObserver.this.i.a(arrayList);
            }
        }

        @Override
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            if (uri != null) {
                AudioMediaObserver.this.g(uri);
            }
        }

        @Override
        public void onChange(boolean z, Collection collection, int i) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                AudioMediaObserver.this.g((Uri) it.next());
            }
            final ArrayList arrayListO = AudioMediaObserver.this.o();
            AudioMediaObserver.f(arrayListO);
            if (AudioMediaObserver.this.j) {
                ThreadUtils.s(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b(arrayListO);
                    }
                });
            }
        }
    }
}
