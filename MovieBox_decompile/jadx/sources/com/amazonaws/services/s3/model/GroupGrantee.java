package com.amazonaws.services.s3.model;

public enum GroupGrantee implements Grantee {
    AllUsers("http://acs.amazonaws.com/groups/global/AllUsers"),
    AuthenticatedUsers("http://acs.amazonaws.com/groups/global/AuthenticatedUsers"),
    LogDelivery("http://acs.amazonaws.com/groups/s3/LogDelivery");

    private String groupUri;

    GroupGrantee(String str) {
        this.groupUri = str;
    }

    public static GroupGrantee parseGroupGrantee(String str) {
        for (GroupGrantee groupGrantee : values()) {
            if (groupGrantee.groupUri.equals(str)) {
                return groupGrantee;
            }
        }
        return null;
    }

    @Override
    public String getIdentifier() {
        return this.groupUri;
    }

    @Override
    public String getTypeIdentifier() {
        return "uri";
    }

    @Override
    public void setIdentifier(String str) {
        throw new UnsupportedOperationException("Group grantees have preset identifiers that cannot be modified.");
    }

    @Override
    public String toString() {
        return "GroupGrantee [" + this.groupUri + "]";
    }
}
