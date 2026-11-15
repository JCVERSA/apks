package freemarker.template;

import defpackage.ifa;
import defpackage.q0d;
import defpackage.t71;
import freemarker.core.Environment;
import freemarker.core.t0;
import freemarker.core.t1;
import freemarker.core.x1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;

public class TemplateException extends Exception {
    private static final String FTL_INSTRUCTION_STACK_TRACE_TITLE = "FTL stack trace (\"~\" means nesting-related):";
    private static final int FTL_STACK_TOP_FEW_MAX_LINES = 6;
    private final transient t0 blamedExpression;
    private String blamedExpressionString;
    private boolean blamedExpressionStringCalculated;
    private Integer columnNumber;
    private String description;
    private transient q0d descriptionBuilder;
    private Integer endColumnNumber;
    private Integer endLineNumber;
    private final transient Environment env;
    private transient ifa[] ftlInstructionStackSnapshot;
    private Integer lineNumber;
    private transient Object lock;
    private transient String message;
    private transient ThreadLocal messageWasAlreadyPrintedForThisTrace;
    private transient String messageWithoutStackTop;
    private boolean positionsCalculated;
    private String renderedFtlInstructionStackSnapshot;
    private String renderedFtlInstructionStackSnapshotTop;
    private String templateName;
    private String templateSourceName;

    public static class a implements c {
        public final PrintStream a;

        public a(PrintStream printStream) {
            this.a = printStream;
        }

        @Override
        public void a(Throwable th) {
            if (th instanceof TemplateException) {
                ((TemplateException) th).printStandardStackTrace(this.a);
            } else {
                th.printStackTrace(this.a);
            }
        }

        @Override
        public void b(Object obj) {
            this.a.print(obj);
        }

        @Override
        public void c(Object obj) {
            this.a.println(obj);
        }

        @Override
        public void d() {
            this.a.println();
        }
    }

    public static class b implements c {
        public final PrintWriter a;

        public b(PrintWriter printWriter) {
            this.a = printWriter;
        }

        @Override
        public void a(Throwable th) {
            if (th instanceof TemplateException) {
                ((TemplateException) th).printStandardStackTrace(this.a);
            } else {
                th.printStackTrace(this.a);
            }
        }

        @Override
        public void b(Object obj) {
            this.a.print(obj);
        }

        @Override
        public void c(Object obj) {
            this.a.println(obj);
        }

        @Override
        public void d() {
            this.a.println();
        }
    }

    public interface c {
        void a(Throwable th);

        void b(Object obj);

        void c(Object obj);

        void d();
    }

    public TemplateException(Environment environment) {
        this((String) null, (Exception) null, environment);
    }

    private void calculatePosition() {
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    t1 t1Var = this.blamedExpression;
                    if (t1Var == null) {
                        t1[] t1VarArr = this.ftlInstructionStackSnapshot;
                        t1Var = (t1VarArr == null || t1VarArr.length == 0) ? null : t1VarArr[0];
                    }
                    if (t1Var != null && t1Var.n() > 0) {
                        Template templateY = t1Var.y();
                        this.templateName = templateY != null ? templateY.y0() : null;
                        this.templateSourceName = templateY != null ? templateY.E0() : null;
                        this.lineNumber = new Integer(t1Var.n());
                        this.columnNumber = new Integer(t1Var.m());
                        this.endLineNumber = new Integer(t1Var.q());
                        this.endColumnNumber = new Integer(t1Var.p());
                    }
                    this.positionsCalculated = true;
                    deleteFTLInstructionStackSnapshotIfNotNeeded();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void deleteFTLInstructionStackSnapshotIfNotNeeded() {
        if (this.renderedFtlInstructionStackSnapshot == null || this.renderedFtlInstructionStackSnapshotTop == null) {
            return;
        }
        if (this.positionsCalculated || this.blamedExpression != null) {
            this.ftlInstructionStackSnapshot = null;
        }
    }

    private String getDescription() {
        String str;
        q0d q0dVar;
        synchronized (this.lock) {
            try {
                if (this.description == null && (q0dVar = this.descriptionBuilder) != null) {
                    ifa failingInstruction = getFailingInstruction();
                    Environment environment = this.env;
                    this.description = q0dVar.k(failingInstruction, environment != null ? environment.A() : true);
                    this.descriptionBuilder = null;
                }
                str = this.description;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private String getFTLInstructionStackTopFew() {
        String string;
        synchronized (this.lock) {
            try {
                ifa[] ifaVarArr = this.ftlInstructionStackSnapshot;
                if (ifaVarArr == null && this.renderedFtlInstructionStackSnapshotTop == null) {
                    return null;
                }
                if (this.renderedFtlInstructionStackSnapshotTop == null) {
                    if (ifaVarArr.length == 0) {
                        string = "";
                    } else {
                        StringWriter stringWriter = new StringWriter();
                        x1.c(this.ftlInstructionStackSnapshot, true, stringWriter);
                        string = stringWriter.toString();
                    }
                    if (this.renderedFtlInstructionStackSnapshotTop == null) {
                        this.renderedFtlInstructionStackSnapshotTop = string;
                        deleteFTLInstructionStackSnapshotIfNotNeeded();
                    }
                }
                return this.renderedFtlInstructionStackSnapshotTop.length() != 0 ? this.renderedFtlInstructionStackSnapshotTop : null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private ifa getFailingInstruction() {
        ifa[] ifaVarArr = this.ftlInstructionStackSnapshot;
        if (ifaVarArr == null || ifaVarArr.length <= 0) {
            return null;
        }
        return ifaVarArr[0];
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        this.lock = new Object();
        objectInputStream.defaultReadObject();
    }

    private void renderMessages() {
        String description = getDescription();
        if (description != null && description.length() != 0) {
            this.messageWithoutStackTop = description;
        } else if (getCause() != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No error description was specified for this error; low-level message: ");
            stringBuffer.append(getCause().getClass().getName());
            stringBuffer.append(": ");
            stringBuffer.append(getCause().getMessage());
            this.messageWithoutStackTop = stringBuffer.toString();
        } else {
            this.messageWithoutStackTop = "[No error description was available.]";
        }
        String fTLInstructionStackTopFew = getFTLInstructionStackTopFew();
        if (fTLInstructionStackTopFew == null) {
            this.message = this.messageWithoutStackTop;
            return;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(this.messageWithoutStackTop);
        stringBuffer2.append("\n\n");
        stringBuffer2.append("----");
        stringBuffer2.append("\n");
        stringBuffer2.append(FTL_INSTRUCTION_STACK_TRACE_TITLE);
        stringBuffer2.append("\n");
        stringBuffer2.append(fTLInstructionStackTopFew);
        stringBuffer2.append("----");
        String string = stringBuffer2.toString();
        this.message = string;
        this.messageWithoutStackTop = string.substring(0, this.messageWithoutStackTop.length());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException, ClassNotFoundException {
        getFTLInstructionStack();
        getFTLInstructionStackTopFew();
        getDescription();
        calculatePosition();
        getBlamedExpressionString();
        objectOutputStream.defaultWriteObject();
    }

    public String getBlamedExpressionString() {
        String str;
        synchronized (this.lock) {
            try {
                if (!this.blamedExpressionStringCalculated) {
                    t0 t0Var = this.blamedExpression;
                    if (t0Var != null) {
                        this.blamedExpressionString = t0Var.o();
                    }
                    this.blamedExpressionStringCalculated = true;
                }
                str = this.blamedExpressionString;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public Exception getCauseException() {
        if (getCause() instanceof Exception) {
            return (Exception) getCause();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Wrapped to Exception: ");
        stringBuffer.append(getCause());
        return new Exception(stringBuffer.toString(), getCause());
    }

    public Integer getColumnNumber() {
        Integer num;
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    calculatePosition();
                }
                num = this.columnNumber;
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    public Integer getEndColumnNumber() {
        Integer num;
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    calculatePosition();
                }
                num = this.endColumnNumber;
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    public Integer getEndLineNumber() {
        Integer num;
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    calculatePosition();
                }
                num = this.endLineNumber;
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    public Environment getEnvironment() {
        return this.env;
    }

    public String getFTLInstructionStack() {
        synchronized (this.lock) {
            try {
                if (this.ftlInstructionStackSnapshot == null && this.renderedFtlInstructionStackSnapshot == null) {
                    return null;
                }
                if (this.renderedFtlInstructionStackSnapshot == null) {
                    StringWriter stringWriter = new StringWriter();
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    x1.c(this.ftlInstructionStackSnapshot, false, printWriter);
                    printWriter.close();
                    if (this.renderedFtlInstructionStackSnapshot == null) {
                        this.renderedFtlInstructionStackSnapshot = stringWriter.toString();
                        deleteFTLInstructionStackSnapshotIfNotNeeded();
                    }
                }
                return this.renderedFtlInstructionStackSnapshot;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Integer getLineNumber() {
        Integer num;
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    calculatePosition();
                }
                num = this.lineNumber;
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    @Override
    public String getMessage() {
        String str;
        ThreadLocal threadLocal = this.messageWasAlreadyPrintedForThisTrace;
        if (threadLocal != null && threadLocal.get() == Boolean.TRUE) {
            return "[... Exception message was already printed; see it above ...]";
        }
        synchronized (this.lock) {
            try {
                if (this.message == null) {
                    renderMessages();
                }
                str = this.message;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public String getMessageWithoutStackTop() {
        String str;
        synchronized (this.lock) {
            try {
                if (this.messageWithoutStackTop == null) {
                    renderMessages();
                }
                str = this.messageWithoutStackTop;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public String getTemplateName() {
        String str;
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    calculatePosition();
                }
                str = this.templateName;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public String getTemplateSourceName() {
        String str;
        synchronized (this.lock) {
            try {
                if (!this.positionsCalculated) {
                    calculatePosition();
                }
                str = this.templateSourceName;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    @Override
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(printStream, true, true, true);
    }

    public void printStandardStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
    }

    public TemplateException(String str, Environment environment) {
        this(str, (Exception) null, environment);
    }

    @Override
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(printWriter, true, true, true);
    }

    public void printStandardStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
    }

    public TemplateException(Exception exc, Environment environment) {
        this((String) null, exc, environment);
    }

    public void printStackTrace(PrintWriter printWriter, boolean z, boolean z2, boolean z3) {
        synchronized (printWriter) {
            printStackTrace(new b(printWriter), z, z2, z3);
        }
    }

    public TemplateException(Throwable th, Environment environment) {
        this((String) null, th, environment);
    }

    public TemplateException(String str, Exception exc, Environment environment) {
        this(str, exc, environment, null, null);
    }

    public TemplateException(String str, Throwable th, Environment environment) {
        this(str, th, environment, null, null);
    }

    public void printStackTrace(PrintStream printStream, boolean z, boolean z2, boolean z3) {
        synchronized (printStream) {
            printStackTrace(new a(printStream), z, z2, z3);
        }
    }

    public TemplateException(Throwable th, Environment environment, t0 t0Var, q0d q0dVar) {
        this(null, th, environment, t0Var, q0dVar);
    }

    private TemplateException(String str, Throwable th, Environment environment, t0 t0Var, q0d q0dVar) {
        super(th);
        this.lock = new Object();
        environment = environment == null ? Environment.y0() : environment;
        this.env = environment;
        this.blamedExpression = t0Var;
        this.descriptionBuilder = q0dVar;
        this.description = str;
        if (environment != null) {
            this.ftlInstructionStackSnapshot = x1.b(environment);
        }
    }

    private void printStackTrace(c cVar, boolean z, boolean z2, boolean z3) {
        synchronized (cVar) {
            if (z) {
                try {
                    cVar.c("FreeMarker template error:");
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z2) {
                String fTLInstructionStack = getFTLInstructionStack();
                if (fTLInstructionStack != null) {
                    cVar.c(getMessageWithoutStackTop());
                    cVar.d();
                    cVar.c("----");
                    cVar.c(FTL_INSTRUCTION_STACK_TRACE_TITLE);
                    cVar.b(fTLInstructionStack);
                    cVar.c("----");
                } else {
                    z2 = false;
                    z3 = true;
                }
            }
            if (z3) {
                if (z2) {
                    cVar.d();
                    cVar.c("Java stack trace (for programmers):");
                    cVar.c("----");
                    synchronized (this.lock) {
                        try {
                            if (this.messageWasAlreadyPrintedForThisTrace == null) {
                                this.messageWasAlreadyPrintedForThisTrace = new ThreadLocal();
                            }
                            this.messageWasAlreadyPrintedForThisTrace.set(Boolean.TRUE);
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    try {
                        cVar.a(this);
                        this.messageWasAlreadyPrintedForThisTrace.set(Boolean.FALSE);
                    } catch (Throwable th3) {
                        this.messageWasAlreadyPrintedForThisTrace.set(Boolean.FALSE);
                        throw th3;
                    }
                } else {
                    cVar.a(this);
                }
                if (getCause() != null && getCause().getCause() == null) {
                    try {
                        Throwable th4 = (Throwable) getCause().getClass().getMethod("getRootCause", t71.b).invoke(getCause(), t71.a);
                        if (th4 != null) {
                            cVar.c("ServletException root cause: ");
                            cVar.a(th4);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }
}
