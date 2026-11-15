package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR&\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00120\u00118\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0015R \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\n\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001d¨\u0006\u001f"}, d2 = {"Landroidx/room/MultiInstanceInvalidationService;", "Landroid/app/Service;", "<init>", "()V", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "a", "I", "c", "()I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(I)V", "maxClientId", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Map;", "()Ljava/util/Map;", "clientNames", "Landroid/os/RemoteCallbackList;", "Landroidx/room/i;", "Landroid/os/RemoteCallbackList;", "()Landroid/os/RemoteCallbackList;", "callbackList", "Landroidx/room/j$a;", "Landroidx/room/j$a;", "binder", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MultiInstanceInvalidationService extends Service {

    private int maxClientId;

    private final Map clientNames = new LinkedHashMap();

    private final RemoteCallbackList callbackList = new b();

    private final j.a binder = new a();

    public static final class a extends j.a {
        a() {
        }

        @Override
        public void V0(i callback, int i10) {
            Intrinsics.h(callback, "callback");
            RemoteCallbackList callbackList = MultiInstanceInvalidationService.this.getCallbackList();
            MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
            synchronized (callbackList) {
                multiInstanceInvalidationService.getCallbackList().unregister(callback);
            }
        }

        @Override
        public void Z(int i10, String[] tables) {
            Intrinsics.h(tables, "tables");
            RemoteCallbackList callbackList = MultiInstanceInvalidationService.this.getCallbackList();
            MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
            synchronized (callbackList) {
                try {
                    String str = (String) multiInstanceInvalidationService.getClientNames().get(Integer.valueOf(i10));
                    if (str == null) {
                        Log.w("ROOM", "Remote invalidation client ID not registered");
                        return;
                    }
                    int iBeginBroadcast = multiInstanceInvalidationService.getCallbackList().beginBroadcast();
                    for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                        try {
                            Object broadcastCookie = multiInstanceInvalidationService.getCallbackList().getBroadcastCookie(i11);
                            Intrinsics.f(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                            Integer num = (Integer) broadcastCookie;
                            int iIntValue = num.intValue();
                            String str2 = (String) multiInstanceInvalidationService.getClientNames().get(num);
                            if (i10 != iIntValue && Intrinsics.c(str, str2)) {
                                try {
                                    ((i) multiInstanceInvalidationService.getCallbackList().getBroadcastItem(i11)).o(tables);
                                    Unit unit = Unit.f64096a;
                                } catch (RemoteException e10) {
                                    Log.w("ROOM", "Error invoking a remote callback", e10);
                                }
                            }
                        } catch (Throwable th2) {
                            multiInstanceInvalidationService.getCallbackList().finishBroadcast();
                            throw th2;
                        }
                    }
                    multiInstanceInvalidationService.getCallbackList().finishBroadcast();
                    Unit unit2 = Unit.f64096a;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        @Override
        public int r0(i callback, String str) {
            Intrinsics.h(callback, "callback");
            int i10 = 0;
            if (str == null) {
                return 0;
            }
            RemoteCallbackList callbackList = MultiInstanceInvalidationService.this.getCallbackList();
            MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
            synchronized (callbackList) {
                try {
                    multiInstanceInvalidationService.d(multiInstanceInvalidationService.getMaxClientId() + 1);
                    int maxClientId = multiInstanceInvalidationService.getMaxClientId();
                    if (multiInstanceInvalidationService.getCallbackList().register(callback, Integer.valueOf(maxClientId))) {
                        multiInstanceInvalidationService.getClientNames().put(Integer.valueOf(maxClientId), str);
                        i10 = maxClientId;
                    } else {
                        multiInstanceInvalidationService.d(multiInstanceInvalidationService.getMaxClientId() - 1);
                        multiInstanceInvalidationService.getMaxClientId();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return i10;
        }
    }

    public static final class b extends RemoteCallbackList {
        b() {
        }

        @Override
        public void onCallbackDied(i callback, Object cookie) {
            Intrinsics.h(callback, "callback");
            Intrinsics.h(cookie, "cookie");
            MultiInstanceInvalidationService.this.getClientNames().remove((Integer) cookie);
        }
    }

    public final RemoteCallbackList getCallbackList() {
        return this.callbackList;
    }

    public final Map getClientNames() {
        return this.clientNames;
    }

    public final int getMaxClientId() {
        return this.maxClientId;
    }

    public final void d(int i10) {
        this.maxClientId = i10;
    }

    @Override
    public IBinder onBind(Intent intent) {
        Intrinsics.h(intent, "intent");
        return this.binder;
    }
}
