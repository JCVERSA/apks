package org.apache.tools.ant.taskdefs;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PipedOutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.q;
import org.apache.tools.ant.util.p;

public class m {
    private static final String B = System.getProperty("file.encoding");
    private boolean A;

    private File[] f68252a;

    private File[] f68253b;

    private File[] f68254c;

    private String f68258g;

    private String f68259h;

    private String f68260i;

    private q f68264m;

    private Vector f68270s;

    private Vector f68271t;

    private Vector f68272u;

    private String f68273v;

    private String f68274w;

    private String f68275x;

    private boolean f68276y;

    private ThreadGroup f68277z;

    private boolean f68255d = false;

    private a f68256e = null;

    private a f68257f = null;

    private boolean f68261j = false;

    private boolean f68262k = false;

    private boolean f68263l = true;

    private OutputStream f68265n = null;

    private OutputStream f68266o = null;

    private InputStream f68267p = null;

    private PrintStream f68268q = null;

    private PrintStream f68269r = null;

    private class a extends ByteArrayOutputStream {

        private String f68278a;

        private boolean f68279b = false;

        a(String str) {
            this.f68278a = str;
        }

        @Override
        public void close() throws IOException {
            if (this.f68279b) {
                return;
            }
            if (m.this.f68261j && m.this.f68276y) {
                return;
            }
            m.this.k(this, this.f68278a);
            this.f68279b = true;
        }
    }

    public m(q qVar) {
        String str = B;
        this.f68273v = str;
        this.f68274w = str;
        this.f68275x = str;
        this.f68276y = true;
        this.f68277z = new ThreadGroup("redirector");
        this.A = true;
        this.f68264m = qVar;
    }

    private void g() {
        OutputStream outputStream;
        File[] fileArr = this.f68254c;
        if (fileArr != null && fileArr.length > 0) {
            StringBuffer stringBuffer = new StringBuffer("Error ");
            stringBuffer.append(this.f68261j ? "appended" : "redirected");
            stringBuffer.append(" to ");
            this.f68266o = h(this.f68254c, stringBuffer.toString(), 3);
        } else if (!this.f68255d && (outputStream = this.f68265n) != null) {
            org.apache.tools.ant.util.m mVar = new org.apache.tools.ant.util.m(outputStream, 0L);
            try {
                this.f68265n = mVar.g();
                this.f68266o = mVar.g();
            } catch (IOException e10) {
                throw new BuildException("error splitting output/error streams", e10);
            }
        }
        if (this.f68259h == null) {
            this.f68257f = null;
            return;
        }
        if (this.f68257f == null) {
            this.f68257f = new a(this.f68259h);
            q qVar = this.f68264m;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Error redirected to property: ");
            stringBuffer2.append(this.f68259h);
            qVar.log(stringBuffer2.toString(), 3);
        }
        OutputStream gVar = new org.apache.tools.ant.util.g(this.f68257f);
        File[] fileArr2 = this.f68254c;
        if (fileArr2 != null && fileArr2.length != 0) {
            gVar = new org.apache.tools.ant.util.q(this.f68266o, gVar);
        }
        this.f68266o = gVar;
    }

    private OutputStream h(File[] fileArr, String str, int i10) {
        org.apache.tools.ant.util.h hVar = new org.apache.tools.ant.util.h(fileArr[0], this.f68261j, this.f68263l);
        q qVar = this.f68264m;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(fileArr[0]);
        qVar.log(stringBuffer.toString(), i10);
        char[] cArr = new char[str.length()];
        Arrays.fill(cArr, ' ');
        String str2 = new String(cArr);
        for (int i11 = 1; i11 < fileArr.length; i11++) {
            this.f68265n = new org.apache.tools.ant.util.q(this.f68265n, new org.apache.tools.ant.util.h(fileArr[i11], this.f68261j, this.f68263l));
            q qVar2 = this.f68264m;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str2);
            stringBuffer2.append(fileArr[i11]);
            qVar2.log(stringBuffer2.toString(), i10);
        }
        return hVar;
    }

    private void i() {
        File[] fileArr = this.f68253b;
        if (fileArr != null && fileArr.length > 0) {
            StringBuffer stringBuffer = new StringBuffer("Output ");
            stringBuffer.append(this.f68261j ? "appended" : "redirected");
            stringBuffer.append(" to ");
            this.f68265n = h(this.f68253b, stringBuffer.toString(), 3);
        }
        if (this.f68258g == null) {
            this.f68256e = null;
            return;
        }
        if (this.f68256e == null) {
            this.f68256e = new a(this.f68258g);
            q qVar = this.f68264m;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Output redirected to property: ");
            stringBuffer2.append(this.f68258g);
            qVar.log(stringBuffer2.toString(), 3);
        }
        OutputStream gVar = new org.apache.tools.ant.util.g(this.f68256e);
        if (this.f68265n != null) {
            gVar = new org.apache.tools.ant.util.q(this.f68265n, gVar);
        }
        this.f68265n = gVar;
    }

    public void k(ByteArrayOutputStream byteArrayOutputStream, String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new StringReader(g.u(byteArrayOutputStream)));
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                this.f68264m.getProject().J(str, stringBuffer.toString());
                return;
            } else {
                if (stringBuffer.length() != 0) {
                    stringBuffer.append(p.f68442a);
                }
                stringBuffer.append(line);
            }
        }
    }

    public synchronized void d() {
        try {
            System.out.flush();
            System.err.flush();
            InputStream inputStream = this.f68267p;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f68265n.flush();
            this.f68265n.close();
            this.f68266o.flush();
            this.f68266o.close();
            while (this.f68277z.activeCount() > 0) {
                try {
                    q qVar = this.f68264m;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("waiting for ");
                    stringBuffer.append(this.f68277z.activeCount());
                    stringBuffer.append(" Threads:");
                    qVar.log(stringBuffer.toString(), 4);
                    int iActiveCount = this.f68277z.activeCount();
                    Thread[] threadArr = new Thread[iActiveCount];
                    this.f68277z.enumerate(threadArr);
                    for (int i10 = 0; i10 < iActiveCount; i10++) {
                        Thread thread = threadArr[i10];
                        if (thread == null) {
                            break;
                        }
                        try {
                            this.f68264m.log(thread.toString(), 4);
                        } catch (NullPointerException unused) {
                        }
                    }
                    wait(1000L);
                } catch (InterruptedException unused2) {
                }
            }
            j();
            this.f68267p = null;
            this.f68265n = null;
            this.f68266o = null;
            this.f68268q = null;
            this.f68269r = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized h e() {
        f();
        return new l(this.f68265n, this.f68266o, this.f68267p);
    }

    public synchronized void f() {
        Vector vector;
        try {
            i();
            g();
            if (this.f68262k || this.f68265n == null) {
                OutputStream jVar = new j(this.f68264m, 2);
                if (this.f68265n != null) {
                    jVar = new org.apache.tools.ant.util.q(jVar, this.f68265n);
                }
                this.f68265n = jVar;
            }
            if (this.f68262k || this.f68266o == null) {
                OutputStream jVar2 = new j(this.f68264m, 1);
                if (this.f68266o != null) {
                    jVar2 = new org.apache.tools.ant.util.q(jVar2, this.f68266o);
                }
                this.f68266o = jVar2;
            }
            Vector vector2 = this.f68270s;
            if ((vector2 != null && vector2.size() > 0) || !this.f68273v.equalsIgnoreCase(this.f68275x)) {
                try {
                    org.apache.tools.ant.util.i iVar = new org.apache.tools.ant.util.i();
                    iVar.d(this.f68264m);
                    Reader inputStreamReader = new InputStreamReader(iVar, this.f68275x);
                    Vector vector3 = this.f68270s;
                    if (vector3 != null && vector3.size() > 0) {
                        hz.a aVar = new hz.a();
                        aVar.e(this.f68264m.getProject());
                        aVar.d(inputStreamReader);
                        aVar.c(this.f68270s);
                        inputStreamReader = aVar.b();
                    }
                    Thread thread = new Thread(this.f68277z, new StreamPumper(new org.apache.tools.ant.util.n(inputStreamReader, this.f68273v), this.f68265n, true), "output pumper");
                    thread.setPriority(10);
                    this.f68265n = new PipedOutputStream(iVar);
                    thread.start();
                } catch (IOException e10) {
                    throw new BuildException("error setting up output stream", e10);
                }
            }
            Vector vector4 = this.f68271t;
            if ((vector4 != null && vector4.size() > 0) || !this.f68274w.equalsIgnoreCase(this.f68275x)) {
                try {
                    org.apache.tools.ant.util.i iVar2 = new org.apache.tools.ant.util.i();
                    iVar2.d(this.f68264m);
                    Reader inputStreamReader2 = new InputStreamReader(iVar2, this.f68275x);
                    Vector vector5 = this.f68271t;
                    if (vector5 != null && vector5.size() > 0) {
                        hz.a aVar2 = new hz.a();
                        aVar2.e(this.f68264m.getProject());
                        aVar2.d(inputStreamReader2);
                        aVar2.c(this.f68271t);
                        inputStreamReader2 = aVar2.b();
                    }
                    Thread thread2 = new Thread(this.f68277z, new StreamPumper(new org.apache.tools.ant.util.n(inputStreamReader2, this.f68274w), this.f68266o, true), "error pumper");
                    thread2.setPriority(10);
                    this.f68266o = new PipedOutputStream(iVar2);
                    thread2.start();
                } catch (IOException e11) {
                    throw new BuildException("error setting up error stream", e11);
                }
            }
            File[] fileArr = this.f68252a;
            if (fileArr != null && fileArr.length > 0) {
                q qVar = this.f68264m;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Redirecting input from file");
                stringBuffer.append(this.f68252a.length == 1 ? "" : "s");
                qVar.log(stringBuffer.toString(), 3);
                try {
                    org.apache.tools.ant.util.c cVar = new org.apache.tools.ant.util.c(this.f68252a);
                    this.f68267p = cVar;
                    cVar.l(this.f68264m);
                } catch (IOException e12) {
                    throw new BuildException(e12);
                }
            } else if (this.f68260i != null) {
                StringBuffer stringBuffer2 = new StringBuffer("Using input ");
                if (this.A) {
                    stringBuffer2.append('\"');
                    stringBuffer2.append(this.f68260i);
                    stringBuffer2.append('\"');
                } else {
                    stringBuffer2.append("string");
                }
                this.f68264m.log(stringBuffer2.toString(), 3);
                this.f68267p = new ByteArrayInputStream(this.f68260i.getBytes());
            }
            if (this.f68267p != null && (vector = this.f68272u) != null && vector.size() > 0) {
                hz.a aVar3 = new hz.a();
                aVar3.e(this.f68264m.getProject());
                try {
                    aVar3.d(new InputStreamReader(this.f68267p, this.f68275x));
                    aVar3.c(this.f68272u);
                    this.f68267p = new org.apache.tools.ant.util.n(aVar3.b(), this.f68275x);
                } catch (IOException e13) {
                    throw new BuildException("error setting up input stream", e13);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void j() {
        a aVar = this.f68256e;
        if (aVar != null) {
            try {
                aVar.close();
            } catch (IOException unused) {
            }
        }
        a aVar2 = this.f68257f;
        if (aVar2 != null) {
            try {
                aVar2.close();
            } catch (IOException unused2) {
            }
        }
    }
}
