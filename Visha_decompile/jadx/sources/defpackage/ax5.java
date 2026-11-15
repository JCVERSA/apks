package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import com.transsion.dbdata.database.MusicVideoDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public final class ax5 implements qu4 {
    public final Object a = new Object();
    public final Object b = new Object();
    public final Object c = new Object();
    public final Object d = new Object();

    public static final boolean i(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean j(int i, AudioItem audioItem) {
        return audioItem.id == i;
    }

    @Override
    public List b(ns1 ns1Var) {
        y45.j(ns1Var, Progress.REQUEST);
        return null;
    }

    public final boolean e(MediaItem mediaItem) {
        if (mediaItem == null) {
            return true;
        }
        AudioItem audioItem = new AudioItem(mediaItem);
        if (MusicVideoDatabase.a().b.contains(audioItem)) {
            return true;
        }
        MusicVideoDatabase.a().b.add(audioItem);
        return true;
    }

    @Override
    public Boolean a(ns1 ns1Var) {
        y45.j(ns1Var, Progress.REQUEST);
        if (ns1Var.b() == null || !(ns1Var.b() instanceof cr)) {
            return Boolean.FALSE;
        }
        Object objB = ns1Var.b();
        if (objB == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput");
        }
        Context contextA = ns1Var.a();
        ContentResolver contentResolver = ns1Var.a().getContentResolver();
        y45.i(contentResolver, "getContentResolver(...)");
        return k(contextA, (cr) objB, contentResolver);
    }

    public final boolean g(final int i) {
        try {
            List list = MusicVideoDatabase.a().a;
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ax5.j(i, (AudioItem) obj));
                }
            };
            list.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ax5.i(e74Var, obj);
                }
            });
            MusicVideoDatabase.a().b().deleteById(i);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean h(MediaItem mediaItem) {
        if (mediaItem == null) {
            return true;
        }
        try {
            AudioItem audioItem = new AudioItem(mediaItem);
            if (!MusicVideoDatabase.a().a.contains(audioItem)) {
                return false;
            }
            MusicVideoDatabase.a().a.remove(audioItem);
            MusicVideoDatabase.a().b().delete(audioItem.convertToMusicVideoDataBean());
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final Boolean k(Context context, cr crVar, ContentResolver contentResolver) {
        Boolean boolValueOf;
        List listO;
        List listO2;
        List listO3;
        List listO4;
        List listO5;
        if (crVar.A() && (listO5 = crVar.o()) != null && !listO5.isEmpty()) {
            synchronized (this.a) {
                boolValueOf = Boolean.valueOf(l(crVar));
            }
        } else if (crVar.z() && (listO4 = crVar.o()) != null && !listO4.isEmpty()) {
            synchronized (this.b) {
                boolValueOf = Boolean.valueOf(h((MediaItem) crVar.o().get(0)));
            }
        } else if (crVar.z() && crVar.k() != 0) {
            synchronized (this.b) {
                boolValueOf = Boolean.valueOf(g(crVar.k()));
            }
        } else {
            if (crVar.w() && (listO3 = crVar.o()) != null && !listO3.isEmpty()) {
                return Boolean.valueOf(MusicVideoDatabase.a().a.contains(new AudioItem((MediaItem) crVar.o().get(0))));
            }
            if (crVar.G() && (listO2 = crVar.o()) != null && !listO2.isEmpty()) {
                synchronized (this.c) {
                    boolValueOf = Boolean.valueOf(e((MediaItem) crVar.o().get(0)));
                }
            } else if (!crVar.F() || (listO = crVar.o()) == null || listO.isEmpty()) {
                synchronized (this.a) {
                    boolValueOf = Boolean.valueOf(l(crVar));
                }
            } else {
                synchronized (this.d) {
                    boolValueOf = Boolean.valueOf(m((MediaItem) crVar.o().get(0)));
                }
            }
        }
        return boolValueOf;
    }

    public final boolean l(cr crVar) {
        try {
            List listO = crVar.o();
            ArrayList arrayList = new ArrayList();
            if (listO != null) {
                Iterator it = listO.iterator();
                while (it.hasNext()) {
                    AudioItem audioItem = new AudioItem((MediaItem) it.next());
                    if (MusicVideoDatabase.a().a.contains(audioItem)) {
                        return false;
                    }
                    MusicVideoDatabase.a().a.add(audioItem);
                    MusicVideoDataBean musicVideoDataBeanConvertToMusicVideoDataBean = audioItem.convertToMusicVideoDataBean();
                    y45.g(musicVideoDataBeanConvertToMusicVideoDataBean);
                    arrayList.add(musicVideoDataBeanConvertToMusicVideoDataBean);
                }
            }
            MusicVideoDatabase.a().b().insertAll(arrayList);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean m(MediaItem mediaItem) {
        if (mediaItem == null) {
            return true;
        }
        AudioItem audioItem = new AudioItem(mediaItem);
        if (!MusicVideoDatabase.a().b.contains(audioItem)) {
            return true;
        }
        MusicVideoDatabase.a().b.remove(audioItem);
        return true;
    }
}
