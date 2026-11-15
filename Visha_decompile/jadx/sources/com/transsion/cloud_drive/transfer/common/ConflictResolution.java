package com.transsion.cloud_drive.transfer.common;

import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;", "", "(Ljava/lang/String;I)V", "RENAME", "REPLACE", "CANCEL", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum ConflictResolution {
    RENAME,
    REPLACE,
    CANCEL;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
