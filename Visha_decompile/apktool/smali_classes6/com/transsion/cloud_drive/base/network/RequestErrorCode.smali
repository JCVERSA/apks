.class public final enum Lcom/transsion/cloud_drive/base/network/RequestErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/cloud_drive/base/network/RequestErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008(\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/RequestErrorCode;",
        "",
        "code",
        "",
        "message",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getCode",
        "()I",
        "getMessage",
        "()Ljava/lang/String;",
        "SUCCESS",
        "HTTP_ERROR",
        "PARAM_VERIFY_FAIL",
        "NO_PERMISSION",
        "LOGIN_OUT",
        "SIGN_VERIFICATION_FAILED",
        "DECRYPTION_FAILURE",
        "SYSTEM_ERROR",
        "SERVICE_UNAVAILABLE",
        "FREQUENTLY_REQUEST",
        "HEADER_VERIFY_FAIL",
        "CLOUD_ERROR",
        "CLOUD_PARAM_ERROR",
        "CLOUD_SYNC_CONFIRM_ERROR",
        "CLOUD_DATA_ERROR",
        "CLOUD_RECORD_NULL_ERROR",
        "CLOUD_OPERATE_TYPE_NULL_ERROR",
        "CLOUD_OPERATE_VERSION_ERROR",
        "USER_DATA_ERROR",
        "DATA_ALREADY_EXIST",
        "DATA_NOT_EXIST",
        "PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN",
        "FILE_ALREADY_EXIST",
        "FILE_PRE_HASH_COLLISION",
        "PARENT_NOT_EXIST",
        "NOT_FOUND_FILE",
        "FILE_NOT_IN_RECYCLE_BIN",
        "SHARE_LINK_INVALID_PWD",
        "SHARE_LINK_CANCEL",
        "SHARE_LINK_CONTENT_INVALID",
        "SHARE_LINK_EXPIRED",
        "SHARE_LINK_GLOBAL_DISABLED",
        "SHARE_LINK_TOKEN_INVALID",
        "SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_DATA_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_OPERATE_TYPE_NULL_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_OPERATE_VERSION_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_PARAM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_RECORD_NULL_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum CLOUD_SYNC_CONFIRM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum DATA_ALREADY_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum DATA_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum DECRYPTION_FAILURE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum FILE_ALREADY_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum FILE_NOT_IN_RECYCLE_BIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum FILE_PRE_HASH_COLLISION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum FREQUENTLY_REQUEST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum HEADER_VERIFY_FAIL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum LOGIN_OUT:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum NOT_FOUND_FILE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum NO_PERMISSION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum PARAM_VERIFY_FAIL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum PARENT_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_CANCEL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_CONTENT_INVALID:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_EXPIRED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_GLOBAL_DISABLED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_INVALID_PWD:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_TOKEN_INVALID:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SIGN_VERIFICATION_FAILED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum SYSTEM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

.field public static final enum USER_DATA_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/cloud_drive/base/network/RequestErrorCode;
    .locals 34

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v1, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v2, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PARAM_VERIFY_FAIL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v3, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->NO_PERMISSION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v4, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->LOGIN_OUT:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v5, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SIGN_VERIFICATION_FAILED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v6, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->DECRYPTION_FAILURE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v7, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SYSTEM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v8, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SERVICE_UNAVAILABLE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v9, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FREQUENTLY_REQUEST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v10, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HEADER_VERIFY_FAIL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v11, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v12, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_PARAM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v13, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_SYNC_CONFIRM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v14, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_DATA_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v15, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_RECORD_NULL_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v16, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_OPERATE_TYPE_NULL_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v17, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_OPERATE_VERSION_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v18, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->USER_DATA_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v19, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->DATA_ALREADY_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v20, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->DATA_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v21, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v22, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_ALREADY_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v23, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_PRE_HASH_COLLISION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v24, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PARENT_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v25, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->NOT_FOUND_FILE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v26, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_NOT_IN_RECYCLE_BIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v27, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_INVALID_PWD:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v28, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_CANCEL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v29, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_CONTENT_INVALID:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v30, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_EXPIRED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v31, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_GLOBAL_DISABLED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v32, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_TOKEN_INVALID:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    sget-object v33, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    filled-new-array/range {v0 .. v33}, [Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u6c42\u6210\u529f"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/4 v1, -0x1

    const-string v2, "HTTP\u8bf7\u6c42\u9519\u8bef"

    const-string v3, "HTTP_ERROR"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HTTP_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x190

    const-string v2, "\u8bf7\u6c42\u53c2\u6570\u9519\u8bef"

    const-string v3, "PARAM_VERIFY_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PARAM_VERIFY_FAIL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x191

    const-string v2, "\u7528\u6237\u65e0\u6743\u9650"

    const-string v3, "NO_PERMISSION"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->NO_PERMISSION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x193

    const-string v2, "\u672a\u767b\u5f55"

    const-string v3, "LOGIN_OUT"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->LOGIN_OUT:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x195

    const-string v2, "\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    const-string v3, "SIGN_VERIFICATION_FAILED"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SIGN_VERIFICATION_FAILED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x196

    const-string v2, "\u89e3\u5bc6\u5931\u8d25"

    const-string v3, "DECRYPTION_FAILURE"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->DECRYPTION_FAILURE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x1f4

    const-string v2, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"

    const-string v3, "SYSTEM_ERROR"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SYSTEM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x1f7

    const-string v2, "\u670d\u52a1\u5668\u4e0d\u53ef\u7528"

    const-string v3, "SERVICE_UNAVAILABLE"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SERVICE_UNAVAILABLE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x203

    const-string v2, "\u64cd\u4f5c\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const-string v3, "FREQUENTLY_REQUEST"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FREQUENTLY_REQUEST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0xfa0

    const-string v2, "\u8bf7\u6c42\u5934\u5f02\u5e38"

    const-string v3, "HEADER_VERIFY_FAIL"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->HEADER_VERIFY_FAIL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2711

    const-string v2, "\u540c\u6b65\u5f02\u5e38"

    const-string v3, "CLOUD_ERROR"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2712

    const-string v2, "\u53c2\u6570\u9519\u8bef"

    const-string v3, "CLOUD_PARAM_ERROR"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_PARAM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2713

    const-string v2, "\u540c\u6b65\u51b2\u7a81"

    const-string v3, "CLOUD_SYNC_CONFIRM_ERROR"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_SYNC_CONFIRM_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2714

    const-string v2, "\u573a\u666f\u9519\u8bef"

    const-string v3, "CLOUD_DATA_ERROR"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_DATA_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2715

    const-string v2, "\u5ba2\u6237\u7aef\u4e0a\u4f20\u7a7a\u8bb0\u5f55"

    const-string v3, "CLOUD_RECORD_NULL_ERROR"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_RECORD_NULL_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2716

    const-string v2, "\u7f3a\u5c11\u8bb0\u5f55\u64cd\u4f5c\u7c7b\u578b"

    const-string v3, "CLOUD_OPERATE_TYPE_NULL_ERROR"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_OPERATE_TYPE_NULL_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2717

    const-string v2, "\u5ba2\u6237\u7aef\u6570\u636e\u7248\u672c\u4e0d\u6b63\u786e"

    const-string v3, "CLOUD_OPERATE_VERSION_ERROR"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->CLOUD_OPERATE_VERSION_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x271a

    const-string v2, "\u7528\u6237\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const-string v3, "USER_DATA_ERROR"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->USER_DATA_ERROR:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2738

    const-string v2, "\u6570\u636e\u5df2\u5b58\u5728"

    const-string v3, "DATA_ALREADY_EXIST"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->DATA_ALREADY_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x2739

    const-string v2, "\u6570\u636e\u4e0d\u5b58\u5728"

    const-string v3, "DATA_NOT_EXIST"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->DATA_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x273a

    const-string v2, "\u8bf7\u505c\u7528\u72b6\u6001\u5e76\u91cd\u8bd5"

    const-string v3, "PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PLEASE_DEACTIVATE_THE_STATUS_AND_TRY_AGAIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e44

    const-string v2, "\u6587\u4ef6\u5df2\u5b58\u5728"

    const-string v3, "FILE_ALREADY_EXIST"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_ALREADY_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e6f

    const-string v2, "\u6587\u4ef6pre-hash\u51b2\u7a81"

    const-string v3, "FILE_PRE_HASH_COLLISION"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_PRE_HASH_COLLISION:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e68

    const-string v2, "\u7236\u76ee\u5f55\u4e0d\u5b58\u5728"

    const-string v3, "PARENT_NOT_EXIST"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->PARENT_NOT_EXIST:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e69

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const-string v3, "NOT_FOUND_FILE"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->NOT_FOUND_FILE:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e6a

    const-string v2, "\u6587\u4ef6\u6ca1\u5728\u56de\u6536\u7ad9\u4e2d"

    const-string v3, "FILE_NOT_IN_RECYCLE_BIN"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->FILE_NOT_IN_RECYCLE_BIN:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e41

    const-string v2, "\u5206\u4eab\u94fe\u63a5\u63d0\u53d6\u7801\u9519\u8bef"

    const-string v3, "SHARE_LINK_INVALID_PWD"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_INVALID_PWD:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e59

    const-string v2, "\u5206\u4eab\u94fe\u63a5\u53d6\u6d88"

    const-string v3, "SHARE_LINK_CANCEL"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_CANCEL:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e5a

    const-string v2, "\u5206\u4eab\u5185\u5bb9\u975e\u6cd5"

    const-string v3, "SHARE_LINK_CONTENT_INVALID"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_CONTENT_INVALID:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e5b

    const-string v2, "\u5206\u4eab\u94fe\u63a5\u8fc7\u671f"

    const-string v3, "SHARE_LINK_EXPIRED"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_EXPIRED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e5c

    const-string v2, "\u5206\u4eab\u94fe\u63a5\u529f\u80fd\u5173\u95ed"

    const-string v3, "SHARE_LINK_GLOBAL_DISABLED"

    const/16 v4, 0x1f

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_GLOBAL_DISABLED:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e5d

    const-string v2, "\u5206\u4eab\u94fe\u63a5token\u975e\u6cd5"

    const-string v3, "SHARE_LINK_TOKEN_INVALID"

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_TOKEN_INVALID:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    const/16 v1, 0x4e70

    const-string v2, "\u5206\u4eab\u94fe\u63a5token\u4e0d\u5339\u914d"

    const-string v3, "SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH"

    const/16 v4, 0x21

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->SHARE_LINK_TOKEN_SHARE_ID_NOT_MATCH:Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-static {}, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->$values()[Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->$VALUES:[Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->$ENTRIES:Ldb3;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->code:I

    iput-object p4, p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->message:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/RequestErrorCode;
    .locals 1

    const-class v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/cloud_drive/base/network/RequestErrorCode;
    .locals 1

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->$VALUES:[Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloud_drive/base/network/RequestErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->code:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/RequestErrorCode;->message:Ljava/lang/String;

    return-object p0
.end method
