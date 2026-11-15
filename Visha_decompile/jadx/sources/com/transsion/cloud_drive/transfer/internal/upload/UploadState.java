package com.transsion.cloud_drive.transfer.internal.upload;

import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;", "", "(Ljava/lang/String;I)V", "FILE_CREATE", "PRE_HASH_COLLISION", "RESTORE_PARENT", "CRC_HASH", "GET_URL", "UPLOADING", "FILE_COMPLETE", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum UploadState {
    FILE_CREATE,
    PRE_HASH_COLLISION,
    RESTORE_PARENT,
    CRC_HASH,
    GET_URL,
    UPLOADING,
    FILE_COMPLETE;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
