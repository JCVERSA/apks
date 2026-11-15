package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.List;
import okio.BufferedSource;

public interface PushObserver {
    public static final PushObserver CANCEL = new a();

    static class a implements PushObserver {
        a() {
        }

        @Override
        public boolean onData(int i10, BufferedSource bufferedSource, int i11, boolean z10) throws IOException {
            bufferedSource.skip(i11);
            return true;
        }

        @Override
        public boolean onHeaders(int i10, List list, boolean z10) {
            return true;
        }

        @Override
        public boolean onRequest(int i10, List list) {
            return true;
        }

        @Override
        public void onReset(int i10, ErrorCode errorCode) {
        }
    }

    boolean onData(int i10, BufferedSource bufferedSource, int i11, boolean z10) throws IOException;

    boolean onHeaders(int i10, List<b> list, boolean z10);

    boolean onRequest(int i10, List<b> list);

    void onReset(int i10, ErrorCode errorCode);
}
