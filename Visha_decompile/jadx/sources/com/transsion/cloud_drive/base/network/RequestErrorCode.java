package com.transsion.cloud_drive.base.network;

import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import defpackage.db3;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b(\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,¨\u0006-"}, d2 = {"Lcom/transsion/cloud_drive/base/network/RequestErrorCode;", "", TrackingKey.CODE, "", "message", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "SUCCESS", "HTTP_ERROR", "PARAM_VERIFY_FAIL", "NO_PERMISSION", "LOGIN_OUT", "SIGN_VERIFICATION_FAILED", "DECRYPTION_FAILURE", "SYSTEM_ERROR", "SERVICE_UNAVAILABLE", "FREQUENTLY_REQUEST", "HEADER_VERIFY_FAIL", "CLOUD_ERROR", "CLOUD_PARAM_ERROR", "CLOUD_SYNC_CONFIRM_ERROR", "CLOUD_DATA_ERROR", "CLOUD_RECORD_NULL_ERROR", "CLOUD_OPERATE_TYPE_NULL_ERROR", "CLOUD_OPERATE_VERSION_ERROR", "USER_DATA_ERROR", "DATA_ALREADY_EXIST", "DATA_NOT_EXIST", "PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN", "FILE_ALREADY_EXIST", "FILE_PRE_HASH_COLLISION", "PARENT_NOT_EXIST", "NOT_FOUND_FILE", "FILE_NOT_IN_RECYCLE_BIN", "SHARE_LINK_INVALID_PWD", "SHARE_LINK_CANCEL", "SHARE_LINK_CONTENT_INVALID", "SHARE_LINK_EXPIRED", "SHARE_LINK_GLOBAL_DISABLED", "SHARE_LINK_TOKEN_INVALID", "SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum RequestErrorCode {
    SUCCESS(0, "请求成功"),
    HTTP_ERROR(-1, "HTTP请求错误"),
    PARAM_VERIFY_FAIL(400, "请求参数错误"),
    NO_PERMISSION(401, "用户无权限"),
    LOGIN_OUT(403, "未登录"),
    SIGN_VERIFICATION_FAILED(405, "签名验证失败"),
    DECRYPTION_FAILURE(406, "解密失败"),
    SYSTEM_ERROR(500, "服务器内部错误"),
    SERVICE_UNAVAILABLE(503, "服务器不可用"),
    FREQUENTLY_REQUEST(515, "操作频繁，请稍后重试"),
    HEADER_VERIFY_FAIL(FlacTagCreator.DEFAULT_PADDING, "请求头异常"),
    CLOUD_ERROR(10001, "同步异常"),
    CLOUD_PARAM_ERROR(10002, "参数错误"),
    CLOUD_SYNC_CONFIRM_ERROR(10003, "同步冲突"),
    CLOUD_DATA_ERROR(10004, "场景错误"),
    CLOUD_RECORD_NULL_ERROR(10005, "客户端上传空记录"),
    CLOUD_OPERATE_TYPE_NULL_ERROR(10006, "缺少记录操作类型"),
    CLOUD_OPERATE_VERSION_ERROR(10007, "客户端数据版本不正确"),
    USER_DATA_ERROR(10010, "用户数据异常，请稍后重试"),
    DATA_ALREADY_EXIST(10040, "数据已存在"),
    DATA_NOT_EXIST(10041, "数据不存在"),
    PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN(10042, "请停用状态并重试"),
    FILE_ALREADY_EXIST(20036, "文件已存在"),
    FILE_PRE_HASH_COLLISION(20079, "文件pre-hash冲突"),
    PARENT_NOT_EXIST(20072, "父目录不存在"),
    NOT_FOUND_FILE(20073, "文件不存在"),
    FILE_NOT_IN_RECYCLE_BIN(20074, "文件没在回收站中"),
    SHARE_LINK_INVALID_PWD(20033, "分享链接提取码错误"),
    SHARE_LINK_CANCEL(20057, "分享链接取消"),
    SHARE_LINK_CONTENT_INVALID(20058, "分享内容非法"),
    SHARE_LINK_EXPIRED(20059, "分享链接过期"),
    SHARE_LINK_GLOBAL_DISABLED(20060, "分享链接功能关闭"),
    SHARE_LINK_TOKEN_INVALID(20061, "分享链接token非法"),
    SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH(20080, "分享链接token不匹配");

    private static final db3 $ENTRIES = a.a(values());
    private final int code;
    private final String message;

    RequestErrorCode(int i, String str) {
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
