package com.transsion.audio.utils;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.engine.observer.AudioMediaObserver;
import com.transsion.dbdata.utils.SortUtil;
import defpackage.ao;
import defpackage.cr;
import defpackage.yx2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class AudioLoadDataUtils {
    public static final int[] c = {-1, 0};
    public final Context a;
    public a b;

    public interface a {
        void a(ArrayList arrayList);

        void b(ArrayList arrayList);

        void c(Uri uri, boolean z);
    }

    public AudioLoadDataUtils(Context context) {
        this.a = context;
    }

    public static boolean j(int i) {
        int[] iArr = c;
        return (i == iArr[0] || i == iArr[1]) ? false : true;
    }

    public void f(PlayAudioData playAudioData) {
        int i = playAudioData.mediaId;
        Log.d("AudioLoadDataUtils", "asyncLoad uri:" + playAudioData.playUri + StringUtils.COMMA + this.b);
        if (playAudioData.playUri == null || !j(i)) {
            m(playAudioData);
            return;
        }
        a aVar = this.b;
        if (aVar != null) {
            aVar.c(playAudioData.playUri, true);
        }
    }

    public void g(final PlayAudioData playAudioData) {
        Log.d("AudioLoadDataUtils", "asyncLoadBuckets " + playAudioData);
        if (playAudioData == null || !playAudioData.isBucketValidate()) {
            return;
        }
        TaskExecutor.c(new TaskExecutor.Task<ArrayList<AudioItem>>() {
            @Override
            public ArrayList<AudioItem> onBackground() {
                Log.d("AudioLoadDataUtils", "onBackground " + playAudioData.listFlag);
                PlayAudioData playAudioData2 = playAudioData;
                int i = playAudioData2.listFlag;
                if (i == 30) {
                    return new ArrayList<>(ao.U().Y((int) playAudioData.playListId, null));
                }
                if (i == 33) {
                    return new ArrayList<>((List) ao.U().y(true).getSecond());
                }
                if (i == 32) {
                    return new ArrayList<>(ao.U().a(null));
                }
                if (i == 100) {
                    return AudioLoadDataUtils.this.i(playAudioData2);
                }
                if (i == 20) {
                    return AudioMediaObserver.k(null, null).l(false);
                }
                if (i == 19) {
                    return MVNotificationUtils.h(false);
                }
                if (i == 24) {
                    return new ArrayList<>(ao.U().b(null));
                }
                return i == 98 ? new ArrayList<>(ao.U().M(yx2.l, false)) : AudioLoadDataUtils.this.h(playAudioData2);
            }

            @Override
            public void onResult(ArrayList<AudioItem> arrayList) {
                if (arrayList == null) {
                    return;
                }
                if (playAudioData.isShuffle) {
                    Collections.shuffle(arrayList);
                }
                if (AudioLoadDataUtils.this.b != null) {
                    AudioLoadDataUtils.this.b.a(arrayList);
                }
            }
        });
    }

    public final ArrayList h(PlayAudioData playAudioData) {
        new cr.a();
        int i = playAudioData.listFlag;
        if (i == 21) {
            return new ArrayList((List) ao.U().x(null).getSecond());
        }
        if (i == 22) {
            return new ArrayList((List) ao.U().K(playAudioData.bucketId, playAudioData.parentPath, null, false).getSecond());
        }
        if (i == 31) {
            return new ArrayList(ao.U().C(Integer.MAX_VALUE));
        }
        if (i == 36) {
            return new ArrayList(ao.U().Q(null, false));
        }
        if (i == 41) {
            return new ArrayList(ao.U().b0(false, null));
        }
        if (i == 26 || i == 25) {
            return new ArrayList(i == 26 ? ao.U().J(playAudioData.artistName, null) : ao.U().I(playAudioData.albumName, null));
        }
        if (i == 52) {
            if (playAudioData.playListId == -1) {
                return null;
            }
            return new ArrayList(ao.U().Y(playAudioData.playListId, null));
        }
        if (i == 49) {
            return new ArrayList(ao.U().a(null));
        }
        if (i == 50) {
            return new ArrayList((List) ao.U().y(false).getSecond());
        }
        if (i == 51) {
            return new ArrayList(ao.U().b0(false, null));
        }
        if (i == 53) {
            return new ArrayList(SortUtil.x(ao.U().X(false, null), true));
        }
        return null;
    }

    public final ArrayList i(PlayAudioData playAudioData) {
        List listR0 = ao.U().r0(playAudioData.displayName);
        ArrayList arrayList = new ArrayList();
        Iterator it = listR0.iterator();
        while (it.hasNext()) {
            arrayList.add((AudioItem) ((SearchBean) it.next()).getMediaItem());
        }
        return arrayList;
    }

    public final void k(ArrayList arrayList, PlayAudioData playAudioData) {
        a aVar = this.b;
        if (aVar != null) {
            aVar.b(arrayList);
        }
        g(playAudioData);
    }

    public final void l(boolean z, Uri uri, int i, final PlayAudioData playAudioData) {
        AudioItem audioItemH = z ? ao.U().H(uri) : ao.U().F(i);
        final ArrayList arrayList = new ArrayList();
        if (audioItemH != null) {
            Log.d("AudioLoadDataUtils", "asyncLoad playlist:" + audioItemH);
            arrayList.add(audioItemH);
        }
        Log.d("AudioLoadDataUtils", "asyncLoad playlist:" + arrayList.size());
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.k(arrayList, playAudioData);
            }
        });
    }

    public final void m(final PlayAudioData playAudioData) {
        final int i = playAudioData.mediaId;
        final boolean z = (j(i) || playAudioData.playUri == null) ? false : true;
        final Uri uri = playAudioData.playUri;
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                this.b.l(z, uri, i, playAudioData);
            }
        });
    }

    public void n(a aVar) {
        this.b = aVar;
    }
}
