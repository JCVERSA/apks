package com.amazonaws.services.s3.model;

public class EmailAddressGrantee implements Grantee {

    private String f18081a = null;

    public EmailAddressGrantee(String str) {
        setIdentifier(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EmailAddressGrantee emailAddressGrantee = (EmailAddressGrantee) obj;
        String str = this.f18081a;
        if (str == null) {
            if (emailAddressGrantee.f18081a != null) {
                return false;
            }
        } else if (!str.equals(emailAddressGrantee.f18081a)) {
            return false;
        }
        return true;
    }

    @Override
    public String getIdentifier() {
        return this.f18081a;
    }

    @Override
    public String getTypeIdentifier() {
        return "emailAddress";
    }

    public int hashCode() {
        String str = this.f18081a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    @Override
    public void setIdentifier(String str) {
        this.f18081a = str;
    }

    public String toString() {
        return this.f18081a;
    }
}
