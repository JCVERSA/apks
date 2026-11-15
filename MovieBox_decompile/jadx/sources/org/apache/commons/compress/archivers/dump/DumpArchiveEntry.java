package org.apache.commons.compress.archivers.dump;

import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

public class DumpArchiveEntry implements cz.a {

    private String f67951a;

    private TYPE f67952b = TYPE.UNKNOWN;

    private Set f67953c = Collections.emptySet();

    private final a f67954d = new a();

    private String f67955e;

    private int f67956f;

    public enum PERMISSION {
        SETUID(2048),
        SETGUI(1024),
        STICKY(512),
        USER_READ(256),
        USER_WRITE(128),
        USER_EXEC(64),
        GROUP_READ(32),
        GROUP_WRITE(16),
        GROUP_EXEC(8),
        WORLD_READ(4),
        WORLD_WRITE(2),
        WORLD_EXEC(1);

        private int code;

        PERMISSION(int i10) {
            this.code = i10;
        }

        public static Set<PERMISSION> find(int i10) {
            HashSet hashSet = new HashSet();
            for (PERMISSION permission : values()) {
                int i11 = permission.code;
                if ((i10 & i11) == i11) {
                    hashSet.add(permission);
                }
            }
            return hashSet.isEmpty() ? Collections.emptySet() : EnumSet.copyOf((Collection) hashSet);
        }
    }

    public enum TYPE {
        WHITEOUT(14),
        SOCKET(12),
        LINK(10),
        FILE(8),
        BLKDEV(6),
        DIRECTORY(4),
        CHRDEV(2),
        FIFO(1),
        UNKNOWN(15);

        private int code;

        TYPE(int i10) {
            this.code = i10;
        }

        public static TYPE find(int i10) {
            TYPE type = UNKNOWN;
            for (TYPE type2 : values()) {
                if (i10 == type2.code) {
                    type = type2;
                }
            }
            return type;
        }
    }

    static class a {

        private final byte[] f67957a = new byte[512];

        a() {
        }
    }

    public String a() {
        return this.f67951a;
    }

    String b() {
        return this.f67955e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DumpArchiveEntry dumpArchiveEntry = (DumpArchiveEntry) obj;
        return dumpArchiveEntry.f67954d != null && this.f67956f == dumpArchiveEntry.f67956f;
    }

    public int hashCode() {
        return this.f67956f;
    }

    public String toString() {
        return a();
    }
}
