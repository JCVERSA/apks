package org.apache.tools.ant;

import java.io.PrintStream;
import java.io.PrintWriter;

public class BuildException extends RuntimeException {
    private static final long serialVersionUID = -5419014565354664240L;
    private Throwable cause;
    private Location location;

    public BuildException() {
        this.location = Location.UNKNOWN_LOCATION;
    }

    @Override
    public Throwable getCause() {
        return getException();
    }

    public Throwable getException() {
        return this.cause;
    }

    public Location getLocation() {
        return this.location;
    }

    @Override
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.location.toString());
        stringBuffer.append(getMessage());
        return stringBuffer.toString();
    }

    @Override
    public void printStackTrace(PrintStream printStream) {
        synchronized (printStream) {
            try {
                super.printStackTrace(printStream);
                if (this.cause != null) {
                    printStream.println("--- Nested Exception ---");
                    this.cause.printStackTrace(printStream);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public BuildException(String str) {
        super(str);
        this.location = Location.UNKNOWN_LOCATION;
    }

    public BuildException(String str, Throwable th2) {
        super(str);
        this.location = Location.UNKNOWN_LOCATION;
        this.cause = th2;
    }

    public BuildException(String str, Throwable th2, Location location) {
        this(str, th2);
        this.location = location;
    }

    @Override
    public void printStackTrace(PrintWriter printWriter) {
        synchronized (printWriter) {
            try {
                super.printStackTrace(printWriter);
                if (this.cause != null) {
                    printWriter.println("--- Nested Exception ---");
                    this.cause.printStackTrace(printWriter);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public BuildException(Throwable th2) {
        super(th2.toString());
        this.location = Location.UNKNOWN_LOCATION;
        this.cause = th2;
    }

    public BuildException(String str, Location location) {
        super(str);
        Location location2 = Location.UNKNOWN_LOCATION;
        this.location = location;
    }

    public BuildException(Throwable th2, Location location) {
        this(th2);
        this.location = location;
    }
}
