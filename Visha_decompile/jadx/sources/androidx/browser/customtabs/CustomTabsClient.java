package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.just.agentweb.DefaultWebClient;
import java.util.ArrayList;
import java.util.List;

public class CustomTabsClient {
    private static final String TAG = "CustomTabsClient";
    private final Context mApplicationContext;
    private final ICustomTabsService mService;
    private final ComponentName mServiceComponentName;

    public CustomTabsClient(ICustomTabsService iCustomTabsService, ComponentName componentName, Context context) {
        this.mService = iCustomTabsService;
        this.mServiceComponentName = componentName;
        this.mApplicationContext = context;
    }

    public static boolean bindCustomTabsService(@NonNull Context context, @Nullable String str, @NonNull CustomTabsServiceConnection customTabsServiceConnection) {
        customTabsServiceConnection.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, customTabsServiceConnection, 33);
    }

    public static boolean bindCustomTabsServicePreservePriority(@NonNull Context context, @Nullable String str, @NonNull CustomTabsServiceConnection customTabsServiceConnection) {
        customTabsServiceConnection.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, customTabsServiceConnection, 1);
    }

    public static boolean connectAndInitialize(@NonNull Context context, @NonNull String str) {
        if (str == null) {
            return false;
        }
        final Context applicationContext = context.getApplicationContext();
        try {
            return bindCustomTabsService(applicationContext, str, new CustomTabsServiceConnection() {
                @Override
                public final void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient) {
                    customTabsClient.warmup(0L);
                    applicationContext.unbindService(this);
                }

                @Override
                public void onServiceDisconnected(ComponentName componentName) {
                }
            });
        } catch (SecurityException unused) {
            return false;
        }
    }

    private ICustomTabsCallback.Stub createCallbackWrapper(@Nullable final CustomTabsCallback customTabsCallback) {
        return new ICustomTabsCallback.Stub() {
            private Handler mHandler = new Handler(Looper.getMainLooper());

            @Override
            public void extraCallback(final String str, final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.extraCallback(str, bundle);
                    }
                });
            }

            @Override
            public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) throws RemoteException {
                CustomTabsCallback customTabsCallback2 = customTabsCallback;
                if (customTabsCallback2 == null) {
                    return null;
                }
                return customTabsCallback2.extraCallbackWithResult(str, bundle);
            }

            @Override
            public void onActivityLayout(final int i, final int i2, final int i3, final int i4, final int i5, @NonNull final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onActivityLayout(i, i2, i3, i4, i5, bundle);
                    }
                });
            }

            @Override
            public void onActivityResized(final int i, final int i2, @Nullable final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onActivityResized(i, i2, bundle);
                    }
                });
            }

            @Override
            public void onMessageChannelReady(final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onMessageChannelReady(bundle);
                    }
                });
            }

            @Override
            public void onMinimized(@NonNull final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onMinimized(bundle);
                    }
                });
            }

            @Override
            public void onNavigationEvent(final int i, final Bundle bundle) {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onNavigationEvent(i, bundle);
                    }
                });
            }

            @Override
            public void onPostMessage(final String str, final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onPostMessage(str, bundle);
                    }
                });
            }

            @Override
            public void onRelationshipValidationResult(final int i, final Uri uri, final boolean z, @Nullable final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onRelationshipValidationResult(i, uri, z, bundle);
                    }
                });
            }

            @Override
            public void onUnminimized(@NonNull final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onUnminimized(bundle);
                    }
                });
            }

            @Override
            public void onWarmupCompleted(@NonNull final Bundle bundle) throws RemoteException {
                if (customTabsCallback == null) {
                    return;
                }
                this.mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        customTabsCallback.onWarmupCompleted(bundle);
                    }
                });
            }
        };
    }

    private static PendingIntent createSessionId(Context context, int i) {
        return PendingIntent.getActivity(context, i, new Intent(), 67108864);
    }

    @Nullable
    public static String getPackageName(@NonNull Context context, @Nullable List<String> list) {
        return getPackageName(context, list, false);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static CustomTabsSession.PendingSession newPendingSession(@NonNull Context context, @Nullable CustomTabsCallback customTabsCallback, int i) {
        return new CustomTabsSession.PendingSession(customTabsCallback, createSessionId(context, i));
    }

    @Nullable
    private CustomTabsSession newSessionInternal(@Nullable CustomTabsCallback customTabsCallback, @Nullable PendingIntent pendingIntent) {
        boolean zNewSession;
        ICustomTabsCallback.Stub stubCreateCallbackWrapper = createCallbackWrapper(customTabsCallback);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(CustomTabsIntent.EXTRA_SESSION_ID, pendingIntent);
                zNewSession = this.mService.newSessionWithExtras(stubCreateCallbackWrapper, bundle);
            } else {
                zNewSession = this.mService.newSession(stubCreateCallbackWrapper);
            }
            if (zNewSession) {
                return new CustomTabsSession(this.mService, stubCreateCallbackWrapper, this.mServiceComponentName, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public CustomTabsSession attachSession(@NonNull CustomTabsSession.PendingSession pendingSession) {
        return newSessionInternal(pendingSession.getCallback(), pendingSession.getId());
    }

    @Nullable
    public Bundle extraCommand(@NonNull String str, @Nullable Bundle bundle) {
        try {
            return this.mService.extraCommand(str, bundle);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Nullable
    public CustomTabsSession newSession(@Nullable CustomTabsCallback customTabsCallback) {
        return newSessionInternal(customTabsCallback, null);
    }

    public boolean warmup(long j) {
        try {
            return this.mService.warmup(j);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Nullable
    public static String getPackageName(@NonNull Context context, @Nullable List<String> list, boolean z) {
        ResolveInfo resolveInfoResolveActivity;
        PackageManager packageManager = context.getPackageManager();
        List<String> arrayList = list == null ? new ArrayList<>() : list;
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(DefaultWebClient.HTTP_SCHEME));
        if (!z && (resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0)) != null) {
            String str = resolveInfoResolveActivity.activityInfo.packageName;
            ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
            arrayList2.add(str);
            if (list != null) {
                arrayList2.addAll(list);
            }
            arrayList = arrayList2;
        }
        Intent intent2 = new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
        for (String str2 : arrayList) {
            intent2.setPackage(str2);
            if (packageManager.resolveService(intent2, 0) != null) {
                return str2;
            }
        }
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        Log.w(TAG, "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName.");
        return null;
    }

    @Nullable
    public CustomTabsSession newSession(@Nullable CustomTabsCallback customTabsCallback, int i) {
        return newSessionInternal(customTabsCallback, createSessionId(this.mApplicationContext, i));
    }
}
