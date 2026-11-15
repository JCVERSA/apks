package com.transsion.cloud_drive.transfer.common;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;", "", TrackingKey.CODE, "", "message", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "SUCCESS", "UNKNOWN", "SERVER", "NETWORK_ERROR", "NO_NETWORK", "REQUEST_FAIL", "AUTH_ERROR", "PARENT_FILE_NOT_EXIST", "CREATE_FILE_ERROR", "FILE_NOT_FOUND_ERROR", "RESTORE_PARENT_ERROR", "GET_UPLOAD_URL_ERROR", "UPLOAD_FAIL", "PATH_RULE_ERROR", "TMP_FILE_NOT_EXIST", "CREATE_TEMP_FILE_ERROR", "STORAGE_NOT_ENOUGH", "CHECK_FILE_HASH_ERROR", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum TransferErrorCode {
    SUCCESS(0, "success"),
    UNKNOWN(1000, "unknown error"),
    SERVER(1001, "server error"),
    NETWORK_ERROR(1002, "network error"),
    NO_NETWORK(1003, "no network"),
    REQUEST_FAIL(1004, "request fail"),
    AUTH_ERROR(1005, "authentication failed"),
    PARENT_FILE_NOT_EXIST(2000, "upload parent file not exist"),
    CREATE_FILE_ERROR(2001, "create upload file error"),
    FILE_NOT_FOUND_ERROR(2002, "file not found"),
    RESTORE_PARENT_ERROR(2003, "restore parent fail"),
    GET_UPLOAD_URL_ERROR(2004, "get upload url fail"),
    UPLOAD_FAIL(2005, "upload fail"),
    PATH_RULE_ERROR(3000, "file path invalid"),
    TMP_FILE_NOT_EXIST(3001, "download temp file not exist"),
    CREATE_TEMP_FILE_ERROR(3002, "create download temp file error"),
    STORAGE_NOT_ENOUGH(3003, "local storage space not enough"),
    CHECK_FILE_HASH_ERROR(3004, "file crc64_hash error");

    private static final db3 $ENTRIES = a.a(values());
    private final int code;
    private final String message;

    TransferErrorCode(int i, String str) {
        this.code = i;
        this.message = str;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }
}
