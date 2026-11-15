.class public interface abstract Lcom/transsion/letswitch/service/api/IFileOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/service/api/IFileOperation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0005\u0008f\u0018\u0000 #2\u00020\u0001:\u0001#J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\"\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\rH&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H&J\u0008\u0010\u0015\u001a\u00020\u0005H&J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005H&J,\u0010\u0019\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0017H&J*\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u00052\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0017H&\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/IFileOperation;",
        "",
        "getFileInfo",
        "Lcom/transsion/letswitch/service/api/FileInformation;",
        "path",
        "",
        "openFile",
        "Landroid/os/ParcelFileDescriptor;",
        "openFileW",
        "position",
        "",
        "length",
        "mkdirs",
        "",
        "rename",
        "src",
        "dest",
        "overlay",
        "runCmd",
        "Lcom/transsion/letswitch/service/api/CmdResult;",
        "cmd",
        "getErrorMessage",
        "deleteFile",
        "",
        "targetFile",
        "copyFile",
        "source",
        "targetDir",
        "uid",
        "gid",
        "listFile",
        "",
        "targetPackage",
        "userId",
        "flags",
        "Companion",
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
.field public static final API_NAME_FILE_OPERATION:Ljava/lang/String; = "FileOperationApiService"

.field public static final Companion:Lcom/transsion/letswitch/service/api/IFileOperation$Companion;

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

    sget-object v0, Lcom/transsion/letswitch/service/api/IFileOperation$Companion;->$$INSTANCE:Lcom/transsion/letswitch/service/api/IFileOperation$Companion;

    sput-object v0, Lcom/transsion/letswitch/service/api/IFileOperation;->Companion:Lcom/transsion/letswitch/service/api/IFileOperation$Companion;

    return-void
.end method


# virtual methods
.method public abstract copyFile(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract deleteFile(Ljava/lang/String;)I
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;
.end method

.method public abstract listFile(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mkdirs(Ljava/lang/String;)Z
.end method

.method public abstract openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract openFileW(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract runCmd(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;
.end method
