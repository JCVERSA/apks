package com.transsion.transfer.impl.server.service;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.server.MalformedRangeException;
import com.transsion.transfer.androidasync.http.server.q;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.i;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;

public final class a implements q {

    public static final C0654a f53721c = new C0654a(null);

    private static final String f53722d = "Transfer-" + a.class.getName();

    private final com.transsion.transfer.impl.g f53723a;

    private i f53724b;

    public static final class C0654a {
        public C0654a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return a.f53722d;
        }

        private C0654a() {
        }
    }

    public static final class b implements st.e {

        final String f53726b;

        final String f53727c;

        final Ref.LongRef f53728d;

        final long f53729e;

        final Ref.LongRef f53730f;

        b(String str, String str2, Ref.LongRef longRef, long j10, Ref.LongRef longRef2) {
            this.f53726b = str;
            this.f53727c = str2;
            this.f53728d = longRef;
            this.f53729e = j10;
            this.f53730f = longRef2;
        }

        @Override
        public void a(long j10, long j11) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Ref.LongRef longRef = this.f53730f;
            if (jCurrentTimeMillis - longRef.element < 2000) {
                return;
            }
            longRef.element = System.currentTimeMillis();
            i iVar = a.this.f53724b;
            String str = this.f53726b;
            String str2 = this.f53727c;
            long j12 = this.f53728d.element;
            iVar.j(str, str2, j10 + j12, j11 + j12);
        }

        @Override
        public void b(Exception exc) {
            a.f53721c.a();
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("transfer file onComplete: ");
            sb2.append(message);
            i iVar = a.this.f53724b;
            String str = this.f53726b;
            String str2 = this.f53727c;
            TaskState taskState = exc == null ? TaskState.FINISH : TaskState.ERROR;
            long j10 = this.f53729e;
            iVar.L(str, str2, taskState, j10, j10);
        }
    }

    public a(com.transsion.transfer.impl.g fileHandler, i listener) {
        Intrinsics.h(fileHandler, "fileHandler");
        Intrinsics.h(listener, "listener");
        this.f53723a = fileHandler;
        this.f53724b = listener;
    }

    private final long d(com.transsion.transfer.androidasync.http.server.b bVar) {
        String strC;
        List listL;
        List listL2;
        Headers headers;
        if (bVar == null || (headers = bVar.getHeaders()) == null || (strC = headers.c("Range")) == null) {
            strC = "";
        }
        if (strC.length() <= 0) {
            return 0L;
        }
        List<String> listSplit = new Regex(UrlUtils.EQUAL_MARK).split(strC, 0);
        if (!listSplit.isEmpty()) {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listL = CollectionsKt.l();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listL = CollectionsKt.l();
            break;
        }
        String[] strArr = (String[]) listL.toArray(new String[0]);
        if (strArr.length != 2 || !Intrinsics.c("bytes", strArr[0])) {
            return 0L;
        }
        List<String> listSplit2 = new Regex("-").split(strArr[1], 0);
        if (!listSplit2.isEmpty()) {
            ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
            while (true) {
                if (!listIterator2.hasPrevious()) {
                    listL2 = CollectionsKt.l();
                    break;
                }
                if (listIterator2.previous().length() != 0) {
                    listL2 = CollectionsKt.K0(listSplit2, listIterator2.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listL2 = CollectionsKt.l();
            break;
        }
        String[] strArr2 = (String[]) listL2.toArray(new String[0]);
        try {
            if (strArr2.length > 2) {
                throw new MalformedRangeException();
            }
            if (TextUtils.isEmpty(strArr2[0])) {
                return 0L;
            }
            return Long.parseLong(strArr2[0]);
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override
    public void b(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        com.transsion.transfer.androidasync.http.server.d dVarC;
        Multimap multimapJ;
        String string;
        Ref.LongRef longRef = new Ref.LongRef();
        zt.c.a aVar = zt.c.f76890d;
        Triple tripleC = aVar.c(bVar != null ? bVar.getHeaders() : null);
        int iIntValue = ((Number) tripleC.getSecond()).intValue();
        String str = (String) tripleC.getThird();
        if (iIntValue < 1) {
            if (dVar != null) {
                dVar.send(aVar.a(-1, "protocol version compatible error", ""));
                return;
            }
            return;
        }
        String strA = (bVar == null || (multimapJ = bVar.j()) == null || (string = multimapJ.getString(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)) == null) ? null : au.a.a(string);
        File file = strA != null ? new File(strA) : null;
        long jD = d(bVar);
        long jLongValue = (file != null ? Long.valueOf(file.length()) : Integer.MAX_VALUE).longValue();
        Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = jD;
        if (file != null && file.exists()) {
            if (dVar != null) {
                dVar.q(file, new b(str, strA, longRef2, jLongValue, longRef));
                return;
            }
            return;
        }
        if (strA != null) {
            this.f53724b.L(str, strA, TaskState.NO_FILE, 0L, jLongValue);
        }
        String strA2 = aVar.a(-1, "File not found," + strA, "");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("createResponseJsonObj: ");
        sb2.append(strA2);
        if (dVar == null || (dVarC = dVar.c(TTAdConstant.DEEPLINK_FALLBACK_CODE)) == null) {
            return;
        }
        dVarC.send(strA2);
    }
}
