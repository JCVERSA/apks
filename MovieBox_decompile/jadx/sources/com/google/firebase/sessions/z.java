package com.google.firebase.sessions;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class z implements y {

    private static final a f31922b = new a(null);

    private final com.google.firebase.f f31923a;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public z(com.google.firebase.f firebaseApp) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        this.f31923a = firebaseApp;
    }

    private final Object b(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
            return Unit.f64096a;
        } catch (IllegalArgumentException e10) {
            return Integer.valueOf(Log.w("LifecycleServiceBinder", "Session lifecycle service binding failed.", e10));
        }
    }

    @Override
    public void a(Messenger callback, ServiceConnection serviceConnection) {
        boolean zBindService;
        Intrinsics.h(callback, "callback");
        Intrinsics.h(serviceConnection, "serviceConnection");
        Context applicationContext = this.f31923a.k().getApplicationContext();
        Intrinsics.g(applicationContext, "firebaseApp.applicationContext.applicationContext");
        Intent intent = new Intent(applicationContext, (Class<?>) SessionLifecycleService.class);
        intent.setAction(String.valueOf(Process.myPid()));
        intent.putExtra("ClientCallbackMessenger", callback);
        intent.setPackage(applicationContext.getPackageName());
        try {
            zBindService = applicationContext.bindService(intent, serviceConnection, 65);
        } catch (SecurityException e10) {
            Log.w("LifecycleServiceBinder", "Failed to bind session lifecycle service to application.", e10);
            zBindService = false;
        }
        if (zBindService) {
            return;
        }
        b(applicationContext, serviceConnection);
    }
}
