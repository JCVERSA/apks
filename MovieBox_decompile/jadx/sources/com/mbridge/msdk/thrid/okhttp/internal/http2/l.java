package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.io.IOException;
import java.util.List;

public interface l {

    public static final l f37384a = new a();

    static class a implements l {
        a() {
        }

        @Override
        public void a(int i10, b bVar) {
        }

        @Override
        public boolean a(int i10, List<c> list) {
            return true;
        }

        @Override
        public boolean a(int i10, List<c> list, boolean z10) {
            return true;
        }

        @Override
        public boolean a(int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11, boolean z10) throws IOException {
            eVar.skip(i11);
            return true;
        }
    }

    void a(int i10, b bVar);

    boolean a(int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11, boolean z10) throws IOException;

    boolean a(int i10, List<c> list);

    boolean a(int i10, List<c> list, boolean z10);
}
