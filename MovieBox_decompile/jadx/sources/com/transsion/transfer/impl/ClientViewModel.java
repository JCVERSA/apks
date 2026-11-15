package com.transsion.transfer.impl;

import android.app.Application;
import android.os.Environment;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.impl.entity.FileData;
import java.io.File;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class ClientViewModel extends androidx.p009lifecycle.b {

    private final Application f53531b;

    private final androidx.p009lifecycle.b0 f53532c;

    private final au.b f53533d;

    private final au.b f53534e;

    private final au.b f53535f;

    private final au.b f53536g;

    private String f53537h;

    private final a f53538i;

    private final b f53539j;

    public static final class a implements Function3 {
        a() {
        }

        public void a(String str, boolean z10, String str2) {
            ClientViewModel.this.f53537h = str;
            ClientViewModel.this.f53532c.n(Boolean.valueOf(z10));
            if (z10) {
                return;
            }
            cu.b.f58655a.j(str2, TransferClient.f53593t.k());
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            a((String) obj, ((Boolean) obj2).booleanValue(), (String) obj3);
            return Unit.f64096a;
        }
    }

    public static final class b implements f {
        b() {
        }

        @Override
        public void C(String remoteFilePath, long j10, long j11) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            ClientViewModel.this.f53535f.n(new Pair(remoteFilePath, new Triple(TaskState.TRANSFERRING, Long.valueOf(j10), Long.valueOf(j11))));
        }

        @Override
        public void J(String remoteFilePath, TaskState state, long j10, long j11, long j12, String str) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            Intrinsics.h(state, "state");
            if (state == TaskState.CONNECTING) {
                cu.b.f58655a.h(remoteFilePath, j11, TransferClient.f53593t.k());
            } else if (state == TaskState.FINISH) {
                cu.b.f58655a.g(remoteFilePath, true, null, j11, j12, TransferClient.f53593t.k());
            } else if (state == TaskState.ERROR || state == TaskState.NO_FILE) {
                cu.b.f58655a.g(remoteFilePath, false, "file no found", j10, j12, TransferClient.f53593t.k());
            }
            ClientViewModel.this.f53535f.n(new Pair(remoteFilePath, new Triple(state, Long.valueOf(j10), Long.valueOf(j11))));
        }

        @Override
        public void N() {
            ClientViewModel.this.f53532c.n(Boolean.FALSE);
            cu.b.f58655a.j("normal", TransferClient.f53593t.k());
        }

        @Override
        public void l(int i10) {
            ClientViewModel.this.f53534e.n(Integer.valueOf(i10));
        }

        @Override
        public void q(String remoteFilePath) {
            Intrinsics.h(remoteFilePath, "remoteFilePath");
            ClientViewModel.this.f53535f.n(new Pair(remoteFilePath, null));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f53531b = application;
        this.f53532c = new androidx.p009lifecycle.b0();
        this.f53533d = new au.b();
        this.f53534e = new au.b();
        this.f53535f = new au.b();
        this.f53536g = new au.b();
        this.f53538i = new a();
        this.f53539j = new b();
    }

    public static final Unit A(Function1 function1, Exception exc) {
        String message = exc != null ? exc.getMessage() : null;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendServerCreateNotify:  ");
        sb2.append(message);
        function1.invoke(Boolean.valueOf(exc == null));
        return Unit.f64096a;
    }

    public static final Unit D(List it) {
        Intrinsics.h(it, "it");
        cu.b.f58655a.m(it.size(), TransferClient.f53593t.k());
        return Unit.f64096a;
    }

    public static final Unit l(ClientViewModel clientViewModel, Function2 function2, boolean z10, String error) {
        Intrinsics.h(error, "error");
        clientViewModel.f53532c.n(Boolean.valueOf(z10));
        kotlinx.coroutines.k.d(u0.a(clientViewModel), y0.c(), null, new ClientViewModel$connect$2$1(function2, z10, error, null), 2, null);
        return Unit.f64096a;
    }

    private final File m() {
        return new File(Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), "transfer");
    }

    public static final Unit t(ClientViewModel clientViewModel, List list, Exception exc) {
        if (exc == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getTransferList: ");
            sb2.append(list);
            clientViewModel.f53533d.n(list);
        } else {
            exc.printStackTrace();
            String message = exc.getMessage();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getTransferList error: ");
            sb3.append(message);
            sb3.append(" ");
        }
        return Unit.f64096a;
    }

    public final void B(Function0 callback) {
        Intrinsics.h(callback, "callback");
        TransferClient.a aVar = TransferClient.f53593t;
        if (!aVar.g()) {
            callback.invoke();
            return;
        }
        e eVarI = aVar.i();
        eVarI.k(this.f53539j);
        eVarI.b(this.f53538i);
        eVarI.c(callback);
    }

    public final void C(List files) {
        Intrinsics.h(files, "files");
        if (files.isEmpty()) {
            return;
        }
        TransferClient.a aVar = TransferClient.f53593t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.k(this.f53539j);
            eVarI.b(this.f53538i);
            String absolutePath = m().getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            eVarI.i(absolutePath, files, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ClientViewModel.D((List) obj);
                }
            });
        }
    }

    public final void k(final Function2 function2) {
        TransferClient.a aVar = TransferClient.f53593t;
        if (!aVar.g()) {
            if (function2 != null) {
                function2.invoke(Boolean.FALSE, "no connect info");
            }
        } else {
            e eVarI = aVar.i();
            eVarI.k(this.f53539j);
            eVarI.b(this.f53538i);
            eVarI.d(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return ClientViewModel.l(this.f53590a, function2, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
    }

    public final LiveData n() {
        return this.f53534e;
    }

    public final LiveData o() {
        return this.f53532c;
    }

    @Override
    protected void onCleared() {
        super.onCleared();
        TransferClient.a aVar = TransferClient.f53593t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.g(this.f53539j);
            eVarI.b(null);
        }
    }

    public final String p() {
        TransferClient.a aVar = TransferClient.f53593t;
        if (!aVar.g()) {
            return "";
        }
        e eVarI = aVar.i();
        eVarI.k(this.f53539j);
        eVarI.b(this.f53538i);
        String strJ = eVarI.j();
        if (strJ != null) {
            this.f53537h = strJ;
        }
        return strJ;
    }

    public final LiveData q() {
        return this.f53536g;
    }

    public final int r() {
        return eu.a.f59815a.e().size();
    }

    public final void s(boolean z10) {
        eu.a aVar = eu.a.f59815a;
        if (!aVar.h() && !z10) {
            this.f53533d.n(aVar.d());
            return;
        }
        TransferClient.a aVar2 = TransferClient.f53593t;
        if (aVar2.g()) {
            cu.b.f58655a.i(aVar2.k());
            e eVarI = aVar2.i();
            eVarI.k(this.f53539j);
            eVarI.b(this.f53538i);
            String absolutePath = m().getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            eVarI.e(absolutePath, new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return ClientViewModel.t(this.f53588a, (List) obj, (Exception) obj2);
                }
            });
        }
    }

    public final LiveData u() {
        return this.f53533d;
    }

    public final LiveData v() {
        return this.f53535f;
    }

    public final int w() {
        eu.a aVar = eu.a.f59815a;
        return aVar.f().size() + aVar.g().size();
    }

    public final boolean x() {
        TransferClient.a aVar = TransferClient.f53593t;
        if (!aVar.g()) {
            return false;
        }
        e eVarI = aVar.i();
        eVarI.k(this.f53539j);
        eVarI.b(this.f53538i);
        return eVarI.h();
    }

    public final void y(FileData fileData) {
        Intrinsics.h(fileData, "fileData");
        TransferClient.a aVar = TransferClient.f53593t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.k(this.f53539j);
            eVarI.b(this.f53538i);
            eVarI.f(fileData);
        }
    }

    public final void z(final Function1 callback) {
        Intrinsics.h(callback, "callback");
        TransferClient.a aVar = TransferClient.f53593t;
        if (aVar.g()) {
            e eVarI = aVar.i();
            eVarI.k(this.f53539j);
            eVarI.b(this.f53538i);
            eVarI.a(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ClientViewModel.A(callback, (Exception) obj);
                }
            });
        }
    }
}
