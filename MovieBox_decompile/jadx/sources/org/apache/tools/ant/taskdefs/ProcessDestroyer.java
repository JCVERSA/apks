package org.apache.tools.ant.taskdefs;

import com.google.android.gms.location.DeviceOrientationRequest;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Vector;

class ProcessDestroyer implements Runnable {
    private static final int TWENTY_SECONDS = 20000;
    static Class class$java$lang$IllegalStateException;
    static Class class$java$lang$Runtime;
    static Class class$java$lang$Thread;
    private Method addShutdownHookMethod;
    private Method removeShutdownHookMethod;
    private Vector processes = new Vector();
    private ProcessDestroyerImpl destroyProcessThread = null;
    private boolean added = false;
    private boolean running = false;

    private class ProcessDestroyerImpl extends Thread {
        private boolean shouldDestroy;
        private final ProcessDestroyer this$0;

        public ProcessDestroyerImpl(ProcessDestroyer processDestroyer) {
            super("ProcessDestroyer Shutdown Hook");
            this.this$0 = processDestroyer;
            this.shouldDestroy = true;
        }

        @Override
        public void run() {
            if (this.shouldDestroy) {
                this.this$0.run();
            }
        }

        public void setShouldDestroy(boolean z10) {
            this.shouldDestroy = z10;
        }
    }

    ProcessDestroyer() {
        try {
            Class<?> clsClass$ = class$java$lang$Thread;
            if (clsClass$ == null) {
                clsClass$ = class$("java.lang.Thread");
                class$java$lang$Thread = clsClass$;
            }
            Class<?>[] clsArr = {clsClass$};
            Class clsClass$2 = class$java$lang$Runtime;
            if (clsClass$2 == null) {
                clsClass$2 = class$("java.lang.Runtime");
                class$java$lang$Runtime = clsClass$2;
            }
            this.addShutdownHookMethod = clsClass$2.getMethod("addShutdownHook", clsArr);
            Class clsClass$3 = class$java$lang$Runtime;
            if (clsClass$3 == null) {
                clsClass$3 = class$("java.lang.Runtime");
                class$java$lang$Runtime = clsClass$3;
            }
            this.removeShutdownHookMethod = clsClass$3.getMethod("removeShutdownHook", clsArr);
        } catch (NoSuchMethodException unused) {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void addShutdownHook() {
        if (this.addShutdownHookMethod == null || this.running) {
            return;
        }
        ProcessDestroyerImpl processDestroyerImpl = new ProcessDestroyerImpl(this);
        this.destroyProcessThread = processDestroyerImpl;
        try {
            this.addShutdownHookMethod.invoke(Runtime.getRuntime(), processDestroyerImpl);
            this.added = true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (InvocationTargetException e11) {
            Throwable targetException = e11.getTargetException();
            if (targetException != null) {
                Class<?> cls = targetException.getClass();
                Class<?> clsClass$ = class$java$lang$IllegalStateException;
                if (clsClass$ == null) {
                    clsClass$ = class$("java.lang.IllegalStateException");
                    class$java$lang$IllegalStateException = clsClass$;
                }
                if (cls == clsClass$) {
                    this.running = true;
                    return;
                }
            }
            e11.printStackTrace();
        }
    }

    static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004b  */
    private void removeShutdownHook() {
        Method method = this.removeShutdownHookMethod;
        if (method == null || !this.added || this.running) {
            return;
        }
        try {
            if (!((Boolean) method.invoke(Runtime.getRuntime(), this.destroyProcessThread)).booleanValue()) {
                System.err.println("Could not remove shutdown hook");
            }
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (InvocationTargetException e11) {
            Throwable targetException = e11.getTargetException();
            if (targetException != null) {
                Class<?> cls = targetException.getClass();
                Class<?> clsClass$ = class$java$lang$IllegalStateException;
                if (clsClass$ == null) {
                    clsClass$ = class$("java.lang.IllegalStateException");
                    class$java$lang$IllegalStateException = clsClass$;
                }
                if (cls == clsClass$) {
                    this.running = true;
                } else {
                    e11.printStackTrace();
                }
            } else {
                e11.printStackTrace();
            }
        }
        this.destroyProcessThread.setShouldDestroy(false);
        if (!this.destroyProcessThread.getThreadGroup().isDestroyed()) {
            this.destroyProcessThread.start();
        }
        try {
            this.destroyProcessThread.join(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT);
        } catch (InterruptedException unused) {
        }
        this.destroyProcessThread = null;
        this.added = false;
    }

    public boolean add(Process process) {
        boolean zContains;
        synchronized (this.processes) {
            try {
                if (this.processes.size() == 0) {
                    addShutdownHook();
                }
                this.processes.addElement(process);
                zContains = this.processes.contains(process);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zContains;
    }

    public boolean isAddedAsShutdownHook() {
        return this.added;
    }

    public boolean remove(Process process) {
        boolean zRemoveElement;
        synchronized (this.processes) {
            try {
                zRemoveElement = this.processes.removeElement(process);
                if (zRemoveElement && this.processes.size() == 0) {
                    removeShutdownHook();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zRemoveElement;
    }

    @Override
    public void run() {
        synchronized (this.processes) {
            try {
                this.running = true;
                Enumeration enumerationElements = this.processes.elements();
                while (enumerationElements.hasMoreElements()) {
                    ((Process) enumerationElements.nextElement()).destroy();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
