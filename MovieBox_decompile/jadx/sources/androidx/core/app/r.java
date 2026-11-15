package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class r implements o {

    private final Context f7770a;

    private final Notification.Builder f7771b;

    private final NotificationCompat.m f7772c;

    private RemoteViews f7773d;

    private RemoteViews f7774e;

    private final List f7775f = new ArrayList();

    private final Bundle f7776g = new Bundle();

    private int f7777h;

    private RemoteViews f7778i;

    static class a {
        static Notification.Builder a(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        static Notification.Action d(Notification.Action.Builder builder) {
            return builder.build();
        }

        static String e(Notification notification) {
            return notification.getGroup();
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        static Notification.Builder g(Notification.Builder builder, boolean z10) {
            return builder.setGroupSummary(z10);
        }

        static Notification.Builder h(Notification.Builder builder, boolean z10) {
            return builder.setLocalOnly(z10);
        }

        static Notification.Builder i(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    static class b {
        static Notification.Builder a(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        static Notification.Builder b(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        static Notification.Builder c(Notification.Builder builder, int i10) {
            return builder.setColor(i10);
        }

        static Notification.Builder d(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        static Notification.Builder e(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }

        static Notification.Builder f(Notification.Builder builder, int i10) {
            return builder.setVisibility(i10);
        }
    }

    static class c {
        static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        static Notification.Builder b(Notification.Builder builder, Icon icon) {
            return builder.setLargeIcon(icon);
        }

        static Notification.Builder c(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }
    }

    static class d {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAllowGeneratedReplies(z10);
        }

        static Notification.Builder b(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        static Notification.Builder c(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        static Notification.Builder d(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }
    }

    static class e {
        static Notification.Builder a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        static Notification.Builder b(Notification.Builder builder, int i10) {
            return builder.setBadgeIconType(i10);
        }

        static Notification.Builder c(Notification.Builder builder, boolean z10) {
            return builder.setColorized(z10);
        }

        static Notification.Builder d(Notification.Builder builder, int i10) {
            return builder.setGroupAlertBehavior(i10);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        static Notification.Builder g(Notification.Builder builder, long j10) {
            return builder.setTimeoutAfter(j10);
        }
    }

    static class f {
        static Notification.Builder a(Notification.Builder builder, Person person) {
            return builder.addPerson(person);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, int i10) {
            return builder.setSemanticAction(i10);
        }
    }

    static class g {
        static Notification.Builder a(Notification.Builder builder, boolean z10) {
            return builder.setAllowSystemGeneratedContextualActions(z10);
        }

        static Notification.Builder b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, boolean z10) {
            return builder.setContextual(z10);
        }

        static Notification.Builder d(Notification.Builder builder, Object obj) {
            return builder.setLocusId((LocusId) obj);
        }
    }

    static class h {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAuthenticationRequired(z10);
        }

        static Notification.Builder b(Notification.Builder builder, int i10) {
            return builder.setForegroundServiceBehavior(i10);
        }
    }

    r(NotificationCompat.m mVar) {
        int i10;
        this.f7772c = mVar;
        Context context = mVar.f7707a;
        this.f7770a = context;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f7771b = e.a(context, mVar.L);
        } else {
            this.f7771b = new Notification.Builder(mVar.f7707a);
        }
        Notification notification = mVar.U;
        this.f7771b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, mVar.f7715i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(mVar.f7711e).setContentText(mVar.f7712f).setContentInfo(mVar.f7717k).setContentIntent(mVar.f7713g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(mVar.f7714h, (notification.flags & 128) != 0).setNumber(mVar.f7718l).setProgress(mVar.f7727u, mVar.f7728v, mVar.f7729w);
        Notification.Builder builder = this.f7771b;
        IconCompat iconCompat = mVar.f7716j;
        c.b(builder, iconCompat == null ? null : iconCompat.x(context));
        this.f7771b.setSubText(mVar.f7724r).setUsesChronometer(mVar.f7721o).setPriority(mVar.f7719m);
        NotificationCompat.p pVar = mVar.f7723q;
        if (pVar instanceof NotificationCompat.n) {
            Iterator it = ((NotificationCompat.n) pVar).q().iterator();
            while (it.hasNext()) {
                b((NotificationCompat.b) it.next());
            }
        } else {
            Iterator it2 = mVar.f7708b.iterator();
            while (it2.hasNext()) {
                b((NotificationCompat.b) it2.next());
            }
        }
        Bundle bundle = mVar.E;
        if (bundle != null) {
            this.f7776g.putAll(bundle);
        }
        int i11 = Build.VERSION.SDK_INT;
        this.f7773d = mVar.I;
        this.f7774e = mVar.J;
        this.f7771b.setShowWhen(mVar.f7720n);
        a.h(this.f7771b, mVar.A);
        a.f(this.f7771b, mVar.f7730x);
        a.i(this.f7771b, mVar.f7732z);
        a.g(this.f7771b, mVar.f7731y);
        this.f7777h = mVar.Q;
        b.b(this.f7771b, mVar.D);
        b.c(this.f7771b, mVar.F);
        b.f(this.f7771b, mVar.G);
        b.d(this.f7771b, mVar.H);
        b.e(this.f7771b, notification.sound, notification.audioAttributes);
        List listE = i11 < 28 ? e(g(mVar.f7709c), mVar.X) : mVar.X;
        if (listE != null && !listE.isEmpty()) {
            Iterator it3 = listE.iterator();
            while (it3.hasNext()) {
                b.a(this.f7771b, (String) it3.next());
            }
        }
        this.f7778i = mVar.K;
        if (mVar.f7710d.size() > 0) {
            Bundle bundle2 = mVar.g().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i12 = 0; i12 < mVar.f7710d.size(); i12++) {
                bundle4.putBundle(Integer.toString(i12), s.e((NotificationCompat.b) mVar.f7710d.get(i12)));
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            mVar.g().putBundle("android.car.EXTENSIONS", bundle2);
            this.f7776g.putBundle("android.car.EXTENSIONS", bundle3);
        }
        int i13 = Build.VERSION.SDK_INT;
        Object obj = mVar.W;
        if (obj != null) {
            c.c(this.f7771b, obj);
        }
        if (i13 >= 24) {
            this.f7771b.setExtras(mVar.E);
            d.e(this.f7771b, mVar.f7726t);
            RemoteViews remoteViews = mVar.I;
            if (remoteViews != null) {
                d.c(this.f7771b, remoteViews);
            }
            RemoteViews remoteViews2 = mVar.J;
            if (remoteViews2 != null) {
                d.b(this.f7771b, remoteViews2);
            }
            RemoteViews remoteViews3 = mVar.K;
            if (remoteViews3 != null) {
                d.d(this.f7771b, remoteViews3);
            }
        }
        if (i13 >= 26) {
            e.b(this.f7771b, mVar.M);
            e.e(this.f7771b, mVar.f7725s);
            e.f(this.f7771b, mVar.N);
            e.g(this.f7771b, mVar.P);
            e.d(this.f7771b, mVar.Q);
            if (mVar.C) {
                e.c(this.f7771b, mVar.B);
            }
            if (!TextUtils.isEmpty(mVar.L)) {
                this.f7771b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i13 >= 28) {
            Iterator it4 = mVar.f7709c.iterator();
            while (it4.hasNext()) {
                f.a(this.f7771b, ((w) it4.next()).i());
            }
        }
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 29) {
            g.a(this.f7771b, mVar.S);
            g.b(this.f7771b, NotificationCompat.l.k(mVar.T));
            androidx.core.content.c cVar = mVar.O;
            if (cVar != null) {
                g.d(this.f7771b, cVar.b());
            }
        }
        if (i14 >= 31 && (i10 = mVar.R) != 0) {
            h.b(this.f7771b, i10);
        }
        if (mVar.V) {
            if (this.f7772c.f7731y) {
                this.f7777h = 2;
            } else {
                this.f7777h = 1;
            }
            this.f7771b.setVibrate(null);
            this.f7771b.setSound(null);
            int i15 = notification.defaults & (-4);
            notification.defaults = i15;
            this.f7771b.setDefaults(i15);
            if (i14 >= 26) {
                if (TextUtils.isEmpty(this.f7772c.f7730x)) {
                    a.f(this.f7771b, NotificationCompat.GROUP_KEY_SILENT);
                }
                e.d(this.f7771b, this.f7777h);
            }
        }
    }

    private void b(NotificationCompat.b bVar) {
        IconCompat iconCompatD = bVar.d();
        Notification.Action.Builder builderA = c.a(iconCompatD != null ? iconCompatD.w() : null, bVar.h(), bVar.a());
        if (bVar.e() != null) {
            for (RemoteInput remoteInput : y.b(bVar.e())) {
                a.c(builderA, remoteInput);
            }
        }
        Bundle bundle = bVar.c() != null ? new Bundle(bVar.c()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", bVar.b());
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            d.a(builderA, bVar.b());
        }
        bundle.putInt("android.support.action.semanticAction", bVar.f());
        if (i10 >= 28) {
            f.b(builderA, bVar.f());
        }
        if (i10 >= 29) {
            g.c(builderA, bVar.j());
        }
        if (i10 >= 31) {
            h.a(builderA, bVar.i());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", bVar.g());
        a.b(builderA, bundle);
        a.a(this.f7771b, a.d(builderA));
    }

    private static List e(List list, List list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        androidx.collection.b bVar = new androidx.collection.b(list.size() + list2.size());
        bVar.addAll(list);
        bVar.addAll(list2);
        return new ArrayList(bVar);
    }

    private static List g(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((w) it.next()).h());
        }
        return arrayList;
    }

    private void h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    @Override
    public Notification.Builder a() {
        return this.f7771b;
    }

    public Notification c() {
        Bundle extras;
        RemoteViews remoteViewsO;
        RemoteViews remoteViewsM;
        NotificationCompat.p pVar = this.f7772c.f7723q;
        if (pVar != null) {
            pVar.b(this);
        }
        RemoteViews remoteViewsN = pVar != null ? pVar.n(this) : null;
        Notification notificationD = d();
        if (remoteViewsN != null) {
            notificationD.contentView = remoteViewsN;
        } else {
            RemoteViews remoteViews = this.f7772c.I;
            if (remoteViews != null) {
                notificationD.contentView = remoteViews;
            }
        }
        if (pVar != null && (remoteViewsM = pVar.m(this)) != null) {
            notificationD.bigContentView = remoteViewsM;
        }
        if (pVar != null && (remoteViewsO = this.f7772c.f7723q.o(this)) != null) {
            notificationD.headsUpContentView = remoteViewsO;
        }
        if (pVar != null && (extras = NotificationCompat.getExtras(notificationD)) != null) {
            pVar.a(extras);
        }
        return notificationD;
    }

    protected Notification d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            return this.f7771b.build();
        }
        if (i10 >= 24) {
            Notification notificationBuild = this.f7771b.build();
            if (this.f7777h != 0) {
                if (a.e(notificationBuild) != null && (notificationBuild.flags & 512) != 0 && this.f7777h == 2) {
                    h(notificationBuild);
                }
                if (a.e(notificationBuild) != null && (notificationBuild.flags & 512) == 0 && this.f7777h == 1) {
                    h(notificationBuild);
                }
            }
            return notificationBuild;
        }
        this.f7771b.setExtras(this.f7776g);
        Notification notificationBuild2 = this.f7771b.build();
        RemoteViews remoteViews = this.f7773d;
        if (remoteViews != null) {
            notificationBuild2.contentView = remoteViews;
        }
        RemoteViews remoteViews2 = this.f7774e;
        if (remoteViews2 != null) {
            notificationBuild2.bigContentView = remoteViews2;
        }
        RemoteViews remoteViews3 = this.f7778i;
        if (remoteViews3 != null) {
            notificationBuild2.headsUpContentView = remoteViews3;
        }
        if (this.f7777h != 0) {
            if (a.e(notificationBuild2) != null && (notificationBuild2.flags & 512) != 0 && this.f7777h == 2) {
                h(notificationBuild2);
            }
            if (a.e(notificationBuild2) != null && (notificationBuild2.flags & 512) == 0 && this.f7777h == 1) {
                h(notificationBuild2);
            }
        }
        return notificationBuild2;
    }

    Context f() {
        return this.f7770a;
    }
}
