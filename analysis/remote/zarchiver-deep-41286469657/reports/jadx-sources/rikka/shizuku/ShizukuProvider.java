package rikka.shizuku;

import a0.c;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import moe.shizuku.api.BinderContainer;

public class ShizukuProvider extends ContentProvider {

    public static boolean f1431a = false;

    public static boolean f1432b = false;

    public class a extends BroadcastReceiver {
        @Override
        public final void onReceive(Context context, Intent intent) {
            IBinder iBinder;
            BinderContainer binderContainer = (BinderContainer) intent.getParcelableExtra("moe.shizuku.privileged.api.intent.extra.BINDER");
            if (binderContainer == null || (iBinder = binderContainer.f1231a) == null) {
                return;
            }
            Log.i("ShizukuProvider", "binder received from broadcast");
            z.a.d(iBinder, context.getPackageName());
        }
    }

    public static void a(Context context) {
        IBinder iBinder;
        if (f1432b) {
            return;
        }
        Log.d("ShizukuProvider", "request binder in non-provider process");
        a aVar = new a();
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(aVar, new IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"), 4);
        } else {
            context.registerReceiver(aVar, new IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"));
        }
        Bundle bundleCall = null;
        try {
            bundleCall = context.getContentResolver().call(Uri.parse("content://" + context.getPackageName() + ".shizuku"), "getBinder", (String) null, new Bundle());
        } catch (Throwable unused) {
        }
        if (bundleCall != null) {
            bundleCall.setClassLoader(BinderContainer.class.getClassLoader());
            BinderContainer binderContainer = (BinderContainer) bundleCall.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
            if (binderContainer == null || (iBinder = binderContainer.f1231a) == null) {
                return;
            }
            Log.i("ShizukuProvider", "Binder received from other process");
            z.a.d(iBinder, context.getPackageName());
        }
    }

    @Override
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.multiprocess) {
            throw new IllegalStateException("android:multiprocess must be false");
        }
        if (!providerInfo.exported) {
            throw new IllegalStateException("android:exported must be true");
        }
        f1432b = true;
    }

    @Override
    public final Bundle call(String str, String str2, Bundle bundle) {
        IBinder iBinder;
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(BinderContainer.class.getClassLoader());
        Bundle bundle2 = new Bundle();
        str.getClass();
        boolean z2 = true;
        if (str.equals("sendBinder")) {
            IBinder iBinder2 = z.a.f2308a;
            if (iBinder2 != null && iBinder2.pingBinder()) {
                Log.d("ShizukuProvider", "sendBinder is called when already a living binder");
            } else {
                BinderContainer binderContainer = (BinderContainer) bundle.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
                if (binderContainer != null && (iBinder = binderContainer.f1231a) != null) {
                    Log.d("ShizukuProvider", "binder received");
                    z.a.d(iBinder, getContext().getPackageName());
                    if (f1431a) {
                        Log.d("ShizukuProvider", "broadcast binder");
                        getContext().sendBroadcast(new Intent("moe.shizuku.api.action.BINDER_RECEIVED").putExtra("moe.shizuku.privileged.api.intent.extra.BINDER", binderContainer).setPackage(getContext().getPackageName()));
                    }
                }
            }
        } else if (str.equals("getBinder")) {
            IBinder iBinder3 = z.a.f2308a;
            if (iBinder3 == null || !iBinder3.pingBinder()) {
                z2 = false;
            } else {
                bundle2.putParcelable("moe.shizuku.privileged.api.intent.extra.BINDER", new BinderContainer(iBinder3));
            }
            if (!z2) {
                return null;
            }
        }
        return bundle2;
    }

    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override
    public final String getType(Uri uri) {
        return null;
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override
    public final boolean onCreate() {
        if (c.f15g) {
            return true;
        }
        Log.d("ShizukuProvider", "Initialize Sui: " + c.F(getContext().getPackageName()));
        return true;
    }

    @Override
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
