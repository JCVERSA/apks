package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;

public class EncryptionChunk extends Chunk {
    private String keyID;
    private String licenseURL;
    private String protectionType;
    private String secretData;
    private final ArrayList<String> strings;

    public EncryptionChunk(BigInteger bigInteger) {
        super(GUID.GUID_CONTENT_ENCRYPTION, bigInteger);
        this.strings = new ArrayList<>();
        this.secretData = "";
        this.protectionType = "";
        this.keyID = "";
        this.licenseURL = "";
    }

    public void addString(String str) {
        this.strings.add(str);
    }

    public String getKeyID() {
        return this.keyID;
    }

    public String getLicenseURL() {
        return this.licenseURL;
    }

    public String getProtectionType() {
        return this.protectionType;
    }

    public String getSecretData() {
        return this.secretData;
    }

    public Collection<String> getStrings() {
        return new ArrayList(this.strings);
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        StringBuilder sb2 = new StringBuilder();
        String str2 = Utils.LINE_SEPARATOR;
        sb2.append(str2);
        sb2.append(str);
        sb2.append(" Encryption:");
        sb2.append(str2);
        sb.insert(0, sb2.toString());
        sb.append(str);
        sb.append("\t|->keyID ");
        sb.append(this.keyID);
        sb.append(str2);
        sb.append(str);
        sb.append("\t|->secretData ");
        sb.append(this.secretData);
        sb.append(str2);
        sb.append(str);
        sb.append("\t|->protectionType ");
        sb.append(this.protectionType);
        sb.append(str2);
        sb.append(str);
        sb.append("\t|->licenseURL ");
        sb.append(this.licenseURL);
        sb.append(str2);
        this.strings.iterator();
        for (String str3 : this.strings) {
            sb.append(str);
            sb.append("   |->");
            sb.append(str3);
            sb.append(Utils.LINE_SEPARATOR);
        }
        return sb.toString();
    }

    public void setKeyID(String str) {
        this.keyID = str;
    }

    public void setLicenseURL(String str) {
        this.licenseURL = str;
    }

    public void setProtectionType(String str) {
        this.protectionType = str;
    }

    public void setSecretData(String str) {
        this.secretData = str;
    }
}
