.class public final enum Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;",
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
        "UNKNOWN",
        "SERVER",
        "NETWORK_ERROR",
        "NO_NETWORK",
        "REQUEST_FAIL",
        "AUTH_ERROR",
        "PARENT_FILE_NOT_EXIST",
        "CREATE_FILE_ERROR",
        "FILE_NOT_FOUND_ERROR",
        "RESTORE_PARENT_ERROR",
        "GET_UPLOAD_URL_ERROR",
        "UPLOAD_FAIL",
        "PATH_RULE_ERROR",
        "TMP_FILE_NOT_EXIST",
        "CREATE_TEMP_FILE_ERROR",
        "STORAGE_NOT_ENOUGH",
        "CHECK_FILE_HASH_ERROR",
        "cloud-drive-transfer_release"
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

.field private static final synthetic $VALUES:[Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum AUTH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum CHECK_FILE_HASH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum CREATE_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum FILE_NOT_FOUND_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum GET_UPLOAD_URL_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum NO_NETWORK:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum PARENT_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum PATH_RULE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum REQUEST_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum RESTORE_PARENT_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum SERVER:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum STORAGE_NOT_ENOUGH:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum SUCCESS:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum TMP_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

.field public static final enum UPLOAD_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;
    .locals 18

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v2, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->SERVER:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NETWORK_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v4, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NO_NETWORK:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->REQUEST_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v6, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->AUTH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v7, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->PARENT_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v8, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CREATE_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v9, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->FILE_NOT_FOUND_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v10, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->RESTORE_PARENT_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v11, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->GET_UPLOAD_URL_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v12, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UPLOAD_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v13, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->PATH_RULE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v14, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->TMP_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v15, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v16, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->STORAGE_NOT_ENOUGH:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    sget-object v17, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CHECK_FILE_HASH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    filled-new-array/range {v0 .. v17}, [Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/4 v1, 0x0

    const-string v2, "success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->SUCCESS:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x3e8

    const-string v2, "unknown error"

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UNKNOWN:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x3e9

    const-string v2, "server error"

    const-string v3, "SERVER"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->SERVER:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x3ea

    const-string v2, "network error"

    const-string v3, "NETWORK_ERROR"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NETWORK_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x3eb

    const-string v2, "no network"

    const-string v3, "NO_NETWORK"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->NO_NETWORK:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x3ec

    const-string v2, "request fail"

    const-string v3, "REQUEST_FAIL"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->REQUEST_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x3ed

    const-string v2, "authentication failed"

    const-string v3, "AUTH_ERROR"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->AUTH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x7d0

    const-string v2, "upload parent file not exist"

    const-string v3, "PARENT_FILE_NOT_EXIST"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->PARENT_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x7d1

    const-string v2, "create upload file error"

    const-string v3, "CREATE_FILE_ERROR"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CREATE_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x7d2

    const-string v2, "file not found"

    const-string v3, "FILE_NOT_FOUND_ERROR"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->FILE_NOT_FOUND_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x7d3

    const-string v2, "restore parent fail"

    const-string v3, "RESTORE_PARENT_ERROR"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->RESTORE_PARENT_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x7d4

    const-string v2, "get upload url fail"

    const-string v3, "GET_UPLOAD_URL_ERROR"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->GET_UPLOAD_URL_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0x7d5

    const-string v2, "upload fail"

    const-string v3, "UPLOAD_FAIL"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->UPLOAD_FAIL:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0xbb8

    const-string v2, "file path invalid"

    const-string v3, "PATH_RULE_ERROR"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->PATH_RULE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0xbb9

    const-string v2, "download temp file not exist"

    const-string v3, "TMP_FILE_NOT_EXIST"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->TMP_FILE_NOT_EXIST:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0xbba

    const-string v2, "create download temp file error"

    const-string v3, "CREATE_TEMP_FILE_ERROR"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CREATE_TEMP_FILE_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0xbbb

    const-string v2, "local storage space not enough"

    const-string v3, "STORAGE_NOT_ENOUGH"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->STORAGE_NOT_ENOUGH:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    const/16 v1, 0xbbc

    const-string v2, "file crc64_hash error"

    const-string v3, "CHECK_FILE_HASH_ERROR"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->CHECK_FILE_HASH_ERROR:Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-static {}, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->$values()[Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->$VALUES:[Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->$ENTRIES:Ldb3;

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

    iput p3, p0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->code:I

    iput-object p4, p0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->message:Ljava/lang/String;

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

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;
    .locals 1

    const-class v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;
    .locals 1

    sget-object v0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->$VALUES:[Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->code:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;->message:Ljava/lang/String;

    return-object p0
.end method
