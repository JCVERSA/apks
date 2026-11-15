package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

final class u implements Closeable {

    public static final Charset f25830g = com.google.common.base.c.f29403c;

    private final d f25831a;

    private final Loader f25832b = new Loader("ExoPlayer:RtspMessageChannel:ReceiverLoader");

    private final Map f25833c = Collections.synchronizedMap(new HashMap());

    private g f25834d;

    private Socket f25835e;

    private volatile boolean f25836f;

    public interface b {
        void f(byte[] bArr);
    }

    public interface d {
        void a(Exception exc);

        void b(List list, Exception exc);

        void c(List list);
    }

    private static final class e {

        private final List f25838a = new ArrayList();

        private int f25839b = 1;

        private long f25840c;

        private ImmutableList a(byte[] bArr) {
            com.google.android.exoplayer2.util.a.g(this.f25839b == 3);
            if (bArr.length <= 0 || bArr[bArr.length - 1] != 10) {
                throw new IllegalArgumentException("Message body is empty or does not end with a LF.");
            }
            this.f25838a.add((bArr.length <= 1 || bArr[bArr.length + (-2)] != 13) ? new String(bArr, 0, bArr.length - 1, u.f25830g) : new String(bArr, 0, bArr.length - 2, u.f25830g));
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f25838a);
            e();
            return immutableListCopyOf;
        }

        private ImmutableList b(byte[] bArr) {
            com.google.android.exoplayer2.util.a.a(bArr.length >= 2 && bArr[bArr.length - 2] == 13 && bArr[bArr.length - 1] == 10);
            String str = new String(bArr, 0, bArr.length - 2, u.f25830g);
            this.f25838a.add(str);
            int i10 = this.f25839b;
            if (i10 == 1) {
                if (!y.f(str)) {
                    return null;
                }
                this.f25839b = 2;
                return null;
            }
            if (i10 != 2) {
                throw new IllegalStateException();
            }
            long jG = y.g(str);
            if (jG != -1) {
                this.f25840c = jG;
            }
            if (!str.isEmpty()) {
                return null;
            }
            if (this.f25840c > 0) {
                this.f25839b = 3;
                return null;
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f25838a);
            e();
            return immutableListCopyOf;
        }

        private static byte[] d(byte b10, DataInputStream dataInputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = {b10, dataInputStream.readByte()};
            byteArrayOutputStream.write(bArr);
            while (true) {
                if (bArr[0] == 13 && bArr[1] == 10) {
                    return byteArrayOutputStream.toByteArray();
                }
                bArr[0] = bArr[1];
                byte b11 = dataInputStream.readByte();
                bArr[1] = b11;
                byteArrayOutputStream.write(b11);
            }
        }

        private void e() {
            this.f25838a.clear();
            this.f25839b = 1;
            this.f25840c = 0L;
        }

        public ImmutableList c(byte b10, DataInputStream dataInputStream) throws IOException {
            ImmutableList immutableListB = b(d(b10, dataInputStream));
            while (immutableListB == null) {
                if (this.f25839b == 3) {
                    long j10 = this.f25840c;
                    if (j10 <= 0) {
                        throw new IllegalStateException("Expects a greater than zero Content-Length.");
                    }
                    int iD = Ints.d(j10);
                    com.google.android.exoplayer2.util.a.g(iD != -1);
                    byte[] bArr = new byte[iD];
                    dataInputStream.readFully(bArr, 0, iD);
                    immutableListB = a(bArr);
                } else {
                    immutableListB = b(d(dataInputStream.readByte(), dataInputStream));
                }
            }
            return immutableListB;
        }
    }

    private final class f implements Loader.d {

        private final DataInputStream f25841a;

        private final e f25842b = new e();

        private volatile boolean f25843c;

        public f(InputStream inputStream) {
            this.f25841a = new DataInputStream(inputStream);
        }

        private void a() throws IOException {
            int unsignedByte = this.f25841a.readUnsignedByte();
            int unsignedShort = this.f25841a.readUnsignedShort();
            byte[] bArr = new byte[unsignedShort];
            this.f25841a.readFully(bArr, 0, unsignedShort);
            b bVar = (b) u.this.f25833c.get(Integer.valueOf(unsignedByte));
            if (bVar == null || u.this.f25836f) {
                return;
            }
            bVar.f(bArr);
        }

        private void b(byte b10) {
            if (u.this.f25836f) {
                return;
            }
            u.this.f25831a.c(this.f25842b.c(b10, this.f25841a));
        }

        @Override
        public void cancelLoad() {
            this.f25843c = true;
        }

        @Override
        public void load() throws IOException {
            while (!this.f25843c) {
                byte b10 = this.f25841a.readByte();
                if (b10 == 36) {
                    a();
                } else {
                    b(b10);
                }
            }
        }
    }

    final class g implements Closeable {

        private final OutputStream f25845a;

        private final HandlerThread f25846b;

        private final Handler f25847c;

        public g(OutputStream outputStream) {
            this.f25845a = outputStream;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:RtspMessageChannel:Sender");
            this.f25846b = handlerThread;
            handlerThread.start();
            this.f25847c = new Handler(handlerThread.getLooper());
        }

        public void d(byte[] bArr, List list) {
            try {
                this.f25845a.write(bArr);
            } catch (Exception e10) {
                if (u.this.f25836f) {
                    return;
                }
                u.this.f25831a.b(list, e10);
            }
        }

        @Override
        public void close() {
            Handler handler = this.f25847c;
            final HandlerThread handlerThread = this.f25846b;
            Objects.requireNonNull(handlerThread);
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    handlerThread.quit();
                }
            });
            try {
                this.f25846b.join();
            } catch (InterruptedException unused) {
                this.f25846b.interrupt();
            }
        }

        public void f(final List list) {
            final byte[] bArrB = y.b(list);
            this.f25847c.post(new Runnable() {
                @Override
                public final void run() {
                    this.f25849a.d(bArrB, list);
                }
            });
        }
    }

    public u(d dVar) {
        this.f25831a = dVar;
    }

    @Override
    public void close() {
        if (this.f25836f) {
            return;
        }
        try {
            g gVar = this.f25834d;
            if (gVar != null) {
                gVar.close();
            }
            this.f25832b.k();
            Socket socket = this.f25835e;
            if (socket != null) {
                socket.close();
            }
        } finally {
            this.f25836f = true;
        }
    }

    public void h(Socket socket) {
        this.f25835e = socket;
        this.f25834d = new g(socket.getOutputStream());
        this.f25832b.m(new f(socket.getInputStream()), new c(), 0);
    }

    public void j(int i10, b bVar) {
        this.f25833c.put(Integer.valueOf(i10), bVar);
    }

    public void k(List list) {
        com.google.android.exoplayer2.util.a.i(this.f25834d);
        this.f25834d.f(list);
    }

    private final class c implements Loader.b {
        private c() {
        }

        @Override
        public Loader.c n(f fVar, long j10, long j11, IOException iOException, int i10) {
            if (!u.this.f25836f) {
                u.this.f25831a.a(iOException);
            }
            return Loader.f26474f;
        }

        @Override
        public void l(f fVar, long j10, long j11) {
        }

        @Override
        public void j(f fVar, long j10, long j11, boolean z10) {
        }
    }
}
