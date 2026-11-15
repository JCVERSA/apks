package com.transsion.transfer.impl.client;

import com.transsion.transfer.androidasync.http.AsyncHttpClient;
import com.transsion.transfer.impl.entity.FileData;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class n {

    public static final a f53640i = new a(null);

    private final AsyncHttpClient f53641a;

    private final String f53642b;

    private final String f53643c;

    private final String f53644d;

    private final com.transsion.transfer.impl.f f53645e;

    private final List f53646f;

    private final List f53647g;

    private boolean f53648h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends AsyncHttpClient.g {

        final File f53650b;

        final File f53651c;

        final FileData f53652d;

        b(File file, File file2, FileData fileData) {
            this.f53650b = file;
            this.f53651c = file2;
            this.f53652d = fileData;
        }

        @Override
        public void a(com.transsion.transfer.androidasync.http.k kVar, long j10, long j11) {
            super.a(kVar, j10, j11);
        }

        @Override
        public void b(com.transsion.transfer.androidasync.http.k kVar) {
        }

        @Override
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, File file) {
            Boolean boolValueOf = file != null ? Boolean.valueOf(file.exists()) : null;
            Long lValueOf = file != null ? Long.valueOf(file.length()) : null;
            String message = exc != null ? exc.getMessage() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCompleted: exist:");
            sb2.append(boolValueOf);
            sb2.append(" , length:");
            sb2.append(lValueOf);
            sb2.append(" , e:");
            sb2.append(message);
            n.this.f53648h = false;
            if (exc == null) {
                this.f53650b.renameTo(this.f53651c);
                n.this.f53645e.q(this.f53652d.getFileRemotePath());
            }
            n.this.f53647g.remove(this.f53652d);
            n.this.f();
        }
    }

    public n(AsyncHttpClient httpClient, String clientIp, String transferId, String urlPath, com.transsion.transfer.impl.f listener) {
        Intrinsics.h(httpClient, "httpClient");
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(transferId, "transferId");
        Intrinsics.h(urlPath, "urlPath");
        Intrinsics.h(listener, "listener");
        this.f53641a = httpClient;
        this.f53642b = clientIp;
        this.f53643c = transferId;
        this.f53644d = urlPath;
        this.f53645e = listener;
        this.f53646f = new ArrayList();
        this.f53647g = new ArrayList();
    }

    public final void f() {
        Object objM453constructorimpl;
        if (this.f53647g.isEmpty() && !this.f53646f.isEmpty()) {
            this.f53647g.add(this.f53646f.remove(0));
        }
        if (this.f53647g.isEmpty() || this.f53648h) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            g((FileData) this.f53647g.get(0));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m452boximpl(objM453constructorimpl);
    }

    private final void g(FileData fileData) throws UnsupportedEncodingException {
        File tempCoverFile = fileData.getTempCoverFile();
        File coverFile = fileData.getCoverFile();
        if (!StringsKt.W(fileData.getCoverUrl(), "/", false, 2, null) || coverFile.exists()) {
            this.f53645e.q(fileData.getFileRemotePath());
            this.f53647g.remove(fileData);
            f();
            return;
        }
        this.f53648h = true;
        String coverUrl = fileData.getCoverUrl();
        String absolutePath = tempCoverFile.getAbsolutePath();
        this.f53641a.t(TransferClient.f53593t.c(this.f53644d + "/client/fetchFile?file=" + au.a.b(coverUrl), this.f53642b, this.f53643c), absolutePath, new b(tempCoverFile, coverFile, fileData));
    }

    public final synchronized void e(List files) {
        Intrinsics.h(files, "files");
        this.f53646f.addAll(files);
        f();
    }
}
