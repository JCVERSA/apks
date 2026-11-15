package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class MediaBrowserServiceCompat extends Service {

    static final boolean f9398i = Log.isLoggable("MBServiceCompat", 3);

    private f f9399a;

    ConnectionRecord f9404f;

    MediaSessionCompat.Token f9406h;

    private final ServiceBinderImpl f9400b = new ServiceBinderImpl();

    final ConnectionRecord f9401c = new ConnectionRecord("android.media.session.MediaController", -1, -1, null, null);

    final ArrayList f9402d = new ArrayList();

    final androidx.collection.a f9403e = new androidx.collection.a();

    final o f9405g = new o(this);

    class ConnectionRecord implements IBinder.DeathRecipient {

        public final String f9407a;

        public final int f9408b;

        public final int f9409c;

        public final androidx.media.b f9410d;

        public final Bundle f9411e;

        public final m f9412f;

        public final HashMap f9413g = new HashMap();

        public e f9414h;

        ConnectionRecord(String str, int i10, int i11, Bundle bundle, m mVar) {
            this.f9407a = str;
            this.f9408b = i10;
            this.f9409c = i11;
            this.f9410d = new androidx.media.b(str, i10, i11);
            this.f9411e = bundle;
            this.f9412f = mVar;
        }

        @Override
        public void binderDied() {
            MediaBrowserServiceCompat.this.f9405g.post(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = ConnectionRecord.this;
                    MediaBrowserServiceCompat.this.f9403e.remove(connectionRecord.f9412f.asBinder());
                }
            });
        }
    }

    class MediaBrowserServiceImplApi21 implements f {

        final List f9416a = new ArrayList();

        MediaBrowserService f9417b;

        Messenger f9418c;

        class AnonymousClass3 implements Runnable {
            final Bundle val$options;
            final String val$parentId;

            AnonymousClass3(String str, Bundle bundle) {
                this.val$parentId = str;
                this.val$options = bundle;
            }

            @Override
            public void run() {
                Iterator<Object> it = MediaBrowserServiceCompat.this.f9403e.keySet().iterator();
                while (it.hasNext()) {
                    MediaBrowserServiceImplApi21.this.c((ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.get((IBinder) it.next()), this.val$parentId, this.val$options);
                }
            }
        }

        class AnonymousClass4 implements Runnable {
            final Bundle val$options;
            final String val$parentId;
            final androidx.media.b val$remoteUserInfo;

            AnonymousClass4(androidx.media.b bVar, String str, Bundle bundle) {
                this.val$remoteUserInfo = bVar;
                this.val$parentId = str;
                this.val$options = bundle;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < MediaBrowserServiceCompat.this.f9403e.size(); i10++) {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.valueAt(i10);
                    if (connectionRecord.f9410d.equals(this.val$remoteUserInfo)) {
                        MediaBrowserServiceImplApi21.this.c(connectionRecord, this.val$parentId, this.val$options);
                    }
                }
            }
        }

        class a extends k {

            final l f9420f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, l lVar) {
                super(obj);
                this.f9420f = lVar;
            }

            @Override
            public void d(List list) {
                List listEmptyList;
                if (list == null) {
                    listEmptyList = Build.VERSION.SDK_INT >= 24 ? null : Collections.emptyList();
                } else {
                    ArrayList arrayList = new ArrayList(list.size());
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) it.next();
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        arrayList.add(parcelObtain);
                    }
                    listEmptyList = arrayList;
                }
                this.f9420f.b(listEmptyList);
            }
        }

        class b extends MediaBrowserService {
            b(Context context) {
                attachBaseContext(context);
            }

            @Override
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i10, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                e eVarD = MediaBrowserServiceImplApi21.this.d(str, i10, bundle == null ? null : new Bundle(bundle));
                if (eVarD == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(eVarD.f9435a, eVarD.f9436b);
            }

            @Override
            public void onLoadChildren(String str, MediaBrowserService.Result result) {
                MediaBrowserServiceImplApi21.this.e(str, new l(result));
            }
        }

        MediaBrowserServiceImplApi21() {
        }

        @Override
        public void a(final MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    MediaBrowserServiceImplApi21.this.f(token);
                }
            });
        }

        @Override
        public IBinder b(Intent intent) {
            return this.f9417b.onBind(intent);
        }

        void c(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<androidx.core.util.e> list = (List) connectionRecord.f9413g.get(str);
            if (list != null) {
                for (androidx.core.util.e eVar : list) {
                    if (androidx.media.a.b(bundle, (Bundle) eVar.f7959b)) {
                        MediaBrowserServiceCompat.this.n(str, connectionRecord, (Bundle) eVar.f7959b, bundle);
                    }
                }
            }
        }

        public e d(String str, int i10, Bundle bundle) {
            Bundle bundleC;
            int i11 = -1;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundleC = null;
            } else {
                bundle.remove("extra_client_version");
                this.f9418c = new Messenger(MediaBrowserServiceCompat.this.f9405g);
                bundleC = new Bundle();
                bundleC.putInt("extra_service_version", 2);
                androidx.core.app.f.b(bundleC, "extra_messenger", this.f9418c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f9406h;
                if (token != null) {
                    android.support.v4.media.session.b extraBinder = token.getExtraBinder();
                    androidx.core.app.f.b(bundleC, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
                } else {
                    this.f9416a.add(bundleC);
                }
                i11 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
            }
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i11, i10, bundle, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9404f = connectionRecord;
            e eVarF = mediaBrowserServiceCompat.f(str, i10, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.f9404f = null;
            if (eVarF == null) {
                return null;
            }
            if (this.f9418c != null) {
                mediaBrowserServiceCompat2.f9402d.add(connectionRecord);
            }
            if (bundleC == null) {
                bundleC = eVarF.c();
            } else if (eVarF.c() != null) {
                bundleC.putAll(eVarF.c());
            }
            return new e(eVarF.d(), bundleC);
        }

        public void e(String str, l lVar) {
            a aVar = new a(str, lVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9404f = mediaBrowserServiceCompat.f9401c;
            mediaBrowserServiceCompat.g(str, aVar);
            MediaBrowserServiceCompat.this.f9404f = null;
        }

        void f(MediaSessionCompat.Token token) {
            if (!this.f9416a.isEmpty()) {
                android.support.v4.media.session.b extraBinder = token.getExtraBinder();
                if (extraBinder != null) {
                    Iterator it = this.f9416a.iterator();
                    while (it.hasNext()) {
                        androidx.core.app.f.b((Bundle) it.next(), "extra_session_binder", extraBinder.asBinder());
                    }
                }
                this.f9416a.clear();
            }
            this.f9417b.setSessionToken((MediaSession.Token) token.getToken());
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void a(final String str, final IBinder iBinder, final Bundle bundle, final m mVar) {
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.a(str, connectionRecord, iBinder, bundle);
                        return;
                    }
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                }
            });
        }

        public void b(final String str, final int i10, final int i11, final Bundle bundle, final m mVar) {
            if (MediaBrowserServiceCompat.this.d(str, i11)) {
                MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override
                    public void run() {
                        IBinder iBinderAsBinder = mVar.asBinder();
                        MediaBrowserServiceCompat.this.f9403e.remove(iBinderAsBinder);
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i10, i11, bundle, mVar);
                        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat.f9404f = connectionRecord;
                        e eVarF = mediaBrowserServiceCompat.f(str, i11, bundle);
                        connectionRecord.f9414h = eVarF;
                        MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat2.f9404f = null;
                        if (eVarF == null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("No root for client ");
                            sb2.append(str);
                            sb2.append(" from service ");
                            sb2.append(getClass().getName());
                            try {
                                mVar.b();
                                return;
                            } catch (RemoteException unused) {
                                Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                                return;
                            }
                        }
                        try {
                            mediaBrowserServiceCompat2.f9403e.put(iBinderAsBinder, connectionRecord);
                            iBinderAsBinder.linkToDeath(connectionRecord, 0);
                            if (MediaBrowserServiceCompat.this.f9406h != null) {
                                mVar.c(connectionRecord.f9414h.d(), MediaBrowserServiceCompat.this.f9406h, connectionRecord.f9414h.c());
                            }
                        } catch (RemoteException unused2) {
                            Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + str);
                            MediaBrowserServiceCompat.this.f9403e.remove(iBinderAsBinder);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i11 + " package=" + str);
        }

        public void c(final m mVar) {
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.remove(mVar.asBinder());
                    if (connectionRecord != null) {
                        connectionRecord.f9412f.asBinder().unlinkToDeath(connectionRecord, 0);
                    }
                }
            });
        }

        public void d(final String str, final ResultReceiver resultReceiver, final m mVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.o(str, connectionRecord, resultReceiver);
                        return;
                    }
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + str);
                }
            });
        }

        public void e(final m mVar, final String str, final int i10, final int i11, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord;
                    IBinder iBinderAsBinder = mVar.asBinder();
                    MediaBrowserServiceCompat.this.f9403e.remove(iBinderAsBinder);
                    Iterator it = MediaBrowserServiceCompat.this.f9402d.iterator();
                    while (true) {
                        connectionRecord = null;
                        if (!it.hasNext()) {
                            break;
                        }
                        ConnectionRecord connectionRecord2 = (ConnectionRecord) it.next();
                        if (connectionRecord2.f9409c == i11) {
                            connectionRecord = (TextUtils.isEmpty(str) || i10 <= 0) ? MediaBrowserServiceCompat.this.new ConnectionRecord(connectionRecord2.f9407a, connectionRecord2.f9408b, connectionRecord2.f9409c, bundle, mVar) : null;
                            it.remove();
                            break;
                        }
                    }
                    if (connectionRecord == null) {
                        connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i10, i11, bundle, mVar);
                    }
                    MediaBrowserServiceCompat.this.f9403e.put(iBinderAsBinder, connectionRecord);
                    try {
                        iBinderAsBinder.linkToDeath(connectionRecord, 0);
                    } catch (RemoteException unused) {
                        Log.w("MBServiceCompat", "IBinder is already dead.");
                    }
                }
            });
        }

        public void f(final String str, final IBinder iBinder, final m mVar) {
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.get(mVar.asBinder());
                    if (connectionRecord == null) {
                        Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + str);
                        return;
                    }
                    if (MediaBrowserServiceCompat.this.q(str, connectionRecord, iBinder)) {
                        return;
                    }
                    Log.w("MBServiceCompat", "removeSubscription called for " + str + " which is not subscribed");
                }
            });
        }

        public void g(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final m mVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.p(str, bundle, connectionRecord, resultReceiver);
                        return;
                    }
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + str);
                }
            });
        }

        public void h(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final m mVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.get(mVar.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.m(str, bundle, connectionRecord, resultReceiver);
                        return;
                    }
                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                }
            });
        }

        public void i(final m mVar) {
            MediaBrowserServiceCompat.this.f9405g.a(new Runnable() {
                @Override
                public void run() {
                    IBinder iBinderAsBinder = mVar.asBinder();
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f9403e.remove(iBinderAsBinder);
                    if (connectionRecord != null) {
                        iBinderAsBinder.unlinkToDeath(connectionRecord, 0);
                    }
                }
            });
        }
    }

    class a extends k {

        final ConnectionRecord f9424f;

        final String f9425g;

        final Bundle f9426h;

        final Bundle f9427i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object obj, ConnectionRecord connectionRecord, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            this.f9424f = connectionRecord;
            this.f9425g = str;
            this.f9426h = bundle;
            this.f9427i = bundle2;
        }

        @Override
        public void d(List list) {
            if (MediaBrowserServiceCompat.this.f9403e.get(this.f9424f.f9412f.asBinder()) != this.f9424f) {
                if (MediaBrowserServiceCompat.f9398i) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                    sb2.append(this.f9424f.f9407a);
                    sb2.append(" id=");
                    sb2.append(this.f9425g);
                    return;
                }
                return;
            }
            if ((a() & 1) != 0) {
                list = MediaBrowserServiceCompat.this.b(list, this.f9426h);
            }
            try {
                this.f9424f.f9412f.a(this.f9425g, list, this.f9426h, this.f9427i);
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.f9425g + " package=" + this.f9424f.f9407a);
            }
        }
    }

    class b extends k {

        final ResultReceiver f9429f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f9429f = resultReceiver;
        }

        @Override
        public void d(MediaBrowserCompat.MediaItem mediaItem) {
            if ((a() & 2) != 0) {
                this.f9429f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("media_item", mediaItem);
            this.f9429f.send(0, bundle);
        }
    }

    class c extends k {

        final ResultReceiver f9431f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f9431f = resultReceiver;
        }

        @Override
        public void d(List list) {
            if ((a() & 4) != 0 || list == null) {
                this.f9431f.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f9431f.send(0, bundle);
        }
    }

    class d extends k {

        final ResultReceiver f9433f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f9433f = resultReceiver;
        }

        @Override
        void c(Bundle bundle) {
            this.f9433f.send(-1, bundle);
        }

        @Override
        public void d(Bundle bundle) {
            this.f9433f.send(0, bundle);
        }
    }

    public static final class e {

        private final String f9435a;

        private final Bundle f9436b;

        public e(String str, Bundle bundle) {
            if (str == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
            }
            this.f9435a = str;
            this.f9436b = bundle;
        }

        public Bundle c() {
            return this.f9436b;
        }

        public String d() {
            return this.f9435a;
        }
    }

    interface f {
        void a(MediaSessionCompat.Token token);

        IBinder b(Intent intent);

        void onCreate();
    }

    class g extends MediaBrowserServiceImplApi21 {

        class a extends k {

            final l f9438f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, l lVar) {
                super(obj);
                this.f9438f = lVar;
            }

            @Override
            public void d(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    this.f9438f.b(null);
                    return;
                }
                Parcel parcelObtain = Parcel.obtain();
                mediaItem.writeToParcel(parcelObtain, 0);
                this.f9438f.b(parcelObtain);
            }
        }

        class b extends MediaBrowserServiceImplApi21.b {
            b(Context context) {
                super(context);
            }

            @Override
            public void onLoadItem(String str, MediaBrowserService.Result result) {
                g.this.g(str, new l(result));
            }
        }

        g() {
            super();
        }

        public void g(String str, l lVar) {
            a aVar = new a(str, lVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9404f = mediaBrowserServiceCompat.f9401c;
            mediaBrowserServiceCompat.i(str, aVar);
            MediaBrowserServiceCompat.this.f9404f = null;
        }

        @Override
        public void onCreate() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.f9417b = bVar;
            bVar.onCreate();
        }
    }

    class h extends g {

        class a extends k {

            final l f9442f;

            final Bundle f9443g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, l lVar, Bundle bundle) {
                super(obj);
                this.f9442f = lVar;
                this.f9443g = bundle;
            }

            @Override
            public void d(List list) {
                if (list == null) {
                    this.f9442f.b(null);
                    return;
                }
                if ((a() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.b(list, this.f9443g);
                }
                ArrayList arrayList = new ArrayList(list.size());
                for (MediaBrowserCompat.MediaItem mediaItem : list) {
                    Parcel parcelObtain = Parcel.obtain();
                    mediaItem.writeToParcel(parcelObtain, 0);
                    arrayList.add(parcelObtain);
                }
                this.f9442f.b(arrayList);
            }
        }

        class b extends g.b {
            b(Context context) {
                super(context);
            }

            @Override
            public void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                h hVar = h.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.f9404f = mediaBrowserServiceCompat.f9401c;
                hVar.h(str, new l(result), bundle);
                MediaBrowserServiceCompat.this.f9404f = null;
            }
        }

        h() {
            super();
        }

        public void h(String str, l lVar, Bundle bundle) {
            a aVar = new a(str, lVar, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f9404f = mediaBrowserServiceCompat.f9401c;
            mediaBrowserServiceCompat.h(str, aVar, bundle);
            MediaBrowserServiceCompat.this.f9404f = null;
        }

        @Override
        public void onCreate() {
            b bVar = new b(MediaBrowserServiceCompat.this);
            this.f9417b = bVar;
            bVar.onCreate();
        }
    }

    class i extends h {
        i() {
            super();
        }
    }

    class j implements f {

        final MediaBrowserServiceCompat f9447a;

        abstract void c(ConnectionRecord connectionRecord, String str, Bundle bundle);
    }

    public static class k {

        private final Object f9448a;

        private boolean f9449b;

        private boolean f9450c;

        private boolean f9451d;

        private int f9452e;

        k(Object obj) {
            this.f9448a = obj;
        }

        int a() {
            return this.f9452e;
        }

        boolean b() {
            return this.f9449b || this.f9450c || this.f9451d;
        }

        void c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f9448a);
        }

        abstract void d(Object obj);

        public void e(Bundle bundle) {
            if (!this.f9450c && !this.f9451d) {
                this.f9451d = true;
                c(bundle);
            } else {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f9448a);
            }
        }

        public void f(Object obj) {
            if (!this.f9450c && !this.f9451d) {
                this.f9450c = true;
                d(obj);
            } else {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f9448a);
            }
        }

        void g(int i10) {
            this.f9452e = i10;
        }
    }

    static class l {

        MediaBrowserService.Result f9453a;

        l(MediaBrowserService.Result result) {
            this.f9453a = result;
        }

        List a(List list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Parcel parcel = (Parcel) it.next();
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        public void b(Object obj) {
            if (obj instanceof List) {
                this.f9453a.sendResult(a((List) obj));
                return;
            }
            if (!(obj instanceof Parcel)) {
                this.f9453a.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) obj;
            parcel.setDataPosition(0);
            this.f9453a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }
    }

    interface m {
        void a(String str, List list, Bundle bundle, Bundle bundle2);

        IBinder asBinder();

        void b();

        void c(String str, MediaSessionCompat.Token token, Bundle bundle);
    }

    private static class n implements m {

        final Messenger f9454a;

        n(Messenger messenger) {
            this.f9454a = messenger;
        }

        private void d(int i10, Bundle bundle) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i10;
            messageObtain.arg1 = 2;
            messageObtain.setData(bundle);
            this.f9454a.send(messageObtain);
        }

        @Override
        public void a(String str, List list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            d(3, bundle3);
        }

        @Override
        public IBinder asBinder() {
            return this.f9454a.getBinder();
        }

        @Override
        public void b() throws RemoteException {
            d(2, null);
        }

        @Override
        public void c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt("extra_service_version", 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putParcelable("data_media_session_token", token);
            bundle2.putBundle("data_root_hints", bundle);
            d(1, bundle2);
        }
    }

    private static final class o extends Handler {

        private MediaBrowserServiceCompat f9455a;

        o(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            this.f9455a = mediaBrowserServiceCompat;
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        public void b() {
            this.f9455a = null;
        }

        @Override
        public void handleMessage(Message message) {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = this.f9455a;
            if (mediaBrowserServiceCompat != null) {
                mediaBrowserServiceCompat.c(message);
            } else {
                removeCallbacksAndMessages(null);
            }
        }

        @Override
        public boolean sendMessageAtTime(Message message, long j10) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j10);
        }
    }

    void a(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<androidx.core.util.e> arrayList = (List) connectionRecord.f9413g.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        for (androidx.core.util.e eVar : arrayList) {
            if (iBinder == eVar.f7958a && androidx.media.a.a(bundle, (Bundle) eVar.f7959b)) {
                return;
            }
        }
        arrayList.add(new androidx.core.util.e(iBinder, bundle));
        connectionRecord.f9413g.put(str, arrayList);
        n(str, connectionRecord, bundle, null);
        this.f9404f = connectionRecord;
        k(str, bundle);
        this.f9404f = null;
    }

    List b(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i10 = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i11 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i10 == -1 && i11 == -1) {
            return list;
        }
        int i12 = i11 * i10;
        int size = i12 + i11;
        if (i10 < 0 || i11 < 1 || i12 >= list.size()) {
            return Collections.emptyList();
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i12, size);
    }

    void c(Message message) {
        Bundle data = message.getData();
        switch (message.what) {
            case 1:
                Bundle bundle = data.getBundle("data_root_hints");
                MediaSessionCompat.a(bundle);
                this.f9400b.b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new n(message.replyTo));
                break;
            case 2:
                this.f9400b.c(new n(message.replyTo));
                break;
            case 3:
                Bundle bundle2 = data.getBundle("data_options");
                MediaSessionCompat.a(bundle2);
                this.f9400b.a(data.getString("data_media_item_id"), androidx.core.app.f.a(data, "data_callback_token"), bundle2, new n(message.replyTo));
                break;
            case 4:
                this.f9400b.f(data.getString("data_media_item_id"), androidx.core.app.f.a(data, "data_callback_token"), new n(message.replyTo));
                break;
            case 5:
                this.f9400b.d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new n(message.replyTo));
                break;
            case 6:
                Bundle bundle3 = data.getBundle("data_root_hints");
                MediaSessionCompat.a(bundle3);
                this.f9400b.e(new n(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                break;
            case 7:
                this.f9400b.i(new n(message.replyTo));
                break;
            case 8:
                Bundle bundle4 = data.getBundle("data_search_extras");
                MediaSessionCompat.a(bundle4);
                this.f9400b.g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new n(message.replyTo));
                break;
            case 9:
                Bundle bundle5 = data.getBundle("data_custom_action_extras");
                MediaSessionCompat.a(bundle5);
                this.f9400b.h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new n(message.replyTo));
                break;
            default:
                Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                break;
        }
    }

    boolean d(String str, int i10) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i10)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void e(String str, Bundle bundle, k kVar) {
        kVar.e(null);
    }

    public abstract e f(String str, int i10, Bundle bundle);

    public abstract void g(String str, k kVar);

    public void h(String str, k kVar, Bundle bundle) {
        kVar.g(1);
        g(str, kVar);
    }

    public void i(String str, k kVar) {
        kVar.g(2);
        kVar.f(null);
    }

    public void j(String str, Bundle bundle, k kVar) {
        kVar.g(4);
        kVar.f(null);
    }

    public void k(String str, Bundle bundle) {
    }

    public void l(String str) {
    }

    void m(String str, Bundle bundle, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        d dVar = new d(str, resultReceiver);
        this.f9404f = connectionRecord;
        e(str, bundle, dVar);
        this.f9404f = null;
        if (dVar.b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    void n(String str, ConnectionRecord connectionRecord, Bundle bundle, Bundle bundle2) {
        a aVar = new a(str, connectionRecord, str, bundle, bundle2);
        this.f9404f = connectionRecord;
        if (bundle == null) {
            g(str, aVar);
        } else {
            h(str, aVar, bundle);
        }
        this.f9404f = null;
        if (aVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.f9407a + " id=" + str);
    }

    void o(String str, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        b bVar = new b(str, resultReceiver);
        this.f9404f = connectionRecord;
        i(str, bVar);
        this.f9404f = null;
        if (bVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.f9399a.b(intent);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            this.f9399a = new i();
        } else if (i10 >= 26) {
            this.f9399a = new h();
        } else {
            this.f9399a = new g();
        }
        this.f9399a.onCreate();
    }

    @Override
    public void onDestroy() {
        this.f9405g.b();
    }

    void p(String str, Bundle bundle, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        c cVar = new c(str, resultReceiver);
        this.f9404f = connectionRecord;
        j(str, bundle, cVar);
        this.f9404f = null;
        if (cVar.b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    boolean q(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z10 = false;
        try {
            if (iBinder != null) {
                List list = (List) connectionRecord.f9413g.get(str);
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (iBinder == ((androidx.core.util.e) it.next()).f7958a) {
                            it.remove();
                            z10 = true;
                        }
                    }
                    if (list.size() == 0) {
                        connectionRecord.f9413g.remove(str);
                    }
                }
            } else if (connectionRecord.f9413g.remove(str) != null) {
                z10 = true;
            }
            this.f9404f = connectionRecord;
            l(str);
            this.f9404f = null;
            return z10;
        } catch (Throwable th2) {
            this.f9404f = connectionRecord;
            l(str);
            this.f9404f = null;
            throw th2;
        }
    }

    public void r(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null");
        }
        if (this.f9406h != null) {
            throw new IllegalStateException("The session token has already been set");
        }
        this.f9406h = token;
        this.f9399a.a(token);
    }
}
