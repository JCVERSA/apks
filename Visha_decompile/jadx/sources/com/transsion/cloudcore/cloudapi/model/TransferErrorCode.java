package com.transsion.cloudcore.cloudapi.model;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"¨\u0006#"}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;", "", TrackingKey.CODE, "", "message", "", MethodDecl.initName, "(Ljava/lang/String;IILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "SUCCESS", "UNKNOWN", "SERVER", "NETWORK_ERROR", "PARENT_FILE_NOT_EXIST", "CREATE_FILE_ERROR", "PATH_RULE_ERROR", "TMP_FILE_NOT_EXIST", "CREATE_TEMP_FILE_ERROR", "STORAGE_NOT_ENOUGH", "CHECK_FILE_HASH_ERROR", "TOKEN_INVALID", "UNIQUEID_INVALID", "PARAM_INVALID", "FILE_NOT_EXIST", "PERMISSION_DENIED", "TASK_CANCELED", "TASK_PAUSED", "TASK_ALREADY_EXISTS", "TASK_NOT_FOUND", "INITIALIZATION_ERROR", "VIDEOTRANSCODE_STATUS_ERROR", "RETRY_VIDEOTRANSCODE_ERROR", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum TransferErrorCode {
    SUCCESS(0, "success"),
    UNKNOWN(1000, "unknown error"),
    SERVER(1001, "server error"),
    NETWORK_ERROR(1002, "network error"),
    PARENT_FILE_NOT_EXIST(1100, "upload parent file not exist"),
    CREATE_FILE_ERROR(1101, "create upload file error"),
    PATH_RULE_ERROR(1200, "file path invalid"),
    TMP_FILE_NOT_EXIST(1201, "download temp file not exist"),
    CREATE_TEMP_FILE_ERROR(1202, "create download temp file error"),
    STORAGE_NOT_ENOUGH(1203, "local storage space not enough"),
    CHECK_FILE_HASH_ERROR(1204, "file crc64_hash error"),
    TOKEN_INVALID(1300, "token invalid"),
    UNIQUEID_INVALID(1301, "uniqueId invalid"),
    PARAM_INVALID(1302, "parameter invalid"),
    FILE_NOT_EXIST(1303, "file not exist"),
    PERMISSION_DENIED(1304, "permission denied"),
    TASK_CANCELED(1305, "task canceled"),
    TASK_PAUSED(1306, "task paused"),
    TASK_ALREADY_EXISTS(1307, "task already exists"),
    TASK_NOT_FOUND(1308, "task not found"),
    INITIALIZATION_ERROR(1309, "initialization error"),
    VIDEOTRANSCODE_STATUS_ERROR(1400, "Transcode statues error"),
    RETRY_VIDEOTRANSCODE_ERROR(1401, "Retry transcode error");

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
