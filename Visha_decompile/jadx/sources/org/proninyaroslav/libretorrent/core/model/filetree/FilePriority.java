package org.proninyaroslav.libretorrent.core.model.filetree;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Serializable;
import org.proninyaroslav.libretorrent.core.model.data.Priority;

public class FilePriority implements Serializable {
    private int priority;
    private Type type;

    public static class AnonymousClass1 {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[Type.values().length];
            b = iArr;
            try {
                iArr[Type.IGNORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[Type.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[Type.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Priority.values().length];
            a = iArr2;
            try {
                iArr2[Priority.IGNORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Priority.LOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Priority.TWO.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[Priority.THREE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[Priority.DEFAULT.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[Priority.FIVE.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[Priority.SIX.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[Priority.TOP_PRIORITY.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum Type {
        MIXED,
        IGNORE,
        NORMAL,
        HIGH
    }

    public FilePriority(Priority priority) {
        this.priority = priority.value();
        this.type = typeFrom(priority);
    }

    private static int priorityFrom(Type type) {
        int i = AnonymousClass1.b[type.ordinal()];
        if (i == 1) {
            return Priority.IGNORE.value();
        }
        if (i == 2) {
            return Priority.DEFAULT.value();
        }
        if (i != 3) {
            return -1;
        }
        return Priority.TOP_PRIORITY.value();
    }

    public static Type typeFrom(Priority priority) {
        switch (AnonymousClass1.a[priority.ordinal()]) {
            case 1:
                return Type.IGNORE;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return Type.NORMAL;
            case 8:
                return Type.HIGH;
            default:
                return null;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof FilePriority)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        FilePriority filePriority = (FilePriority) obj;
        return this.priority == filePriority.priority && this.type.equals(filePriority.getType());
    }

    public Priority getPriority() {
        return Priority.fromValue(this.priority);
    }

    public Type getType() {
        return this.type;
    }

    @NonNull
    public String toString() {
        return "FilePriority{priority=" + this.priority + ", type=" + this.type + '}';
    }

    public FilePriority(Type type) {
        this.priority = priorityFrom(type);
        this.type = type;
    }
}
