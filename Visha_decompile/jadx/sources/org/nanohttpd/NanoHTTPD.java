package org.nanohttpd;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.internal.AssetHelper;
import com.hunantv.media.drm.IDrmSession;
import com.lzy.okgo.model.HttpHeaders;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.apiinvoke.invoke.RspCode;
import defpackage.ubc;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.time.TimeZones;

public abstract class NanoHTTPD {
    public static final Pattern h = Pattern.compile("[ |\t]*(charset)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;]*)['|\"]?", 2);
    public static final Pattern i = Pattern.compile("[ |\t]*(boundary)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;]*)['|\"]?", 2);
    public static final Pattern j = Pattern.compile("([ |\t]*Content-Disposition[ |\t]*:)(.*)", 2);
    public static final Pattern k = Pattern.compile("([ |\t]*content-type[ |\t]*:)(.*)", 2);
    public static final Pattern l = Pattern.compile("[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*['|\"]([^\"^']*)['|\"]");
    public static final Logger m = Logger.getLogger(NanoHTTPD.class.getName());
    public final String a;
    public final int b;
    public volatile ServerSocket c;
    public i d = new d();
    public Thread e;
    public a f;
    public k g;

    public class ClientHandler implements Runnable {
        private final Socket acceptSocket;
        private final InputStream inputStream;

        public void close() {
            NanoHTTPD.m(this.inputStream);
            NanoHTTPD.m(this.acceptSocket);
        }

        @Override
        public void run() {
            OutputStream outputStream = null;
            try {
                outputStream = this.acceptSocket.getOutputStream();
                g gVar = NanoHTTPD.this.new g(NanoHTTPD.this.g.create(), this.inputStream, outputStream, this.acceptSocket.getInetAddress());
                while (!this.acceptSocket.isClosed()) {
                    gVar.d();
                }
            } catch (Exception e) {
                if ((!(e instanceof SocketException) || !"NanoHttpd Shutdown".equals(e.getMessage())) && !(e instanceof SocketTimeoutException)) {
                    NanoHTTPD.m.log(Level.FINE, "Communication with the client broken", (Throwable) e);
                }
            } finally {
                NanoHTTPD.m(outputStream);
                NanoHTTPD.m(this.inputStream);
                NanoHTTPD.m(this.acceptSocket);
                NanoHTTPD.this.f.a(this);
            }
        }

        private ClientHandler(InputStream inputStream, Socket socket) {
            this.inputStream = inputStream;
            this.acceptSocket = socket;
        }
    }

    public enum Method {
        GET,
        PUT,
        POST,
        DELETE,
        HEAD,
        OPTIONS,
        TRACE,
        CONNECT,
        PATCH;

        public static Method lookup(String str) {
            for (Method method : values()) {
                if (method.toString().equalsIgnoreCase(str)) {
                    return method;
                }
            }
            return null;
        }
    }

    public static class Response implements Closeable {
        public b b;
        public String c;
        public InputStream d;
        public long e;
        public final Map f = new HashMap();
        public Method g;
        public boolean h;
        public boolean i;
        public boolean j;

        public enum Status implements b {
            SWITCH_PROTOCOL(101, "Switching Protocols"),
            OK(200, "OK"),
            CREATED(201, "Created"),
            ACCEPTED(202, "Accepted"),
            NO_CONTENT(IDrmSession.ERROR_SESSION_DRM_NULL, "No Content"),
            PARTIAL_CONTENT(IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, "Partial Content"),
            REDIRECT(301, "Moved Permanently"),
            TEMPORARY_REDIRECT(302, "Moved Temporarily"),
            NOT_MODIFIED(304, "Not Modified"),
            BAD_REQUEST(400, "Bad Request"),
            UNAUTHORIZED(401, "Unauthorized"),
            FORBIDDEN(403, "Forbidden"),
            NOT_FOUND(404, "Not Found"),
            METHOD_NOT_ALLOWED(405, "Method Not Allowed"),
            NOT_ACCEPTABLE(406, "Not Acceptable"),
            REQUEST_TIMEOUT(408, "Request Timeout"),
            CONFLICT(RspCode.ERROR_CHANNEL_NOT_REGISTER, "Conflict"),
            RANGE_NOT_SATISFIABLE(TypedValues.CycleType.TYPE_PATH_ROTATE, "Requested Range Not Satisfiable"),
            INTERNAL_ERROR(500, "Internal Server Error"),
            NOT_IMPLEMENTED(501, "Not Implemented"),
            UNSUPPORTED_HTTP_VERSION(505, "HTTP Version Not Supported");

            private final String description;
            private final int requestStatus;

            Status(int i, String str) {
                this.requestStatus = i;
                this.description = str;
            }

            @Override
            public String getDescription() {
                return "" + this.requestStatus + " " + this.description;
            }

            public int getRequestStatus() {
                return this.requestStatus;
            }
        }

        public interface b {
            String getDescription();
        }

        public Response(b bVar, String str, InputStream inputStream, long j) {
            this.b = bVar;
            this.c = str;
            if (inputStream == null) {
                this.d = new ByteArrayInputStream(new byte[0]);
                this.e = 0L;
            } else {
                this.d = inputStream;
                this.e = j;
            }
            this.h = this.e < 0;
            this.j = true;
        }

        public static boolean e(Map map, String str) {
            Iterator it = map.keySet().iterator();
            boolean zEqualsIgnoreCase = false;
            while (it.hasNext()) {
                zEqualsIgnoreCase |= ((String) it.next()).equalsIgnoreCase(str);
            }
            return zEqualsIgnoreCase;
        }

        public static long o(PrintWriter printWriter, Map map, long j) {
            for (String str : map.keySet()) {
                if (str.equalsIgnoreCase("content-length")) {
                    try {
                        return Long.parseLong((String) map.get(str));
                    } catch (NumberFormatException unused) {
                        return j;
                    }
                }
            }
            printWriter.print("Content-Length: " + j + IOUtils.LINE_SEPARATOR_WINDOWS);
            return j;
        }

        public void D(boolean z) {
            this.h = z;
        }

        public void E(boolean z) {
            this.i = z;
        }

        public void F(boolean z) {
            this.j = z;
        }

        public void G(String str) {
            this.c = str;
        }

        public void H(Method method) {
            this.g = method;
        }

        public void a(String str, String str2) {
            this.f.put(str, str2);
        }

        public String b(String str) {
            for (String str2 : this.f.keySet()) {
                if (str2.equalsIgnoreCase(str)) {
                    return (String) this.f.get(str2);
                }
            }
            return null;
        }

        @Override
        public void close() throws IOException {
            InputStream inputStream = this.d;
            if (inputStream != null) {
                inputStream.close();
            }
        }

        public String d() {
            return this.c;
        }

        public void g(OutputStream outputStream) {
            String str = this.c;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            try {
                if (this.b == null) {
                    throw new Error("sendResponse(): Status can't be null.");
                }
                PrintWriter printWriter = new PrintWriter((Writer) new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8")), false);
                printWriter.print("HTTP/1.1 " + this.b.getDescription() + " \r\n");
                if (str != null) {
                    printWriter.print("Content-Type: " + str + IOUtils.LINE_SEPARATOR_WINDOWS);
                }
                Map map = this.f;
                if (map == null || map.get("Date") == null) {
                    printWriter.print("Date: " + simpleDateFormat.format(new Date()) + IOUtils.LINE_SEPARATOR_WINDOWS);
                }
                Map map2 = this.f;
                if (map2 != null) {
                    for (String str2 : map2.keySet()) {
                        printWriter.print(str2 + ": " + ((String) this.f.get(str2)) + IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                }
                if (!e(this.f, "connection")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Connection: ");
                    sb.append(this.j ? HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE : HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
                    sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    printWriter.print(sb.toString());
                }
                if (e(this.f, "content-length")) {
                    this.i = false;
                }
                if (this.i) {
                    printWriter.print("Content-Encoding: gzip\r\n");
                    D(true);
                }
                long jO = this.d != null ? this.e : 0L;
                if (this.g != Method.HEAD && this.h) {
                    printWriter.print("Transfer-Encoding: chunked\r\n");
                } else if (!this.i) {
                    jO = o(printWriter, this.f, jO);
                }
                printWriter.print(IOUtils.LINE_SEPARATOR_WINDOWS);
                printWriter.flush();
                n(outputStream, jO);
                outputStream.flush();
                NanoHTTPD.m(this.d);
            } catch (IOException e) {
                NanoHTTPD.m.log(Level.SEVERE, "Could not send response to the client", (Throwable) e);
            }
        }

        public final void h(OutputStream outputStream, long j) throws IOException {
            byte[] bArr = new byte[(int) 16384];
            boolean z = j == -1;
            while (true) {
                if (j <= 0 && !z) {
                    return;
                }
                int i = this.d.read(bArr, 0, (int) (z ? 16384L : Math.min(j, 16384L)));
                if (i <= 0) {
                    return;
                }
                outputStream.write(bArr, 0, i);
                if (!z) {
                    j -= (long) i;
                }
            }
        }

        public final void k(OutputStream outputStream, long j) throws IOException {
            if (!this.i) {
                h(outputStream, j);
                return;
            }
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            h(gZIPOutputStream, -1L);
            gZIPOutputStream.finish();
        }

        public final void n(OutputStream outputStream, long j) throws IOException {
            if (this.g == Method.HEAD || !this.h) {
                k(outputStream, j);
                return;
            }
            a aVar = new a(outputStream);
            k(aVar, -1L);
            aVar.b();
        }

        public static class a extends FilterOutputStream {
            public a(OutputStream outputStream) {
                super(outputStream);
            }

            public void b() throws IOException {
                ((FilterOutputStream) this).out.write("0\r\n\r\n".getBytes());
            }

            @Override
            public void write(int i) throws IOException {
                write(new byte[]{(byte) i}, 0, 1);
            }

            @Override
            public void write(byte[] bArr) throws IOException {
                write(bArr, 0, bArr.length);
            }

            @Override
            public void write(byte[] bArr, int i, int i2) throws IOException {
                if (i2 == 0) {
                    return;
                }
                ((FilterOutputStream) this).out.write(String.format("%x\r\n", Integer.valueOf(i2)).getBytes());
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                ((FilterOutputStream) this).out.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes());
            }
        }
    }

    public class ServerRunnable implements Runnable {
        private IOException bindException;
        private boolean hasBinded;
        private final int timeout;

        @Override
        public void run() {
            try {
                NanoHTTPD.this.c.bind(NanoHTTPD.this.a != null ? new InetSocketAddress(NanoHTTPD.this.a, NanoHTTPD.this.b) : new InetSocketAddress(NanoHTTPD.this.b));
                this.hasBinded = true;
                do {
                    try {
                        Socket socketAccept = NanoHTTPD.this.c.accept();
                        int i = this.timeout;
                        if (i > 0) {
                            socketAccept.setSoTimeout(i);
                        }
                        InputStream inputStream = socketAccept.getInputStream();
                        NanoHTTPD nanoHTTPD = NanoHTTPD.this;
                        nanoHTTPD.f.c(nanoHTTPD.g(socketAccept, inputStream));
                    } catch (IOException e) {
                        NanoHTTPD.m.log(Level.FINE, "Communication with the client broken", (Throwable) e);
                    }
                } while (!NanoHTTPD.this.c.isClosed());
            } catch (IOException e2) {
                this.bindException = e2;
            }
        }

        private ServerRunnable(int i) {
            this.hasBinded = false;
            this.timeout = i;
        }
    }

    public interface a {
        void a(ClientHandler clientHandler);

        void b();

        void c(ClientHandler clientHandler);
    }

    public class b implements Iterable {
        public final HashMap b = new HashMap();
        public final ArrayList c = new ArrayList();

        public b(Map map) {
            String str = (String) map.get("cookie");
            if (str != null) {
                for (String str2 : str.split(ProcessInfo.SPLIT_NEW_VERSION)) {
                    String[] strArrSplit = str2.trim().split("=");
                    if (strArrSplit.length == 2) {
                        this.b.put(strArrSplit[0], strArrSplit[1]);
                    }
                }
            }
        }

        public void b(Response response) {
            Iterator it = this.c.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                throw null;
            }
        }

        @Override
        public Iterator iterator() {
            return this.b.keySet().iterator();
        }
    }

    public static class c implements a {
        public long a;
        public final List b = Collections.synchronizedList(new ArrayList());

        @Override
        public void a(ClientHandler clientHandler) {
            this.b.remove(clientHandler);
        }

        @Override
        public void b() {
            Iterator it = new ArrayList(this.b).iterator();
            while (it.hasNext()) {
                ((ClientHandler) it.next()).close();
            }
        }

        @Override
        public void c(ClientHandler clientHandler) {
            this.a++;
            Thread thread = new Thread(clientHandler);
            thread.setDaemon(true);
            thread.setName("NanoHttpd Request Processor (#" + this.a + ")");
            this.b.add(clientHandler);
            thread.start();
        }
    }

    public static class d implements i {
        @Override
        public ServerSocket create() {
            return new ServerSocket();
        }
    }

    public static class e implements j {
        public final File a;
        public final List b;

        public e() {
            File file = new File(System.getProperty("java.io.tmpdir"));
            this.a = file;
            if (!file.exists()) {
                file.mkdirs();
            }
            this.b = new ArrayList();
        }

        @Override
        public void clear() {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ubc.a(it.next());
                try {
                    throw null;
                } catch (Exception e) {
                    NanoHTTPD.m.log(Level.WARNING, "could not delete file ", (Throwable) e);
                }
            }
            this.b.clear();
        }
    }

    public class f implements k {
        @Override
        public j create() {
            return new e();
        }

        public f() {
        }
    }

    public class g implements h {
        public final j a;
        public final OutputStream b;
        public final BufferedInputStream c;
        public int d;
        public int e;
        public String f;
        public Method g;
        public Map h;
        public Map i;
        public b j;
        public String k;
        public String l;
        public String m;

        public g(j jVar, InputStream inputStream, OutputStream outputStream, InetAddress inetAddress) {
            this.a = jVar;
            this.c = new BufferedInputStream(inputStream, 8192);
            this.b = outputStream;
            this.l = (inetAddress.isLoopbackAddress() || inetAddress.isAnyLocalAddress()) ? ImgoP2pConstants.LOCAL_HOST : inetAddress.getHostAddress().toString();
            this.i = new HashMap();
        }

        @Override
        public final Map a() {
            return this.h;
        }

        public final void b(BufferedReader bufferedReader, Map map, Map map2, Map map3) throws ResponseException {
            String strI;
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                if (!stringTokenizer.hasMoreTokens()) {
                    throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
                }
                map.put("method", stringTokenizer.nextToken());
                if (!stringTokenizer.hasMoreTokens()) {
                    throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(63);
                if (iIndexOf >= 0) {
                    c(strNextToken.substring(iIndexOf + 1), map2);
                    strI = NanoHTTPD.i(strNextToken.substring(0, iIndexOf));
                } else {
                    strI = NanoHTTPD.i(strNextToken);
                }
                if (stringTokenizer.hasMoreTokens()) {
                    this.m = stringTokenizer.nextToken();
                } else {
                    this.m = "HTTP/1.1";
                    NanoHTTPD.m.log(Level.FINE, "no protocol version specified, strange. Assuming HTTP/1.1.");
                }
                String line2 = bufferedReader.readLine();
                while (line2 != null && line2.trim().length() > 0) {
                    int iIndexOf2 = line2.indexOf(58);
                    if (iIndexOf2 >= 0) {
                        map3.put(line2.substring(0, iIndexOf2).trim().toLowerCase(Locale.US), line2.substring(iIndexOf2 + 1).trim());
                    }
                    line2 = bufferedReader.readLine();
                }
                map.put("uri", strI);
            } catch (IOException e) {
                throw new ResponseException(Response.Status.INTERNAL_ERROR, "SERVER INTERNAL ERROR: IOException: " + e.getMessage(), e);
            }
        }

        public final void c(String str, Map map) {
            if (str == null) {
                this.k = "";
                return;
            }
            this.k = str;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf >= 0) {
                    map.put(NanoHTTPD.i(strNextToken.substring(0, iIndexOf)).trim(), NanoHTTPD.i(strNextToken.substring(iIndexOf + 1)));
                } else {
                    map.put(NanoHTTPD.i(strNextToken).trim(), "");
                }
            }
        }

        public void d() {
            Response responseN = null;
            try {
                try {
                    try {
                        byte[] bArr = new byte[8192];
                        boolean z = false;
                        this.d = 0;
                        this.e = 0;
                        this.c.mark(8192);
                        try {
                            int i = this.c.read(bArr, 0, 8192);
                            if (i == -1) {
                                NanoHTTPD.m(this.c);
                                NanoHTTPD.m(this.b);
                                throw new SocketException("NanoHttpd Shutdown");
                            }
                            while (i > 0) {
                                int i2 = this.e + i;
                                this.e = i2;
                                int iE = e(bArr, i2);
                                this.d = iE;
                                if (iE > 0) {
                                    break;
                                }
                                BufferedInputStream bufferedInputStream = this.c;
                                int i3 = this.e;
                                i = bufferedInputStream.read(bArr, i3, 8192 - i3);
                            }
                            if (this.d < this.e) {
                                this.c.reset();
                                this.c.skip(this.d);
                            }
                            this.h = new HashMap();
                            Map map = this.i;
                            if (map == null) {
                                this.i = new HashMap();
                            } else {
                                map.clear();
                            }
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, this.e)));
                            HashMap map2 = new HashMap();
                            b(bufferedReader, map2, this.h, this.i);
                            String str = this.l;
                            if (str != null) {
                                this.i.put("remote-addr", str);
                                this.i.put("http-client-ip", this.l);
                            }
                            Method methodLookup = Method.lookup((String) map2.get("method"));
                            this.g = methodLookup;
                            if (methodLookup == null) {
                                throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Syntax error.");
                            }
                            this.f = (String) map2.get("uri");
                            this.j = NanoHTTPD.this.new b(this.i);
                            String str2 = (String) this.i.get("connection");
                            boolean z2 = this.m.equals("HTTP/1.1") && (str2 == null || !str2.matches("(?i).*close.*"));
                            responseN = NanoHTTPD.this.n(this);
                            if (responseN == null) {
                                throw new ResponseException(Response.Status.INTERNAL_ERROR, "SERVER INTERNAL ERROR: Serve() returned a null response.");
                            }
                            String str3 = (String) this.i.get("accept-encoding");
                            this.j.b(responseN);
                            responseN.H(this.g);
                            if (NanoHTTPD.this.u(responseN) && str3 != null && str3.contains("gzip")) {
                                z = true;
                            }
                            responseN.E(z);
                            responseN.F(z2);
                            responseN.g(this.b);
                            if (!z2 || HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE.equalsIgnoreCase(responseN.b("connection"))) {
                                throw new SocketException("NanoHttpd Shutdown");
                            }
                            NanoHTTPD.m(responseN);
                            this.a.clear();
                        } catch (Exception unused) {
                            NanoHTTPD.m(this.c);
                            NanoHTTPD.m(this.b);
                            throw new SocketException("NanoHttpd Shutdown");
                        }
                    } catch (SocketException e) {
                        throw e;
                    } catch (SocketTimeoutException e2) {
                        throw e2;
                    }
                } catch (IOException e3) {
                    Response responseL = NanoHTTPD.l(Response.Status.INTERNAL_ERROR, AssetHelper.DEFAULT_MIME_TYPE, "SERVER INTERNAL ERROR: IOException: " + e3.getMessage());
                    try {
                        responseL.g(this.b);
                        responseL.close();
                        NanoHTTPD.m(this.b);
                    } catch (Throwable th) {
                        if (responseL != null) {
                            try {
                                responseL.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (ResponseException e4) {
                    Response responseL2 = NanoHTTPD.l(e4.getStatus(), AssetHelper.DEFAULT_MIME_TYPE, e4.getMessage());
                    try {
                        responseL2.g(this.b);
                        responseL2.close();
                        NanoHTTPD.m(this.b);
                    } catch (Throwable th3) {
                        if (responseL2 != null) {
                            try {
                                responseL2.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                NanoHTTPD.m(null);
                this.a.clear();
                throw th5;
            }
        }

        public final int e(byte[] bArr, int i) {
            int i2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i4 >= i) {
                    return 0;
                }
                byte b = bArr[i3];
                if (b == 13 && bArr[i4] == 10 && (i2 = i3 + 3) < i && bArr[i3 + 2] == 13 && bArr[i2] == 10) {
                    return i3 + 4;
                }
                if (b == 10 && bArr[i4] == 10) {
                    return i3 + 2;
                }
                i3 = i4;
            }
        }

        @Override
        public final Map getHeaders() {
            return this.i;
        }

        @Override
        public final String getUri() {
            return this.f;
        }
    }

    public interface h {
        Map a();

        Map getHeaders();

        String getUri();
    }

    public interface i {
        ServerSocket create();
    }

    public interface j {
        void clear();
    }

    public interface k {
        j create();
    }

    public NanoHTTPD(String str, int i2) {
        this.a = str;
        this.b = i2;
        p(new f());
        o(new c());
    }

    public static String i(String str) {
        try {
            return URLDecoder.decode(str, "UTF8");
        } catch (UnsupportedEncodingException e2) {
            m.log(Level.WARNING, "Encoding not supported, ignored", (Throwable) e2);
            return null;
        }
    }

    public static Response k(Response.b bVar, String str, InputStream inputStream, long j2) {
        return new Response(bVar, str, inputStream, j2);
    }

    public static Response l(Response.b bVar, String str, String str2) {
        byte[] bytes;
        if (str2 == null) {
            return k(bVar, str, new ByteArrayInputStream(new byte[0]), 0L);
        }
        try {
            bytes = str2.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            m.log(Level.SEVERE, "encoding problem, responding nothing", (Throwable) e2);
            bytes = new byte[0];
        }
        return k(bVar, str, new ByteArrayInputStream(bytes), bytes.length);
    }

    public static final void m(Object obj) {
        if (obj != null) {
            try {
                if (obj instanceof Closeable) {
                    ((Closeable) obj).close();
                } else if (obj instanceof Socket) {
                    ((Socket) obj).close();
                } else {
                    if (!(obj instanceof ServerSocket)) {
                        throw new IllegalArgumentException("Unknown object to close");
                    }
                    ((ServerSocket) obj).close();
                }
            } catch (IOException e2) {
                m.log(Level.SEVERE, "Could not close", (Throwable) e2);
            }
        }
    }

    public ClientHandler g(Socket socket, InputStream inputStream) {
        return new ClientHandler(inputStream, socket);
    }

    public ServerRunnable h(int i2) {
        return new ServerRunnable(i2);
    }

    public i j() {
        return this.d;
    }

    public abstract Response n(h hVar);

    public void o(a aVar) {
        this.f = aVar;
    }

    public void p(k kVar) {
        this.g = kVar;
    }

    public void q() throws IOException {
        r(5000);
    }

    public void r(int i2) throws IOException {
        s(i2, true);
    }

    public void s(int i2, boolean z) throws IOException {
        this.c = j().create();
        this.c.setReuseAddress(true);
        ServerRunnable serverRunnableH = h(i2);
        Thread thread = new Thread(serverRunnableH);
        this.e = thread;
        thread.setDaemon(z);
        this.e.setName("NanoHttpd Main Listener");
        this.e.start();
        while (!serverRunnableH.hasBinded && serverRunnableH.bindException == null) {
            try {
                Thread.sleep(10L);
            } catch (Throwable unused) {
            }
        }
        if (serverRunnableH.bindException != null) {
            throw serverRunnableH.bindException;
        }
    }

    public void t() {
        try {
            m(this.c);
            this.f.b();
            Thread thread = this.e;
            if (thread != null) {
                thread.join();
            }
        } catch (Exception e2) {
            m.log(Level.SEVERE, "Could not stop all connections", (Throwable) e2);
        }
    }

    public boolean u(Response response) {
        return response.d() != null && response.d().toLowerCase().contains("text/");
    }

    public static final class ResponseException extends Exception {
        private static final long serialVersionUID = 6569838532917408380L;
        private final Response.Status status;

        public ResponseException(Response.Status status, String str) {
            super(str);
            this.status = status;
        }

        public Response.Status getStatus() {
            return this.status;
        }

        public ResponseException(Response.Status status, String str, Exception exc) {
            super(str, exc);
            this.status = status;
        }
    }
}
