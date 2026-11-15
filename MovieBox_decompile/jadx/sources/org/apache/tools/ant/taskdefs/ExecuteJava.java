package org.apache.tools.ant.taskdefs;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.q;
import org.apache.tools.ant.types.o;
import org.apache.tools.ant.util.Watchdog;
import org.apache.tools.ant.util.r;

public class ExecuteJava implements Runnable, r {
    static Class array$Ljava$lang$String;
    private org.apache.tools.ant.types.c javaCommand = null;
    private org.apache.tools.ant.types.m classpath = null;
    private org.apache.tools.ant.types.d.a sysProperties = null;
    private o perm = null;
    private Method main = null;
    private Long timeout = null;
    private volatile Throwable caught = null;
    private volatile boolean timedOut = false;
    private Thread thread = null;

    static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static void setupCommandLineForVMS(g gVar, String[] strArr) throws Throwable {
        gVar.t(true);
        try {
            String[] strArr2 = new String[strArr.length - 1];
            System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
            File fileC = org.apache.tools.ant.util.f.c(strArr2);
            fileC.deleteOnExit();
            gVar.p(new String[]{strArr[0], "-V", fileC.getPath()});
        } catch (IOException unused) {
            throw new BuildException("Failed to create a temporary file for \"-V\" switch");
        }
    }

    public void execute(Project project) throws ClassNotFoundException, BuildException {
        org.apache.tools.ant.a aVar;
        Class<?> cls;
        String strK = this.javaCommand.k();
        org.apache.tools.ant.a aVar2 = null;
        try {
            try {
                org.apache.tools.ant.types.d.a aVar3 = this.sysProperties;
                if (aVar3 != null) {
                    aVar3.i();
                }
                try {
                    org.apache.tools.ant.types.m mVar = this.classpath;
                    if (mVar == null) {
                        cls = Class.forName(strK);
                        aVar = null;
                    } else {
                        org.apache.tools.ant.a aVarG = project.g(mVar);
                        try {
                            aVarG.F(project.o());
                            aVarG.G(false);
                            aVarG.e();
                            aVarG.E(true);
                            aVarG.I();
                            aVarG.p(strK);
                            aVar = aVarG;
                            cls = Class.forName(strK, true, aVarG);
                        } catch (ClassNotFoundException unused) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Could not find ");
                            stringBuffer.append(strK);
                            stringBuffer.append(".");
                            stringBuffer.append(" Make sure you have it in your");
                            stringBuffer.append(" classpath");
                            throw new BuildException(stringBuffer.toString());
                        } catch (SecurityException e10) {
                            throw e10;
                        } catch (ThreadDeath e11) {
                            throw e11;
                        } catch (BuildException e12) {
                            throw e12;
                        } catch (Throwable th2) {
                            th = th2;
                            throw new BuildException(th);
                        }
                    }
                    try {
                        Class<?> clsClass$ = array$Ljava$lang$String;
                        if (clsClass$ == null) {
                            clsClass$ = class$("[Ljava.lang.String;");
                            array$Ljava$lang$String = clsClass$;
                        }
                        Method method = cls.getMethod("main", clsClass$);
                        this.main = method;
                        if (method == null) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Could not find main() method in ");
                            stringBuffer2.append(strK);
                            throw new BuildException(stringBuffer2.toString());
                        }
                        if ((method.getModifiers() & 8) == 0) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("main() method in ");
                            stringBuffer3.append(strK);
                            stringBuffer3.append(" is not declared static");
                            throw new BuildException(stringBuffer3.toString());
                        }
                        if (this.timeout == null) {
                            run();
                        } else {
                            this.thread = new Thread(this, "ExecuteJava");
                            project.A(this.thread, project.v(Thread.currentThread()));
                            this.thread.setDaemon(true);
                            Watchdog watchdog = new Watchdog(this.timeout.longValue());
                            watchdog.addTimeoutObserver(this);
                            synchronized (this) {
                                this.thread.start();
                                watchdog.start();
                                try {
                                    wait();
                                } catch (InterruptedException unused2) {
                                }
                                if (this.timedOut) {
                                    project.x("Timeout: sub-process interrupted", 1);
                                } else {
                                    this.thread = null;
                                    watchdog.stop();
                                }
                            }
                        }
                        if (this.caught != null) {
                            throw this.caught;
                        }
                        if (aVar != null) {
                            aVar.C();
                            aVar.j();
                        }
                        org.apache.tools.ant.types.d.a aVar4 = this.sysProperties;
                        if (aVar4 != null) {
                            aVar4.g();
                        }
                    } catch (SecurityException e13) {
                        throw e13;
                    } catch (ThreadDeath e14) {
                        throw e14;
                    } catch (BuildException e15) {
                        throw e15;
                    } catch (Throwable th3) {
                        th = th3;
                        throw new BuildException(th);
                    }
                } catch (ClassNotFoundException unused3) {
                }
            } catch (Throwable th4) {
                if (0 != 0) {
                    aVar2.C();
                    aVar2.j();
                }
                org.apache.tools.ant.types.d.a aVar5 = this.sysProperties;
                if (aVar5 != null) {
                    aVar5.g();
                }
                throw th4;
            }
        } catch (SecurityException e16) {
        } catch (ThreadDeath e17) {
        } catch (BuildException e18) {
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public int fork(q qVar) throws Throwable {
        org.apache.tools.ant.types.d dVar = new org.apache.tools.ant.types.d();
        dVar.n(this.javaCommand.k());
        for (String str : this.javaCommand.i()) {
            dVar.e().g(str);
        }
        if (this.classpath != null) {
            dVar.g(qVar.getProject()).i(this.classpath);
        }
        org.apache.tools.ant.types.d.a aVar = this.sysProperties;
        if (aVar != null) {
            dVar.b(aVar);
        }
        m mVar = new m(qVar);
        h hVarE = mVar.e();
        Long l10 = this.timeout;
        g gVar = new g(hVarE, l10 == null ? null : new i(l10.longValue()));
        gVar.o(qVar.getProject());
        if (lz.a.a("openvms")) {
            setupCommandLineForVMS(gVar, dVar.k());
        } else {
            gVar.p(dVar.k());
        }
        try {
            try {
                int iF = gVar.f();
                mVar.d();
                this.timedOut = gVar.l();
                return iF;
            } catch (IOException e10) {
                throw new BuildException(e10);
            }
        } catch (Throwable th2) {
            this.timedOut = gVar.l();
            throw th2;
        }
    }

    public synchronized boolean killedProcess() {
        return this.timedOut;
    }

    @Override
    public void run() {
        Object[] objArr = {this.javaCommand.i()};
        try {
            try {
                try {
                    o oVar = this.perm;
                    if (oVar != null) {
                        oVar.j();
                    }
                    this.main.invoke(null, objArr);
                    o oVar2 = this.perm;
                    if (oVar2 != null) {
                        oVar2.i();
                    }
                    synchronized (this) {
                        notifyAll();
                    }
                } catch (InvocationTargetException e10) {
                    Throwable targetException = e10.getTargetException();
                    if (!(targetException instanceof InterruptedException)) {
                        this.caught = targetException;
                    }
                    o oVar3 = this.perm;
                    if (oVar3 != null) {
                        oVar3.i();
                    }
                    synchronized (this) {
                        notifyAll();
                    }
                }
            } catch (Throwable th2) {
                this.caught = th2;
                o oVar4 = this.perm;
                if (oVar4 != null) {
                    oVar4.i();
                }
                synchronized (this) {
                    notifyAll();
                }
            }
        } catch (Throwable th3) {
            o oVar5 = this.perm;
            if (oVar5 != null) {
                oVar5.i();
            }
            synchronized (this) {
                notifyAll();
                throw th3;
            }
        }
    }

    public void setClasspath(org.apache.tools.ant.types.m mVar) {
        this.classpath = mVar;
    }

    public void setJavaCommand(org.apache.tools.ant.types.c cVar) {
        this.javaCommand = cVar;
    }

    public void setOutput(PrintStream printStream) {
    }

    public void setPermissions(o oVar) {
        this.perm = oVar;
    }

    public void setSystemProperties(org.apache.tools.ant.types.d.a aVar) {
        this.sysProperties = aVar;
    }

    public void setTimeout(Long l10) {
        this.timeout = l10;
    }

    @Override
    public synchronized void timeoutOccured(Watchdog watchdog) {
        try {
            if (this.thread != null) {
                this.timedOut = true;
                this.thread.interrupt();
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
