package r1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class a {

    private static final Object f70381f = new Object();

    private static a f70382g;

    private final Context f70383a;

    private final HashMap f70384b = new HashMap();

    private final HashMap f70385c = new HashMap();

    private final ArrayList f70386d = new ArrayList();

    private final Handler f70387e;

    class HandlerC0867a extends Handler {
        HandlerC0867a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    private static final class b {

        final Intent f70389a;

        final ArrayList f70390b;

        b(Intent intent, ArrayList arrayList) {
            this.f70389a = intent;
            this.f70390b = arrayList;
        }
    }

    private static final class c {

        final IntentFilter f70391a;

        final BroadcastReceiver f70392b;

        boolean f70393c;

        boolean f70394d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f70391a = intentFilter;
            this.f70392b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.f70392b);
            sb2.append(" filter=");
            sb2.append(this.f70391a);
            if (this.f70394d) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    private a(Context context) {
        this.f70383a = context;
        this.f70387e = new HandlerC0867a(context.getMainLooper());
    }

    public static a b(Context context) {
        a aVar;
        synchronized (f70381f) {
            try {
                if (f70382g == null) {
                    f70382g = new a(context.getApplicationContext());
                }
                aVar = f70382g;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f70384b) {
                try {
                    size = this.f70386d.size();
                    if (size <= 0) {
                        return;
                    }
                    bVarArr = new b[size];
                    this.f70386d.toArray(bVarArr);
                    this.f70386d.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = bVarArr[i10];
                int size2 = bVar.f70390b.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c cVar = (c) bVar.f70390b.get(i11);
                    if (!cVar.f70394d) {
                        cVar.f70392b.onReceive(this.f70383a, bVar.f70389a);
                    }
                }
            }
        }
    }

    public void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f70384b) {
            try {
                c cVar = new c(intentFilter, broadcastReceiver);
                ArrayList arrayList = (ArrayList) this.f70384b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f70384b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(cVar);
                for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                    String action = intentFilter.getAction(i10);
                    ArrayList arrayList2 = (ArrayList) this.f70385c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f70385c.put(action, arrayList2);
                    }
                    arrayList2.add(cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean d(Intent intent) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        String str3;
        synchronized (this.f70384b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f70383a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z10 = (intent.getFlags() & 8) != 0;
                if (z10) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList3 = (ArrayList) this.f70385c.get(intent.getAction());
                if (arrayList3 != null) {
                    if (z10) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                    }
                    ArrayList arrayList4 = null;
                    int i11 = 0;
                    while (i11 < arrayList3.size()) {
                        c cVar = (c) arrayList3.get(i11);
                        if (z10) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f70391a);
                        }
                        if (cVar.f70393c) {
                            if (z10) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            i10 = i11;
                            arrayList2 = arrayList3;
                            str = action;
                            str2 = strResolveTypeIfNeeded;
                            arrayList = arrayList4;
                        } else {
                            i10 = i11;
                            str = action;
                            arrayList = arrayList4;
                            arrayList2 = arrayList3;
                            str2 = strResolveTypeIfNeeded;
                            int iMatch = cVar.f70391a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z10) {
                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                                }
                                arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                                arrayList4.add(cVar);
                                cVar.f70393c = true;
                            } else if (z10) {
                                if (iMatch == -4) {
                                    str3 = "category";
                                } else if (iMatch == -3) {
                                    str3 = EventConstants.KEY_ACTION;
                                } else if (iMatch != -2) {
                                    str3 = iMatch != -1 ? "unknown reason" : NativeComponentConstants.KEY_COMPONENT_TYPE;
                                } else {
                                    str3 = "data";
                                }
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str3);
                            }
                            i11 = i10 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            strResolveTypeIfNeeded = str2;
                        }
                        arrayList4 = arrayList;
                        i11 = i10 + 1;
                        action = str;
                        arrayList3 = arrayList2;
                        strResolveTypeIfNeeded = str2;
                    }
                    ArrayList arrayList5 = arrayList4;
                    if (arrayList5 != null) {
                        for (int i12 = 0; i12 < arrayList5.size(); i12++) {
                            ((c) arrayList5.get(i12)).f70393c = false;
                        }
                        this.f70386d.add(new b(intent, arrayList5));
                        if (!this.f70387e.hasMessages(1)) {
                            this.f70387e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f70384b) {
            try {
                ArrayList arrayList = (ArrayList) this.f70384b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    c cVar = (c) arrayList.get(size);
                    cVar.f70394d = true;
                    for (int i10 = 0; i10 < cVar.f70391a.countActions(); i10++) {
                        String action = cVar.f70391a.getAction(i10);
                        ArrayList arrayList2 = (ArrayList) this.f70385c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                c cVar2 = (c) arrayList2.get(size2);
                                if (cVar2.f70392b == broadcastReceiver) {
                                    cVar2.f70394d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.f70385c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
