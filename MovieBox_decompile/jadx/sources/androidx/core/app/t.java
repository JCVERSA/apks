package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class t {

    private static String f7782d;

    private static d f7785g;

    private final Context f7786a;

    private final NotificationManager f7787b;

    private static final Object f7781c = new Object();

    private static Set f7783e = new HashSet();

    private static final Object f7784f = new Object();

    static class a {
        static boolean a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }
    }

    private static class b implements e {

        final String f7788a;

        final int f7789b;

        final String f7790c;

        final Notification f7791d;

        b(String str, int i10, String str2, Notification notification) {
            this.f7788a = str;
            this.f7789b = i10;
            this.f7790c = str2;
            this.f7791d = notification;
        }

        @Override
        public void a(e.a aVar) {
            aVar.S0(this.f7788a, this.f7789b, this.f7790c, this.f7791d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f7788a + ", id:" + this.f7789b + ", tag:" + this.f7790c + "]";
        }
    }

    private static class c {

        final ComponentName f7792a;

        final IBinder f7793b;

        c(ComponentName componentName, IBinder iBinder) {
            this.f7792a = componentName;
            this.f7793b = iBinder;
        }
    }

    private static class d implements Handler.Callback, ServiceConnection {

        private final Context f7794a;

        private final HandlerThread f7795b;

        private final Handler f7796c;

        private final Map f7797d = new HashMap();

        private Set f7798e = new HashSet();

        private static class a {

            final ComponentName f7799a;

            e.a f7801c;

            boolean f7800b = false;

            ArrayDeque f7802d = new ArrayDeque();

            int f7803e = 0;

            a(ComponentName componentName) {
                this.f7799a = componentName;
            }
        }

        d(Context context) {
            this.f7794a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f7795b = handlerThread;
            handlerThread.start();
            this.f7796c = new Handler(handlerThread.getLooper(), this);
        }

        private boolean a(a aVar) {
            if (aVar.f7800b) {
                return true;
            }
            boolean zBindService = this.f7794a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f7799a), this, 33);
            aVar.f7800b = zBindService;
            if (zBindService) {
                aVar.f7803e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f7799a);
                this.f7794a.unbindService(this);
            }
            return aVar.f7800b;
        }

        private void b(a aVar) {
            if (aVar.f7800b) {
                this.f7794a.unbindService(this);
                aVar.f7800b = false;
            }
            aVar.f7801c = null;
        }

        private void c(e eVar) {
            j();
            for (a aVar : this.f7797d.values()) {
                aVar.f7802d.add(eVar);
                g(aVar);
            }
        }

        private void d(ComponentName componentName) {
            a aVar = (a) this.f7797d.get(componentName);
            if (aVar != null) {
                g(aVar);
            }
        }

        private void e(ComponentName componentName, IBinder iBinder) {
            a aVar = (a) this.f7797d.get(componentName);
            if (aVar != null) {
                aVar.f7801c = e.a.AbstractBinderC0712a.X0(iBinder);
                aVar.f7803e = 0;
                g(aVar);
            }
        }

        private void f(ComponentName componentName) {
            a aVar = (a) this.f7797d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void g(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Processing component ");
                sb2.append(aVar.f7799a);
                sb2.append(", ");
                sb2.append(aVar.f7802d.size());
                sb2.append(" queued tasks");
            }
            if (aVar.f7802d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.f7801c == null) {
                i(aVar);
                return;
            }
            while (true) {
                e eVar = (e) aVar.f7802d.peek();
                if (eVar == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Sending task ");
                        sb3.append(eVar);
                    }
                    eVar.a(aVar.f7801c);
                    aVar.f7802d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Remote service has died: ");
                        sb4.append(aVar.f7799a);
                    }
                } catch (RemoteException e10) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f7799a, e10);
                }
            }
            if (aVar.f7802d.isEmpty()) {
                return;
            }
            i(aVar);
        }

        private void i(a aVar) {
            if (this.f7796c.hasMessages(3, aVar.f7799a)) {
                return;
            }
            int i10 = aVar.f7803e;
            int i11 = i10 + 1;
            aVar.f7803e = i11;
            if (i11 <= 6) {
                int i12 = (1 << i10) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Scheduling retry for ");
                    sb2.append(i12);
                    sb2.append(" ms");
                }
                this.f7796c.sendMessageDelayed(this.f7796c.obtainMessage(3, aVar.f7799a), i12);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + aVar.f7802d.size() + " tasks to " + aVar.f7799a + " after " + aVar.f7803e + " retries");
            aVar.f7802d.clear();
        }

        private void j() {
            Set setC = t.c(this.f7794a);
            if (setC.equals(this.f7798e)) {
                return;
            }
            this.f7798e = setC;
            List<ResolveInfo> listQueryIntentServices = this.f7794a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (setC.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f7797d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Adding listener record for ");
                        sb2.append(componentName2);
                    }
                    this.f7797d.put(componentName2, new a(componentName2));
                }
            }
            Iterator it = this.f7797d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (!hashSet.contains(entry.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Removing listener record for ");
                        sb3.append(entry.getKey());
                    }
                    b((a) entry.getValue());
                    it.remove();
                }
            }
        }

        public void h(e eVar) {
            this.f7796c.obtainMessage(0, eVar).sendToTarget();
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                c((e) message.obj);
                return true;
            }
            if (i10 == 1) {
                c cVar = (c) message.obj;
                e(cVar.f7792a, cVar.f7793b);
                return true;
            }
            if (i10 == 2) {
                f((ComponentName) message.obj);
                return true;
            }
            if (i10 != 3) {
                return false;
            }
            d((ComponentName) message.obj);
            return true;
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Connected to service ");
                sb2.append(componentName);
            }
            this.f7796c.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Disconnected from service ");
                sb2.append(componentName);
            }
            this.f7796c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    private interface e {
        void a(e.a aVar);
    }

    private t(Context context) {
        this.f7786a = context;
        this.f7787b = (NotificationManager) context.getSystemService("notification");
    }

    public static t b(Context context) {
        return new t(context);
    }

    public static Set c(Context context) {
        Set set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f7781c) {
            if (string != null) {
                try {
                    if (!string.equals(f7782d)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        f7783e = hashSet;
                        f7782d = string;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            set = f7783e;
        }
        return set;
    }

    private void f(e eVar) {
        synchronized (f7784f) {
            try {
                if (f7785g == null) {
                    f7785g = new d(this.f7786a.getApplicationContext());
                }
                f7785g.h(eVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean g(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean("android.support.useSideChannel");
    }

    public boolean a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return a.a(this.f7787b);
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f7786a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f7786a.getApplicationInfo();
        String packageName = this.f7786a.getApplicationContext().getPackageName();
        int i10 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
            Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
            num.intValue();
            return ((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i10), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public void d(int i10, Notification notification) {
        e(null, i10, notification);
    }

    public void e(String str, int i10, Notification notification) {
        if (!g(notification)) {
            this.f7787b.notify(str, i10, notification);
        } else {
            f(new b(this.f7786a.getPackageName(), i10, str, notification));
            this.f7787b.cancel(str, i10);
        }
    }
}
