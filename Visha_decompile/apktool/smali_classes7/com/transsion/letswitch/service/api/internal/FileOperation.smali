.class public final Lcom/transsion/letswitch/service/api/internal/FileOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/letswitch/service/api/IFileOperation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\u0008\u0010\u0017\u001a\u00020\u0007H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u0016J,\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0019H\u0016J*\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0019H\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/internal/FileOperation;",
        "Lcom/transsion/letswitch/service/api/IFileOperation;",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public deleteFile(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->deleteFile(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;
    .locals 12

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/letswitch/service/api/FileInformation;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "getName(...)"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v8

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/transsion/letswitch/service/api/FileInformation;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;

    move-result-object p0

    return-object p0
.end method

.method public listFile(Ljava/lang/String;II)Ljava/util/List;
    .locals 0
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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->listFile(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public mkdirs(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->mkdirs(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openFile api path: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileOperation"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "openFile api exists"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "openFile api exists false"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openFileW(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 6

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->openFileW(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const-string p0, "src"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dest"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/letswitch/service/api/utils/FileTools;->INSTANCE:Lcom/transsion/letswitch/service/api/utils/FileTools;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/utils/FileTools;->renameFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->INSTANCE:Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;

    invoke-virtual {p1}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->getAppContext$api_release()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/letswitch/service/api/utils/FileTools;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->rename(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public runCmd(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 0

    const-string p0, "cmd"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->runCmd(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;

    move-result-object p0

    return-object p0
.end method
