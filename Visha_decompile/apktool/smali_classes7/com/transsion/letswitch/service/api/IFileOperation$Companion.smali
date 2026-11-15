.class public final Lcom/transsion/letswitch/service/api/IFileOperation$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/service/api/IFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/IFileOperation$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "RESULT_CODE_SUCCESS",
        "",
        "RESULT_CODE_FAILURE",
        "API_NAME_FILE_OPERATION",
        "METHOD_RUN_CMD",
        "METHOD_COPY_FILE",
        "METHOD_GET_ERR_MSG",
        "METHOD_DEL_FILE",
        "METHOD_LIST_FILE",
        "METHOD_OPEN_FILE",
        "METHOD_OPEN_FILE_W",
        "METHOD_GET_FILE_INFO",
        "METHOD_MAKE_DIRS",
        "METHOD_RENAME",
        "api_release"
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
.field static final synthetic $$INSTANCE:Lcom/transsion/letswitch/service/api/IFileOperation$Companion;

.field public static final API_NAME_FILE_OPERATION:Ljava/lang/String; = "FileOperationApiService"

.field public static final METHOD_COPY_FILE:Ljava/lang/String; = "copyFile"

.field public static final METHOD_DEL_FILE:Ljava/lang/String; = "deleteFile"

.field public static final METHOD_GET_ERR_MSG:Ljava/lang/String; = "getErrorMessage"

.field public static final METHOD_GET_FILE_INFO:Ljava/lang/String; = "getFileInfo"

.field public static final METHOD_LIST_FILE:Ljava/lang/String; = "listFile"

.field public static final METHOD_MAKE_DIRS:Ljava/lang/String; = "mkdirs"

.field public static final METHOD_OPEN_FILE:Ljava/lang/String; = "openFile"

.field public static final METHOD_OPEN_FILE_W:Ljava/lang/String; = "openFileW"

.field public static final METHOD_RENAME:Ljava/lang/String; = "rename"

.field public static final METHOD_RUN_CMD:Ljava/lang/String; = "runCmd"

.field public static final RESULT_CODE_FAILURE:I = -0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FileOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/IFileOperation$Companion;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/IFileOperation$Companion;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/IFileOperation$Companion;->$$INSTANCE:Lcom/transsion/letswitch/service/api/IFileOperation$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
