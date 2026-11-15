.class public final enum Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;",
        "",
        "code",
        "",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getCode",
        "()I",
        "getMessage",
        "()Ljava/lang/String;",
        "SUCCESS",
        "UNKNOWN",
        "SERVER",
        "NETWORK_ERROR",
        "PARENT_FILE_NOT_EXIST",
        "CREATE_FILE_ERROR",
        "PATH_RULE_ERROR",
        "TMP_FILE_NOT_EXIST",
        "CREATE_TEMP_FILE_ERROR",
        "STORAGE_NOT_ENOUGH",
        "CHECK_FILE_HASH_ERROR",
        "TOKEN_INVALID",
        "UNIQUEID_INVALID",
        "PARAM_INVALID",
        "FILE_NOT_EXIST",
        "PERMISSION_DENIED",
        "TASK_CANCELED",
        "TASK_PAUSED",
        "TASK_ALREADY_EXISTS",
        "TASK_NOT_FOUND",
        "INITIALIZATION_ERROR",
        "VIDEOTRANSCODE_STATUS_ERROR",
        "RETRY_VIDEOTRANSCODE_ERROR",
        "cloudcore_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum CHECK_FILE_HASH_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum CREATE_FILE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum INITIALIZATION_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum PARAM_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum PARENT_FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum PATH_RULE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum PERMISSION_DENIED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum RETRY_VIDEOTRANSCODE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum SERVER:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum STORAGE_NOT_ENOUGH:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum SUCCESS:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum TASK_ALREADY_EXISTS:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum TASK_CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum TASK_NOT_FOUND:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum TASK_PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum TMP_FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum TOKEN_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum UNIQUEID_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum UNKNOWN:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

.field public static final enum VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;
    .locals 23

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->SUCCESS:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->SERVER:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->NETWORK_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PARENT_FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->CREATE_FILE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v6, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PATH_RULE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v7, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TMP_FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v8, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v9, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->STORAGE_NOT_ENOUGH:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v10, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->CHECK_FILE_HASH_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v11, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TOKEN_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v12, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->UNIQUEID_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v13, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PARAM_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v14, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v15, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PERMISSION_DENIED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v16, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v17, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v18, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_ALREADY_EXISTS:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v19, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_NOT_FOUND:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v20, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->INITIALIZATION_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v21, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    sget-object v22, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->RETRY_VIDEOTRANSCODE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    filled-new-array/range {v0 .. v22}, [Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/4 v1, 0x0

    const-string v2, "success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->SUCCESS:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x3e8

    const-string v2, "unknown error"

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x3e9

    const-string v2, "server error"

    const-string v3, "SERVER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->SERVER:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x3ea

    const-string v2, "network error"

    const-string v3, "NETWORK_ERROR"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->NETWORK_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x44c

    const-string v2, "upload parent file not exist"

    const-string v3, "PARENT_FILE_NOT_EXIST"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PARENT_FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x44d

    const-string v2, "create upload file error"

    const-string v3, "CREATE_FILE_ERROR"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->CREATE_FILE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x4b0

    const-string v2, "file path invalid"

    const-string v3, "PATH_RULE_ERROR"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PATH_RULE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x4b1

    const-string v2, "download temp file not exist"

    const-string v3, "TMP_FILE_NOT_EXIST"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TMP_FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x4b2

    const-string v2, "create download temp file error"

    const-string v3, "CREATE_TEMP_FILE_ERROR"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x4b3

    const-string v2, "local storage space not enough"

    const-string v3, "STORAGE_NOT_ENOUGH"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->STORAGE_NOT_ENOUGH:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x4b4

    const-string v2, "file crc64_hash error"

    const-string v3, "CHECK_FILE_HASH_ERROR"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->CHECK_FILE_HASH_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x514

    const-string v2, "token invalid"

    const-string v3, "TOKEN_INVALID"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TOKEN_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x515

    const-string v2, "uniqueId invalid"

    const-string v3, "UNIQUEID_INVALID"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->UNIQUEID_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x516

    const-string v2, "parameter invalid"

    const-string v3, "PARAM_INVALID"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PARAM_INVALID:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x517

    const-string v2, "file not exist"

    const-string v3, "FILE_NOT_EXIST"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->FILE_NOT_EXIST:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x518

    const-string v2, "permission denied"

    const-string v3, "PERMISSION_DENIED"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->PERMISSION_DENIED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x519

    const-string v2, "task canceled"

    const-string v3, "TASK_CANCELED"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x51a

    const-string v2, "task paused"

    const-string v3, "TASK_PAUSED"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x51b

    const-string v2, "task already exists"

    const-string v3, "TASK_ALREADY_EXISTS"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_ALREADY_EXISTS:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x51c

    const-string v2, "task not found"

    const-string v3, "TASK_NOT_FOUND"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->TASK_NOT_FOUND:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x51d

    const-string v2, "initialization error"

    const-string v3, "INITIALIZATION_ERROR"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->INITIALIZATION_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x578

    const-string v2, "Transcode statues error"

    const-string v3, "VIDEOTRANSCODE_STATUS_ERROR"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    const/16 v1, 0x579

    const-string v2, "Retry transcode error"

    const-string v3, "RETRY_VIDEOTRANSCODE_ERROR"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->RETRY_VIDEOTRANSCODE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-static {}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->$values()[Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->$VALUES:[Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->$ENTRIES:Ldb3;

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

    iput p3, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->code:I

    iput-object p4, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->message:Ljava/lang/String;

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

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;
    .locals 1

    const-class v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;
    .locals 1

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->$VALUES:[Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->code:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->message:Ljava/lang/String;

    return-object p0
.end method
