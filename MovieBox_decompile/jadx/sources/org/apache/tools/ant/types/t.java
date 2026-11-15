package org.apache.tools.ant.types;

import java.io.InputStream;
import java.math.BigInteger;
import java.util.Iterator;

public class t extends e implements Cloneable, Comparable, u {

    protected static final int f68372f = h("Resource".getBytes());

    private static final int f68373g = h("null name".getBytes());

    private String f68374a;

    private Boolean f68375b;

    private Long f68376c;

    private Boolean f68377d;

    private Long f68378e;

    public t() {
        this.f68374a = null;
        this.f68375b = null;
        this.f68376c = null;
        this.f68377d = null;
        this.f68378e = null;
    }

    protected static int h(byte[] bArr) {
        return new BigInteger(bArr).intValue();
    }

    public boolean a() {
        return isReference() && ((t) getCheckedRef()).a();
    }

    @Override
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new UnsupportedOperationException("CloneNotSupportedException for a Resource caught. Derived classes must support cloning.");
        }
    }

    public int compareTo(Object obj) {
        if (isReference()) {
            return ((Comparable) getCheckedRef()).compareTo(obj);
        }
        if (obj instanceof t) {
            return toString().compareTo(obj.toString());
        }
        throw new IllegalArgumentException("Can only be compared with Resources");
    }

    public InputStream e() {
        if (isReference()) {
            return ((t) getCheckedRef()).e();
        }
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (isReference()) {
            return getCheckedRef().equals(obj);
        }
        return obj.getClass().equals(getClass()) && compareTo(obj) == 0;
    }

    public long g() {
        Long l10;
        if (isReference()) {
            return ((t) getCheckedRef()).g();
        }
        if (!k() || (l10 = this.f68376c) == null) {
            return 0L;
        }
        long jLongValue = l10.longValue();
        if (jLongValue < 0) {
            return 0L;
        }
        return jLongValue;
    }

    public String getName() {
        return isReference() ? ((t) getCheckedRef()).getName() : this.f68374a;
    }

    public int hashCode() {
        if (isReference()) {
            return getCheckedRef().hashCode();
        }
        String name = getName();
        return f68372f * (name == null ? f68373g : name.hashCode());
    }

    public long i() {
        if (isReference()) {
            return ((t) getCheckedRef()).i();
        }
        if (!k()) {
            return 0L;
        }
        Long l10 = this.f68378e;
        if (l10 != null) {
            return l10.longValue();
        }
        return -1L;
    }

    @Override
    public Iterator iterator() {
        return isReference() ? ((t) getCheckedRef()).iterator() : new s(this);
    }

    public boolean j() {
        if (isReference()) {
            return ((t) getCheckedRef()).j();
        }
        Boolean bool = this.f68377d;
        return bool != null && bool.booleanValue();
    }

    public boolean k() {
        if (isReference()) {
            return ((t) getCheckedRef()).k();
        }
        Boolean bool = this.f68375b;
        return bool == null || bool.booleanValue();
    }

    public void l(boolean z10) {
        checkAttributesAllowed();
        this.f68377d = z10 ? Boolean.TRUE : Boolean.FALSE;
    }

    public void m(boolean z10) {
        checkAttributesAllowed();
        this.f68375b = z10 ? Boolean.TRUE : Boolean.FALSE;
    }

    public void n(long j10) {
        checkAttributesAllowed();
        this.f68376c = new Long(j10);
    }

    public void o(String str) {
        checkAttributesAllowed();
        this.f68374a = str;
    }

    public void p(long j10) {
        checkAttributesAllowed();
        if (j10 <= -1) {
            j10 = -1;
        }
        this.f68378e = new Long(j10);
    }

    @Override
    public void setRefid(r rVar) {
        if (this.f68374a != null || this.f68375b != null || this.f68376c != null || this.f68377d != null || this.f68378e != null) {
            throw tooManyAttributes();
        }
        super.setRefid(rVar);
    }

    @Override
    public int size() {
        if (isReference()) {
            return ((t) getCheckedRef()).size();
        }
        return 1;
    }

    @Override
    public String toString() {
        if (isReference()) {
            return getCheckedRef().toString();
        }
        String name = getName();
        return name == null ? "(anonymous)" : name;
    }

    public t(String str) {
        this(str, false, 0L, false);
    }

    public t(String str, boolean z10, long j10, boolean z11) {
        this(str, z10, j10, z11, -1L);
    }

    public t(String str, boolean z10, long j10, boolean z11, long j11) {
        this.f68375b = null;
        this.f68376c = null;
        this.f68377d = null;
        this.f68378e = null;
        this.f68374a = str;
        o(str);
        m(z10);
        n(j10);
        l(z11);
        p(j11);
    }
}
