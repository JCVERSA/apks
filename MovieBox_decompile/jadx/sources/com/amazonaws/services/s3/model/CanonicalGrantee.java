package com.amazonaws.services.s3.model;

import java.io.Serializable;

public class CanonicalGrantee implements Grantee, Serializable {

    private String f18076id = null;
    private String displayName = null;

    public CanonicalGrantee(String str) {
        setIdentifier(str);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CanonicalGrantee) {
            return this.f18076id.equals(((CanonicalGrantee) obj).f18076id);
        }
        return false;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    @Override
    public String getIdentifier() {
        return this.f18076id;
    }

    @Override
    public String getTypeIdentifier() {
        return "id";
    }

    public int hashCode() {
        return this.f18076id.hashCode();
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    @Override
    public void setIdentifier(String str) {
        this.f18076id = str;
    }
}
