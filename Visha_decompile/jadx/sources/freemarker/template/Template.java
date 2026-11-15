package freemarker.template;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.d1d;
import defpackage.gc7;
import defpackage.ifa;
import defpackage.ofa;
import defpackage.wt1;
import defpackage.xe1;
import defpackage.xga;
import defpackage.zfa;
import freemarker.core.Configurable;
import freemarker.core.Environment;
import freemarker.core.FMParser;
import freemarker.core.ParseException;
import freemarker.core.TokenMgrError;
import freemarker.core.b1;
import freemarker.core.e1;
import java.io.BufferedReader;
import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public class Template extends Configurable {
    public transient FMParser J;
    public Map K;
    public List L;
    public ifa M;
    public String N;
    public String O;
    public Object P;
    public int Q;
    public int R;
    public final String S;
    public final String T;
    public final ArrayList U;
    public Map V;
    public Map W;
    public Version X;

    public static class WrongEncodingException extends ParseException {
        private static final long serialVersionUID = 1;
        private final String constructorSpecifiedEncoding;
        public String specifiedEncoding;

        public WrongEncodingException(String str) {
            this(str, null);
        }

        public String getConstructorSpecifiedEncoding() {
            return this.constructorSpecifiedEncoding;
        }

        @Override
        public String getMessage() {
            String string;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Encoding specified inside the template (");
            stringBuffer.append(this.specifiedEncoding);
            stringBuffer.append(") doesn't match the encoding specified for the Template constructor");
            if (this.constructorSpecifiedEncoding != null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(" (");
                stringBuffer2.append(this.constructorSpecifiedEncoding);
                stringBuffer2.append(").");
                string = stringBuffer2.toString();
            } else {
                string = Consts.DOT;
            }
            stringBuffer.append(string);
            return stringBuffer.toString();
        }

        public String getTemplateSpecifiedEncoding() {
            return this.specifiedEncoding;
        }

        public WrongEncodingException(String str, String str2) {
            this.specifiedEncoding = str;
            this.constructorSpecifiedEncoding = str2;
        }
    }

    public Template(String str, String str2, xe1 xe1Var, boolean z) {
        super(K0(xe1Var));
        this.K = new HashMap();
        this.L = new Vector();
        this.U = new ArrayList();
        this.V = new HashMap();
        this.W = new HashMap();
        this.S = str;
        this.T = str2;
        this.X = G0(K0(xe1Var).F0());
    }

    public static Template A0(String str, String str2, String str3, xe1 xe1Var) {
        Template template = new Template(str, str2, xe1Var, true);
        template.M = new xga(str3);
        template.Q = xe1Var.L0();
        wt1.b(template);
        return template;
    }

    public static Version G0(Version version) {
        d1d.a(version);
        int iIntValue = version.intValue();
        if (iIntValue < d1d.b) {
            return xe1.e0;
        }
        return iIntValue > d1d.d ? xe1.h0 : version;
    }

    public static xe1 K0(xe1 xe1Var) {
        return xe1Var != null ? xe1Var : xe1.t0();
    }

    public String B0(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return this.O == null ? "" : "N";
        }
        return str.equals(this.O) ? "" : (String) this.W.get(str);
    }

    public ifa C0() {
        return this.M;
    }

    public String D0(int i, int i2, int i3, int i4) {
        if (i2 < 1 || i4 < 1) {
            return null;
        }
        int i5 = i - 1;
        int i6 = i3 - 1;
        int i7 = i4 - 1;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i8 = i2 - 1; i8 <= i7; i8++) {
            if (i8 < this.U.size()) {
                stringBuffer.append(this.U.get(i8));
            }
        }
        int length = (this.U.get(i7).toString().length() - i6) - 1;
        stringBuffer.delete(0, i5);
        stringBuffer.delete(stringBuffer.length() - length, stringBuffer.length());
        return stringBuffer.toString();
    }

    public String E0() {
        String str = this.T;
        return str != null ? str : y0();
    }

    public Version F0() {
        return this.X;
    }

    public void H0(Object obj, Writer writer) {
        q0(obj, writer, null).F1();
    }

    public void I0(Object obj) {
        this.P = obj;
    }

    public void J0(String str) {
        this.N = str;
    }

    public void n0(b1 b1Var) {
        this.L.add(b1Var);
    }

    public void o0(e1 e1Var) {
        this.K.put(e1Var.q0(), e1Var);
    }

    public void p0(String str, String str2) {
        if (str2.length() == 0) {
            throw new IllegalArgumentException("Cannot map empty string URI");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Cannot map empty string prefix");
        }
        if (str.equals("N")) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("The prefix: ");
            stringBuffer.append(str);
            stringBuffer.append(" cannot be registered, it's reserved for special internal use.");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        if (this.V.containsKey(str)) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("The prefix: '");
            stringBuffer2.append(str);
            stringBuffer2.append("' was repeated. This is illegal.");
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
        if (this.W.containsKey(str2)) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("The namespace URI: ");
            stringBuffer3.append(str2);
            stringBuffer3.append(" cannot be mapped to 2 different prefixes.");
            throw new IllegalArgumentException(stringBuffer3.toString());
        }
        if (str.equals("D")) {
            this.O = str2;
        } else {
            this.V.put(str, str2);
            this.W.put(str2, str);
        }
    }

    public Environment q0(Object obj, Writer writer, gc7 gc7Var) {
        ofa simpleHash;
        if (obj instanceof ofa) {
            simpleHash = (ofa) obj;
        } else {
            if (gc7Var == null) {
                gc7Var = u();
            }
            if (obj == null) {
                simpleHash = new SimpleHash(gc7Var);
            } else {
                zfa zfaVarC = gc7Var.c(obj);
                if (!(zfaVarC instanceof ofa)) {
                    if (zfaVarC == null) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(gc7Var.getClass().getName());
                        stringBuffer.append(" converted ");
                        stringBuffer.append(obj.getClass().getName());
                        stringBuffer.append(" to null.");
                        throw new IllegalArgumentException(stringBuffer.toString());
                    }
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(gc7Var.getClass().getName());
                    stringBuffer2.append(" didn't convert ");
                    stringBuffer2.append(obj.getClass().getName());
                    stringBuffer2.append(" to a TemplateHashModel. Generally, you want to use a Map<String, Object> or a ");
                    stringBuffer2.append("JavaBean as the root-map (aka. data-model) parameter. The Map key-s or JavaBean ");
                    stringBuffer2.append("property names will be the variable names in the template.");
                    throw new IllegalArgumentException(stringBuffer2.toString());
                }
                simpleHash = (ofa) zfaVarC;
            }
        }
        return new Environment(this, simpleHash, writer);
    }

    public void r0(Writer writer) throws IOException {
        writer.write(this.M.o());
    }

    public int s0() {
        return this.Q;
    }

    public xe1 t0() {
        return (xe1) w();
    }

    public String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            r0(stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public Object u0() {
        return this.P;
    }

    public String v0() {
        return this.O;
    }

    public String w0() {
        return this.N;
    }

    public Map x0() {
        return this.K;
    }

    public String y0() {
        return this.S;
    }

    public String z0(String str) {
        if (!str.equals("")) {
            return (String) this.V.get(str);
        }
        String str2 = this.O;
        return str2 == null ? "" : str2;
    }

    public class a extends FilterReader {
        public final StringBuffer b;
        public int c;
        public boolean d;
        public IOException e;

        public a(Reader reader) {
            super(reader);
            this.b = new StringBuffer();
        }

        public final void a(int i) {
            if (i == 10 || i == 13) {
                if (this.c == 13 && i == 10) {
                    int size = Template.this.U.size() - 1;
                    String str = (String) Template.this.U.get(size);
                    ArrayList arrayList = Template.this.U;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(str);
                    stringBuffer.append('\n');
                    arrayList.set(size, stringBuffer.toString());
                } else {
                    this.b.append((char) i);
                    Template.this.U.add(this.b.toString());
                    this.b.setLength(0);
                }
            } else if (i == 9) {
                int length = 8 - (this.b.length() % 8);
                for (int i2 = 0; i2 < length; i2++) {
                    this.b.append(' ');
                }
            } else {
                this.b.append((char) i);
            }
            this.c = i;
        }

        public final IOException b(IOException iOException) {
            if (!this.d) {
                this.e = iOException;
            }
            return iOException;
        }

        @Override
        public void close() throws IOException {
            if (this.b.length() > 0) {
                Template.this.U.add(this.b.toString());
                this.b.setLength(0);
            }
            super.close();
            this.d = true;
        }

        public void d() throws IOException {
            IOException iOException = this.e;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override
        public int read() throws IOException {
            try {
                int i = ((FilterReader) this).in.read();
                a(i);
                return i;
            } catch (IOException e) {
                throw b(e);
            }
        }

        @Override
        public int read(char[] cArr, int i, int i2) throws IOException {
            try {
                int i3 = ((FilterReader) this).in.read(cArr, i, i2);
                for (int i4 = i; i4 < i + i3; i4++) {
                    a(cArr[i4]);
                }
                return i3;
            } catch (IOException e) {
                throw b(e);
            }
        }
    }

    public Template(String str, Reader reader, xe1 xe1Var) {
        this(str, (String) null, reader, xe1Var);
    }

    public Template(String str, String str2, xe1 xe1Var) {
        this(str, new StringReader(str2), xe1Var);
    }

    public Template(String str, String str2, Reader reader, xe1 xe1Var) {
        this(str, str2, reader, xe1Var, null);
    }

    public Template(String str, String str2, Reader reader, xe1 xe1Var, String str3) throws Throwable {
        this(str, str2, xe1Var, true);
        this.N = str3;
        try {
            try {
                a aVar = new a(reader instanceof BufferedReader ? reader : new BufferedReader(reader, 4096));
                try {
                    try {
                        try {
                            xe1 xe1VarT0 = t0();
                            FMParser fMParser = new FMParser(this, aVar, xe1VarT0.K0(), xe1VarT0.U0(), xe1VarT0.L0(), xe1VarT0.G0(), xe1VarT0.F0().intValue());
                            this.J = fMParser;
                            this.M = fMParser.h0();
                            this.Q = this.J.w0();
                            this.R = this.J.v0();
                            this.J = null;
                            aVar.close();
                            aVar.d();
                            wt1.b(this);
                            this.W = Collections.unmodifiableMap(this.W);
                            this.V = Collections.unmodifiableMap(this.V);
                        } catch (TokenMgrError e) {
                            throw e.toParseException(this);
                        }
                    } catch (Throwable th) {
                        this.J = null;
                        throw th;
                    }
                } catch (ParseException e2) {
                    e = e2;
                    e.setTemplateName(E0());
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    reader = aVar;
                    reader.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (ParseException e3) {
            e = e3;
        }
    }
}
