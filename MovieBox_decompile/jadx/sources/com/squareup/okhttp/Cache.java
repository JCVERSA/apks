package com.squareup.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.b;
import com.squareup.okhttp.internal.http.h;
import com.squareup.okhttp.internal.http.m;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

public final class Cache {
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    final InternalCache internalCache;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    private final class CacheRequestImpl implements CacheRequest {
        private Sink body;
        private Sink cacheOut;
        private boolean done;
        private final DiskLruCache.d editor;

        public CacheRequestImpl(final DiskLruCache.d dVar) throws IOException {
            this.editor = dVar;
            Sink sinkF = dVar.f(1);
            this.cacheOut = sinkF;
            this.body = new ForwardingSink(sinkF) {
                @Override
                public void close() throws IOException {
                    synchronized (Cache.this) {
                        try {
                            if (CacheRequestImpl.this.done) {
                                return;
                            }
                            CacheRequestImpl.this.done = true;
                            Cache.access$808(Cache.this);
                            super.close();
                            dVar.e();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            };
        }

        @Override
        public void abort() {
            synchronized (Cache.this) {
                try {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    Cache.access$908(Cache.this);
                    g.c(this.cacheOut);
                    try {
                        this.editor.a();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public Sink body() {
            return this.body;
        }
    }

    private static class CacheResponseBody extends ResponseBody {
        private final BufferedSource bodySource;
        private final String contentLength;
        private final String contentType;
        private final DiskLruCache.f snapshot;

        public CacheResponseBody(final DiskLruCache.f fVar, String str, String str2) {
            this.snapshot = fVar;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = Okio.buffer(new ForwardingSource(fVar.f(1)) {
                @Override
                public void close() throws IOException {
                    fVar.close();
                    super.close();
                }
            });
        }

        @Override
        public long contentLength() {
            try {
                String str = this.contentLength;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override
        public MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.parse(str);
            }
            return null;
        }

        @Override
        public BufferedSource source() {
            return this.bodySource;
        }
    }

    public Cache(File file, long j10) {
        this(file, j10, FileSystem.SYSTEM);
    }

    private void abortQuietly(DiskLruCache.d dVar) {
        if (dVar != null) {
            try {
                dVar.a();
            } catch (IOException unused) {
            }
        }
    }

    static int access$808(Cache cache) {
        int i10 = cache.writeSuccessCount;
        cache.writeSuccessCount = i10 + 1;
        return i10;
    }

    static int access$908(Cache cache) {
        int i10 = cache.writeAbortCount;
        cache.writeAbortCount = i10 + 1;
        return i10;
    }

    public CacheRequest put(Response response) throws IOException {
        DiskLruCache.d dVarY;
        String strMethod = response.request().method();
        if (h.a(response.request().method())) {
            try {
                remove(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!strMethod.equals("GET") || OkHeaders.g(response)) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            dVarY = this.cache.y(urlToKey(response.request()));
            if (dVarY == null) {
                return null;
            }
            try {
                entry.writeTo(dVarY);
                return new CacheRequestImpl(dVarY);
            } catch (IOException unused2) {
                abortQuietly(dVarY);
                return null;
            }
        } catch (IOException unused3) {
            dVarY = null;
        }
    }

    public static int readInt(BufferedSource bufferedSource) throws IOException {
        try {
            long decimalLong = bufferedSource.readDecimalLong();
            String utf8LineStrict = bufferedSource.readUtf8LineStrict();
            if (decimalLong >= 0 && decimalLong <= 2147483647L && utf8LineStrict.isEmpty()) {
                return (int) decimalLong;
            }
            throw new IOException("expected an int but was \"" + decimalLong + utf8LineStrict + "\"");
        } catch (NumberFormatException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public void remove(Request request) throws IOException {
        this.cache.p0(urlToKey(request));
    }

    public synchronized void trackConditionalCacheHit() {
        this.hitCount++;
    }

    public synchronized void trackResponse(b bVar) {
        try {
            this.requestCount++;
            if (bVar.f39610a != null) {
                this.networkCount++;
            } else if (bVar.f39611b != null) {
                this.hitCount++;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void update(Response response, Response response2) {
        DiskLruCache.d dVarD;
        Entry entry = new Entry(response2);
        try {
            dVarD = ((CacheResponseBody) response.body()).snapshot.d();
            if (dVarD != null) {
                try {
                    entry.writeTo(dVarD);
                    dVarD.e();
                } catch (IOException unused) {
                    abortQuietly(dVarD);
                }
            }
        } catch (IOException unused2) {
            dVarD = null;
        }
    }

    private static String urlToKey(Request request) {
        return g.p(request.urlString());
    }

    public void close() throws IOException {
        this.cache.close();
    }

    public void delete() throws IOException {
        this.cache.x();
    }

    public void evictAll() throws IOException {
        this.cache.T();
    }

    public void flush() throws IOException {
        this.cache.flush();
    }

    Response get(Request request) {
        try {
            DiskLruCache.f fVarW = this.cache.W(urlToKey(request));
            if (fVarW == null) {
                return null;
            }
            try {
                Entry entry = new Entry(fVarW.f(0));
                Response response = entry.response(request, fVarW);
                if (entry.matches(request, response)) {
                    return response;
                }
                g.c(response.body());
                return null;
            } catch (IOException unused) {
                g.c(fVarW);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public File getDirectory() {
        return this.cache.X();
    }

    public synchronized int getHitCount() {
        return this.hitCount;
    }

    public long getMaxSize() {
        return this.cache.d0();
    }

    public synchronized int getNetworkCount() {
        return this.networkCount;
    }

    public synchronized int getRequestCount() {
        return this.requestCount;
    }

    public long getSize() throws IOException {
        return this.cache.s0();
    }

    public synchronized int getWriteAbortCount() {
        return this.writeAbortCount;
    }

    public synchronized int getWriteSuccessCount() {
        return this.writeSuccessCount;
    }

    public void initialize() throws IOException {
        this.cache.e0();
    }

    public boolean isClosed() {
        return this.cache.isClosed();
    }

    public Iterator<String> urls() throws IOException {
        return new Iterator<String>() {
            boolean canRemove;
            final Iterator<DiskLruCache.f> delegate;
            String nextUrl;

            {
                this.delegate = Cache.this.cache.t0();
            }

            @Override
            public boolean hasNext() {
                if (this.nextUrl != null) {
                    return true;
                }
                this.canRemove = false;
                while (this.delegate.hasNext()) {
                    DiskLruCache.f next = this.delegate.next();
                    try {
                        this.nextUrl = Okio.buffer(next.f(0)).readUtf8LineStrict();
                        next.close();
                        return true;
                    } catch (IOException unused) {
                        next.close();
                    } catch (Throwable th2) {
                        next.close();
                        throw th2;
                    }
                }
                return false;
            }

            @Override
            public void remove() {
                if (!this.canRemove) {
                    throw new IllegalStateException("remove() before next()");
                }
                this.delegate.remove();
            }

            @Override
            public String next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                String str = this.nextUrl;
                this.nextUrl = null;
                this.canRemove = true;
                return str;
            }
        };
    }

    Cache(File file, long j10, FileSystem fileSystem) {
        this.internalCache = new InternalCache() {
            @Override
            public Response get(Request request) throws IOException {
                return Cache.this.get(request);
            }

            @Override
            public CacheRequest put(Response response) throws IOException {
                return Cache.this.put(response);
            }

            @Override
            public void remove(Request request) throws IOException {
                Cache.this.remove(request);
            }

            @Override
            public void trackConditionalCacheHit() {
                Cache.this.trackConditionalCacheHit();
            }

            @Override
            public void trackResponse(b bVar) {
                Cache.this.trackResponse(bVar);
            }

            @Override
            public void update(Response response, Response response2) throws IOException {
                Cache.this.update(response, response2);
            }
        };
        this.cache = DiskLruCache.w(fileSystem, file, VERSION, 2, j10);
    }

    private static final class Entry {
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final String url;
        private final Headers varyHeaders;

        public Entry(Source source) throws IOException {
            try {
                BufferedSource bufferedSourceBuffer = Okio.buffer(source);
                this.url = bufferedSourceBuffer.readUtf8LineStrict();
                this.requestMethod = bufferedSourceBuffer.readUtf8LineStrict();
                Headers.Builder builder = new Headers.Builder();
                int i10 = Cache.readInt(bufferedSourceBuffer);
                for (int i11 = 0; i11 < i10; i11++) {
                    builder.addLenient(bufferedSourceBuffer.readUtf8LineStrict());
                }
                this.varyHeaders = builder.build();
                m mVarA = m.a(bufferedSourceBuffer.readUtf8LineStrict());
                this.protocol = mVarA.f39709a;
                this.code = mVarA.f39710b;
                this.message = mVarA.f39711c;
                Headers.Builder builder2 = new Headers.Builder();
                int i12 = Cache.readInt(bufferedSourceBuffer);
                for (int i13 = 0; i13 < i12; i13++) {
                    builder2.addLenient(bufferedSourceBuffer.readUtf8LineStrict());
                }
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
                    if (utf8LineStrict.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + utf8LineStrict + "\"");
                    }
                    this.handshake = Handshake.get(bufferedSourceBuffer.readUtf8LineStrict(), readCertificateList(bufferedSourceBuffer), readCertificateList(bufferedSourceBuffer));
                } else {
                    this.handshake = null;
                }
                source.close();
            } catch (Throwable th2) {
                source.close();
                throw th2;
            }
        }

        private boolean isHttps() {
            return this.url.startsWith("https://");
        }

        private List<Certificate> readCertificateList(BufferedSource bufferedSource) throws IOException {
            int i10 = Cache.readInt(bufferedSource);
            if (i10 == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(i10);
                for (int i11 = 0; i11 < i10; i11++) {
                    String utf8LineStrict = bufferedSource.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    buffer.write(ByteString.decodeBase64(utf8LineStrict));
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                }
                return arrayList;
            } catch (CertificateException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        private void writeCertList(BufferedSink bufferedSink, List<Certificate> list) throws IOException {
            try {
                bufferedSink.writeDecimalLong(list.size());
                bufferedSink.writeByte(10);
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    bufferedSink.writeUtf8(ByteString.of(list.get(i10).getEncoded()).base64());
                    bufferedSink.writeByte(10);
                }
            } catch (CertificateEncodingException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public boolean matches(Request request, Response response) {
            return this.url.equals(request.urlString()) && this.requestMethod.equals(request.method()) && OkHeaders.q(response, this.varyHeaders, request);
        }

        public Response response(Request request, DiskLruCache.f fVar) {
            String str = this.responseHeaders.get(HttpHeaders.CONTENT_TYPE);
            String str2 = this.responseHeaders.get(HttpHeaders.CONTENT_LENGTH);
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(fVar, str, str2)).handshake(this.handshake).build();
        }

        public void writeTo(DiskLruCache.d dVar) throws IOException {
            BufferedSink bufferedSinkBuffer = Okio.buffer(dVar.f(0));
            bufferedSinkBuffer.writeUtf8(this.url);
            bufferedSinkBuffer.writeByte(10);
            bufferedSinkBuffer.writeUtf8(this.requestMethod);
            bufferedSinkBuffer.writeByte(10);
            bufferedSinkBuffer.writeDecimalLong(this.varyHeaders.size());
            bufferedSinkBuffer.writeByte(10);
            int size = this.varyHeaders.size();
            for (int i10 = 0; i10 < size; i10++) {
                bufferedSinkBuffer.writeUtf8(this.varyHeaders.name(i10));
                bufferedSinkBuffer.writeUtf8(": ");
                bufferedSinkBuffer.writeUtf8(this.varyHeaders.value(i10));
                bufferedSinkBuffer.writeByte(10);
            }
            bufferedSinkBuffer.writeUtf8(new m(this.protocol, this.code, this.message).toString());
            bufferedSinkBuffer.writeByte(10);
            bufferedSinkBuffer.writeDecimalLong(this.responseHeaders.size());
            bufferedSinkBuffer.writeByte(10);
            int size2 = this.responseHeaders.size();
            for (int i11 = 0; i11 < size2; i11++) {
                bufferedSinkBuffer.writeUtf8(this.responseHeaders.name(i11));
                bufferedSinkBuffer.writeUtf8(": ");
                bufferedSinkBuffer.writeUtf8(this.responseHeaders.value(i11));
                bufferedSinkBuffer.writeByte(10);
            }
            if (isHttps()) {
                bufferedSinkBuffer.writeByte(10);
                bufferedSinkBuffer.writeUtf8(this.handshake.cipherSuite());
                bufferedSinkBuffer.writeByte(10);
                writeCertList(bufferedSinkBuffer, this.handshake.peerCertificates());
                writeCertList(bufferedSinkBuffer, this.handshake.localCertificates());
            }
            bufferedSinkBuffer.close();
        }

        public Entry(Response response) {
            this.url = response.request().urlString();
            this.varyHeaders = OkHeaders.p(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
        }
    }
}
