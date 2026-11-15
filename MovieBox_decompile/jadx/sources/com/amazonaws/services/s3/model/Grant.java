package com.amazonaws.services.s3.model;

public class Grant {

    private Grantee f18088a;

    private Permission f18089b;

    public Grant(Grantee grantee, Permission permission) {
        this.f18088a = grantee;
        this.f18089b = permission;
    }

    public Grantee a() {
        return this.f18088a;
    }

    public Permission b() {
        return this.f18089b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Grant grant = (Grant) obj;
        Grantee grantee = this.f18088a;
        if (grantee == null) {
            if (grant.f18088a != null) {
                return false;
            }
        } else if (!grantee.equals(grant.f18088a)) {
            return false;
        }
        return this.f18089b == grant.f18089b;
    }

    public int hashCode() {
        Grantee grantee = this.f18088a;
        int iHashCode = ((grantee == null ? 0 : grantee.hashCode()) + 31) * 31;
        Permission permission = this.f18089b;
        return iHashCode + (permission != null ? permission.hashCode() : 0);
    }

    public String toString() {
        return "Grant [grantee=" + this.f18088a + ", permission=" + this.f18089b + "]";
    }
}
