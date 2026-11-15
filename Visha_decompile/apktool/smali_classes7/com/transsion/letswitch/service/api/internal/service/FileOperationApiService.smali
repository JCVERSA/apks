.class public final Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/letswitch/ipc/IPCApiService;
.implements Lcom/transsion/letswitch/service/api/IFileOperation;


# annotations
.annotation runtime Lcom/transsion/letswitch/ipc/IPCClass;
    className = "FileOperationApiService"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0017\u00a2\u0006\u0004\u0008\u001f\u0010 J)\u0010!\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0017\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010$\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0011H\u0017\u00a2\u0006\u0004\u0008$\u0010%J\'\u0010)\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020#H\u0017\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020\u0011H\u0017\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0011H\u0017\u00a2\u0006\u0004\u0008/\u00100J\u0019\u00103\u001a\u0002022\u0008\u00101\u001a\u0004\u0018\u00010\u0011H\u0017\u00a2\u0006\u0004\u00083\u00104J3\u00109\u001a\u0002022\u0008\u00105\u001a\u0004\u0018\u00010\u00112\u0008\u00106\u001a\u0004\u0018\u00010\u00112\u0006\u00107\u001a\u0002022\u0006\u00108\u001a\u000202H\u0017\u00a2\u0006\u0004\u00089\u0010:J1\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010>2\u0008\u0010;\u001a\u0004\u0018\u00010\u00112\u0006\u0010<\u001a\u0002022\u0006\u0010=\u001a\u000202H\u0017\u00a2\u0006\u0004\u0008\u000e\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010C\u001a\u0002028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0017\u0010F\u001a\u00020E8\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010IR\u0014\u0010K\u001a\u00020J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010L\u00a8\u0006M"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;",
        "Lcom/transsion/letswitch/ipc/IPCApiService;",
        "Lcom/transsion/letswitch/service/api/IFileOperation;",
        "<init>",
        "()V",
        "Landroid/app/Application;",
        "context",
        "Lzfb;",
        "checkSandAccessor",
        "(Landroid/app/Application;)V",
        "Lcom/transsion/letswitch/service/api/FileInformation;",
        "fileInformation",
        "",
        "Ljava/io/File;",
        "listFile",
        "parseFileInfo",
        "(Lcom/transsion/letswitch/service/api/FileInformation;[Ljava/io/File;)V",
        "",
        "path",
        "Landroid/os/ParcelFileDescriptor;",
        "readFd",
        "",
        "position",
        "length",
        "readFromPipe",
        "(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V",
        "writeFd",
        "writeToPipe",
        "(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V",
        "getFileInfo",
        "(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;",
        "openFile",
        "(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;",
        "openFileW",
        "(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;",
        "",
        "mkdirs",
        "(Ljava/lang/String;)Z",
        "src",
        "dest",
        "overlay",
        "rename",
        "(Ljava/lang/String;Ljava/lang/String;Z)Z",
        "cmd",
        "Lcom/transsion/letswitch/service/api/CmdResult;",
        "runCmd",
        "(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "targetFile",
        "",
        "deleteFile",
        "(Ljava/lang/String;)I",
        "source",
        "targetDir",
        "uid",
        "gid",
        "copyFile",
        "(Ljava/lang/String;Ljava/lang/String;II)I",
        "targetPackage",
        "userId",
        "flags",
        "",
        "(Ljava/lang/String;II)Ljava/util/List;",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lhk1;",
        "CAPACITY",
        "I",
        "Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;",
        "sandAccessor",
        "Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;",
        "getSandAccessor",
        "()Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;",
        "Lnk1;",
        "coroutineScope",
        "Lnk1;",
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
.field private static final CAPACITY:I = 0x32000

.field public static final INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

.field private static final coroutineExceptionHandler:Lhk1;

.field private static final coroutineScope:Lnk1;

.field private static final sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->INSTANCE:Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;

    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lhk1$b;)V

    sput-object v1, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->coroutineExceptionHandler:Lhk1;

    new-instance v0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->coroutineScope:Lnk1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkSandAccessor(Landroid/app/Application;)V
    .locals 0

    new-instance p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-direct {p0, p1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final parseFileInfo(Lcom/transsion/letswitch/service/api/FileInformation;[Ljava/io/File;)V
    .locals 16

    move-object/from16 v0, p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    new-instance v15, Lcom/transsion/letswitch/service/api/FileInformation;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    const-string v4, "getCanonicalPath(...)"

    invoke-static {v5, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v4, "getName(...)"

    invoke-static {v6, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v11

    const/16 v13, 0x40

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v4, v15

    invoke-direct/range {v4 .. v14}, Lcom/transsion/letswitch/service/api/FileInformation;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v4}, Lcom/transsion/letswitch/service/api/FileInformation;->setListFile(Ljava/util/ArrayList;)V

    move-object/from16 v4, p0

    invoke-direct {v4, v15, v3}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->parseFileInfo(Lcom/transsion/letswitch/service/api/FileInformation;[Ljava/io/File;)V

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v4, p0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/letswitch/service/api/FileInformation;->getListFile()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final readFromPipe(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 11

    sget-object v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->coroutineScope:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v10, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService$readFromPipe$1;

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService$readFromPipe$1;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJLwh1;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p2, v4

    move-object p3, v10

    move p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method private final writeToPipe(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6

    sget-object v0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->coroutineScope:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService$writeToPipe$1;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p2, p0}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService$writeToPipe$1;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "copyFile"
    .end annotation

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->copyFile(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public deleteFile(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "deleteFile"
    .end annotation

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->deleteFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "getErrorMessage"
    .end annotation

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getErrorMessage(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getFileInfo(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/FileInformation;
    .locals 13

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/transsion/letswitch/service/api/FileInformation;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "getName(...)"

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v8

    const/16 v10, 0x40

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/transsion/letswitch/service/api/FileInformation;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v12

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v0}, Lcom/transsion/letswitch/service/api/FileInformation;->setListFile(Ljava/util/ArrayList;)V

    invoke-direct {p0, v12, p1}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->parseFileInfo(Lcom/transsion/letswitch/service/api/FileInformation;[Ljava/io/File;)V

    :cond_2
    :goto_0
    return-object v12
.end method

.method public final getSandAccessor()Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;
    .locals 0

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    return-object p0
.end method

.method public listFile(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "listFile"
    .end annotation

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

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->listAppDataFile(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public mkdirs(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "mkdirs"
    .end annotation

    const-string p0, "FileOperation"

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mkdirs exists"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mkdirs ret: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mkdirs failed with e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "openFile"
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->writeToPipe(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public openFileW(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "openFileW"
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFileW path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->readFromPipe(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "rename"
    .end annotation

    const-string p0, "src"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dest"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/letswitch/service/api/utils/FileTools;->INSTANCE:Lcom/transsion/letswitch/service/api/utils/FileTools;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/utils/FileTools;->renameFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/transsion/letswitch/service/api/utils/FileTools;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename success: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " overlay: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", src: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dest: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileOperation"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public runCmd(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 4
    .annotation runtime Lcom/transsion/letswitch/ipc/IPCMethod;
        methodName = "runCmd"
    .end annotation

    const-string p0, "cmd"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runCmd cmd: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileOperation"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/letswitch/service/api/internal/service/FileOperationApiService;->sandAccessor:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->isSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "runCmd not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/letswitch/service/api/CmdResult;->Companion:Lcom/transsion/letswitch/service/api/CmdResult$Companion;

    invoke-virtual {p0}, Lcom/transsion/letswitch/service/api/CmdResult$Companion;->getFAIL_RESULT()Lcom/transsion/letswitch/service/api/CmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->runCommandAndWaitResult(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;

    move-result-object p0

    const-string p1, "runCommandAndWaitResult(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->result:I

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->message:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runCmd result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/transsion/letswitch/service/api/CmdResult;

    iget v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->result:I

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;->message:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/transsion/letswitch/service/api/CmdResult;-><init>(ILjava/lang/String;)V

    return-object p1
.end method
