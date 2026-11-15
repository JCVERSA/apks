package com.cloud.hisavana.net;

import androidx.browser.trusted.sharing.ShareTarget;
import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/cloud/hisavana/net/ContentType;", "", ES6Iterator.VALUE_PROPERTY, "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "FORM", "MULTIPART", "JSON", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum ContentType {
    FORM("application/x-www-from-urlencoded"),
    MULTIPART(ShareTarget.ENCODING_TYPE_MULTIPART),
    JSON("application/json");

    private static final db3 $ENTRIES = a.a(values());
    private final String value;

    ContentType(String str) {
        this.value = str + ";charset=utf-8";
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    @Override
    public String toString() {
        return this.value;
    }
}
