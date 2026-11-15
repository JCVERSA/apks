package defpackage;

import android.app.Application;
import android.net.Uri;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.AudioResultModel;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.engine.DataEngine;
import com.transsion.dbdata.engine.base.callback.DataRequestResult;
import com.transsion.dbdata.engine.base.scope.DataScope;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;
import kotlin.text.RegexOption;

public class dw6 {
    public static final a c = new a(null);
    public static volatile dw6 d;
    public final List a;
    public final List b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final dw6 a() {
            dw6 dw6Var = dw6.d;
            if (dw6Var == null) {
                synchronized (this) {
                    dw6Var = dw6.d;
                    if (dw6Var == null) {
                        dw6Var = new dw6(null);
                        dw6.d = dw6Var;
                    }
                }
            }
            return dw6Var;
        }

        public a() {
        }
    }

    public static final class b implements nu4 {
        @Override
        public void a(DataRequestResult dataRequestResult, List list, String str) {
            y45.j(dataRequestResult, "result");
            h27.c().e(1153, new Object[0]);
        }
    }

    public dw6(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static List k(dw6 dw6Var, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryAllMVData");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return dw6Var.j(z, str);
    }

    public final List c() {
        return this.a;
    }

    public final List d() {
        return this.b;
    }

    public boolean e(MediaItem mediaItem) {
        y45.j(mediaItem, "data");
        ArrayList arrayList = new ArrayList();
        arrayList.add(mediaItem);
        cr crVarE = new cr.a().p(true).w(arrayList).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        Boolean bool = (Boolean) DataEngine.a.a(DataScope.MV, os1.a(crVarE, applicationA, Boolean.TYPE));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public boolean f(MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "data");
        new ArrayList().add(mediaItem);
        cr crVarE = new cr.a().m(z).q(true).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return i81.d0(new ArrayList(DataEngine.a.c(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class))), mediaItem);
    }

    public final boolean g(String str) {
        if (str == null) {
            return false;
        }
        String strS = av3.s(str);
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            Regex regex = new Regex((String) it.next(), RegexOption.IGNORE_CASE);
            y45.g(strS);
            if (regex.containsMatchIn(strS)) {
                return true;
            }
        }
        return false;
    }

    public void h(Uri uri, int i) {
        y45.j(uri, "uri");
        cr crVarE = new cr.a().r(true).l(i).D(uri).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        DataEngine.a.b(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class), new b());
    }

    public final AudioResultModel i(MediaBucket mediaBucket, String str, int i) {
        y45.j(mediaBucket, "mediaBucket");
        cr crVarE = new cr.a().u(mediaBucket).x(str).d(0L).k(i).c(true).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return (AudioResultModel) DataEngine.a.a(DataScope.MV, os1.a(crVarE, applicationA, AudioResultModel.class));
    }

    public final List j(boolean z, String str) {
        List listM = m(z, str);
        ArrayList arrayList = new ArrayList(z71.v(listM, 10));
        Iterator it = listM.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final AudioResultModel l(boolean z) {
        cr crVarE = new cr.a().q(true).j(z).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return (AudioResultModel) DataEngine.a.a(DataScope.MV, os1.a(crVarE, applicationA, AudioResultModel.class));
    }

    public final List m(boolean z, String str) {
        cr crVarE = new cr.a().t(str).q(true).j(z).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return new ArrayList(DataEngine.a.c(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class)));
    }

    public final List n(int i) {
        cr crVarE = new cr.a().A(i).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return new ArrayList(DataEngine.a.c(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class)));
    }

    public final AudioItem o(String str) {
        y45.j(str, "displayName");
        cr crVarE = new cr.a().h(str).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return (AudioItem) DataEngine.a.a(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class));
    }

    public final AudioItem p(int i) {
        cr crVarE = new cr.a().s(i).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        ns1 ns1VarA = os1.a(crVarE, applicationA, AudioItem.class);
        DataEngine dataEngine = DataEngine.a;
        DataScope dataScope = DataScope.MV;
        AudioItem audioItem = (AudioItem) dataEngine.a(dataScope, ns1VarA);
        if (audioItem != null) {
            return audioItem;
        }
        cr crVarE2 = new cr.a().n(true).s(i).e();
        Application applicationA2 = se.a();
        y45.i(applicationA2, "getApp(...)");
        return (AudioItem) dataEngine.a(dataScope, os1.a(crVarE2, applicationA2, AudioItem.class));
    }

    public final List q(ArrayList arrayList) {
        y45.j(arrayList, "mediaIds");
        cr crVarE = new cr.a().v(arrayList).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        List listC = DataEngine.a.c(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class));
        return listC == null ? y71.k() : listC;
    }

    public final List r(ArrayList arrayList, String str) {
        y45.j(arrayList, "mediaIds");
        y45.j(str, "displayName");
        cr crVarE = new cr.a().v(arrayList).h(str).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        List listC = DataEngine.a.c(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class));
        return listC == null ? y71.k() : listC;
    }

    public final AudioItem s(String str) {
        y45.j(str, "path");
        cr crVarE = new cr.a().y(str).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return (AudioItem) DataEngine.a.a(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class));
    }

    public final List t(String str) {
        y45.j(str, "searchText");
        cr crVarE = new cr.a().h(str).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        List listC = DataEngine.a.c(DataScope.MV, os1.a(crVarE, applicationA, AudioItem.class));
        return listC == null ? y71.k() : listC;
    }

    public dw6() {
        this.a = y71.q("MV", "Music%Video", "Live", "Concert", "official%video", "Album", "video%official", DataTypes.OBJ_LYRICS, "concierto", "vidéo%officielle", "álbum", "vídeo%oficial", "concert", "paroles", "музыкальное%видео", "концерт", "официальное%видео", "Альбом", "видео%официальное", "тексты песен", "konser", "lirik", "كلمات");
        this.b = y71.n(".*MV.*", ".*Music.*Video.*", ".*Live.*", ".*Concert.*", ".*official.*video.*", ".*Album.*", ".*video.*official.*", ".*Lyrics.*", ".*concierto.*", ".*álbum.*", ".*concert.*", ".*vídeo.*oficial.*", ".*vidéo.*officielle.*", ".*paroles.*", ".*музыкально.*видео.*", ".*концерт.*", ".*официальное.*видео.*", ".*Альбом.*", ".*видео.*официальное.*", ".*тексты песен.*", ".*konser.*", ".*lirik.*", ".*كلمات.*");
    }
}
