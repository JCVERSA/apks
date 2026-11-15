.class public final Lcom/cloud/tmc/integration/bridge/FileBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0007\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010\u000f\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J4\u0010\u0011\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010\u0014\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J,\u0010\u0019\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J6\u0010\u001b\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0008\u0010\u001e\u001a\u00020\u0008H\u0016J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J6\u0010 \u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010!\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\n\u0010\"\u001a\u0004\u0018\u00010#H\u0016J@\u0010$\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010%\u001a\u00020&2\u0008\u0008\u0001\u0010\'\u001a\u00020(2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010)\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007JJ\u0010*\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010+\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\'\u001a\u00020&2\u0008\u0008\u0001\u0010%\u001a\u00020&2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010,\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010-\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010.\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010/\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J \u00100\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001a\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u0002032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J6\u00104\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u00105\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u00106\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J&\u00107\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u00108\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u00109\u001a\u00020\u0004H\u0002J6\u0010:\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010;\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010<\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010=\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010>\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007JJ\u0010?\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010@\u001a\u00020\u000c2\u0008\u0008\u0001\u0010+\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\'\u001a\u00020&2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J@\u0010A\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010@\u001a\u00020\u000c2\u0008\u0008\u0001\u0010+\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006C"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/FileBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "sdCardEnableByEnvironment",
        "",
        "getSdCardEnableByEnvironment",
        "()Z",
        "access",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "path",
        "",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "close",
        "fd",
        "copyFile",
        "srcPath",
        "destPath",
        "fstat",
        "generateFileStat",
        "Lcom/google/gson/JsonObject;",
        "file",
        "Ljava/io/File;",
        "getFileInfo",
        "filePath",
        "mkdir",
        "dirPath",
        "recursive",
        "onFinalized",
        "onInitialized",
        "open",
        "flag",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "read",
        "length",
        "",
        "position",
        "",
        "readDir",
        "readFile",
        "encoding",
        "readSDDir",
        "rename",
        "oldPath",
        "newPath",
        "requestSDPermission",
        "requestStoragePermission",
        "context",
        "Landroid/content/Context;",
        "rmdir",
        "saveFile",
        "tempFilePath",
        "sendErrorMsg",
        "errorMsg",
        "isSticky",
        "stat",
        "unlink",
        "unzip",
        "zipFilePath",
        "targetPath",
        "write",
        "data",
        "writeFile",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;

.field private static final ERROR_MSG:Ljava/lang/String; = "errMsg"

.field private static final ERROR_MSG_F10001:Ljava/lang/String; = "parameter error: F10001"

.field private static final ERROR_MSG_F10002:Ljava/lang/String; = "fail sdcard not mounted: F10002"

.field private static final ERROR_MSG_F10003:Ljava/lang/String; = "bad file descriptor: F10003"

.field private static final ERROR_MSG_F10004:Ljava/lang/String; = "fail the maximum size of the file storage limit exceeded: F10004"

.field private static final ERROR_MSG_F10005:Ljava/lang/String; = "fail permission denied: F10005"

.field private static final ERROR_MSG_F10006:Ljava/lang/String; = "fail file does not exist: F10006"

.field private static final ERROR_MSG_F10007:Ljava/lang/String; = "fail no such file or directory: F10007"

.field private static final ERROR_MSG_F10008:Ljava/lang/String; = "native buffer exceeds size limit: F10008"

.field private static final ERROR_MSG_F10009:Ljava/lang/String; = "deletion of public space files is not allowed: F10009"

.field private static final MAX_FILE_SIZE:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/bridge/FileBridge;->Companion:Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getStat(Ljava/io/File;)Landroid/system/StructStat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "mode"

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "size"

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-wide v2, v0, Landroid/system/StructStat;->st_atime:J

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "lastAccessedTime"

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-wide v2, v0, Landroid/system/StructStat;->st_mtime:J

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    const/16 p1, 0x3e8

    .line 66
    .line 67
    int-to-long v4, p1

    .line 68
    div-long/2addr v2, v4

    .line 69
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "lastModifiedTime"

    .line 74
    .line 75
    invoke-virtual {v1, v0, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "create()\n            .ad\u202600))\n            .build()"

    .line 84
    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p1
.end method

.method private final getSdCardEnableByEnvironment()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->isSDCardEnableByEnvironment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 6

    .line 1
    :try_start_0
    const-string p1, "STORAGE"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/cloud/tmc/integration/bridge/FileBridge$requestStoragePermission$1;

    .line 12
    .line 13
    invoke-direct {v0, p2, p0}, Lcom/cloud/tmc/integration/bridge/FileBridge$requestStoragePermission$1;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/bridge/FileBridge;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v2, "fail permission denied: F10005"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v0, p0

    .line 31
    move-object v1, p2

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string p2, "FileBridge"

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method private final sendErrorMsg(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "errMsg"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method static synthetic sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "path"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileAccess"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v6, 0x4

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v4, "fail sdcard not mounted: F10002"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    move-object v2, p0

    .line 26
    move-object/from16 v3, p3

    .line 27
    .line 28
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void

    .line 44
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    if-eqz p3, :cond_5

    .line 51
    .line 52
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "fail no such file or directory: F10007 "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v7, 0x4

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v3, p0

    .line 77
    move-object/from16 v4, p3

    .line 78
    .line 79
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_0
    return-void

    .line 83
    :cond_6
    :goto_1
    const/4 v13, 0x4

    .line 84
    const/4 v14, 0x0

    .line 85
    const-string v11, "parameter error: F10001"

    .line 86
    .line 87
    const/4 v12, 0x0

    .line 88
    move-object v9, p0

    .line 89
    move-object/from16 v10, p3

    .line 90
    .line 91
    invoke-static/range {v9 .. v14}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final close(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 12
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileClose"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->close(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v2, "bad file descriptor: F10003"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v0, p0

    .line 30
    move-object v1, p3

    .line 31
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void

    .line 35
    :cond_3
    :goto_1
    const/4 v10, 0x4

    .line 36
    const/4 v11, 0x0

    .line 37
    const-string v8, "parameter error: F10001"

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v6, p0

    .line 41
    move-object v7, p3

    .line 42
    invoke-static/range {v6 .. v11}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final copyFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "srcPath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "destPath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileCopyFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object v7, p1

    .line 2
    move-object/from16 v8, p3

    .line 3
    .line 4
    const/4 v9, 0x1

    .line 5
    const/4 v10, 0x0

    .line 6
    const/4 v11, 0x2

    .line 7
    const-string v0, "srcPath"

    .line 8
    .line 9
    move-object/from16 v12, p2

    .line 10
    .line 11
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "destPath"

    .line 15
    .line 16
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz v7, :cond_9

    .line 20
    .line 21
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v3, "fail sdcard not mounted: F10002"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    move-object v1, p0

    .line 49
    move-object/from16 v2, p4

    .line 50
    .line 51
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const-string v1, "fail no such file or directory: F10007, copyFile %s -> %s"

    .line 60
    .line 61
    const-string v13, "format(format, *args)"

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 66
    .line 67
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-array v3, v11, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v0, v3, v10

    .line 86
    .line 87
    aput-object v2, v3, v9

    .line 88
    .line 89
    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x4

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    move-object v2, p0

    .line 104
    move-object/from16 v3, p4

    .line 105
    .line 106
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-ne v0, v9, :cond_8

    .line 125
    .line 126
    const-string v0, "local_data"

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    invoke-static {v8, v0, v10, v11, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-static {p1, v1, v11, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkLocalDataFileDir$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    invoke-static {p1, v1, v11, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkTempFileDirRunTime$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    :goto_0
    if-eqz v0, :cond_5

    .line 145
    .line 146
    const/4 v5, 0x4

    .line 147
    const/4 v6, 0x0

    .line 148
    const-string v3, "fail the maximum size of the file storage limit exceeded: F10004"

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    move-object v1, p0

    .line 152
    move-object/from16 v2, p4

    .line 153
    .line 154
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    :try_start_0
    new-instance v6, Lcom/cloud/tmc/integration/bridge/FileBridge$copyFile$copySuccess$1;

    .line 159
    .line 160
    invoke-direct {v6, p1}, Lcom/cloud/tmc/integration/bridge/FileBridge$copyFile$copySuccess$1;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    .line 161
    .line 162
    .line 163
    const/4 v4, 0x1

    .line 164
    const/4 v5, 0x1

    .line 165
    move-object v1, p1

    .line 166
    move-object/from16 v2, p2

    .line 167
    .line 168
    move-object/from16 v3, p3

    .line 169
    .line 170
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->copyFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function3;)Z

    .line 171
    .line 172
    .line 173
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    const-string v1, "FileBridge"

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    move v0, v10

    .line 186
    :goto_1
    if-eqz v0, :cond_6

    .line 187
    .line 188
    if-eqz p4, :cond_7

    .line 189
    .line 190
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 195
    .line 196
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    new-array v2, v11, [Ljava/lang/Object;

    .line 213
    .line 214
    aput-object v0, v2, v10

    .line 215
    .line 216
    aput-object v1, v2, v9

    .line 217
    .line 218
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v1, "fail permission denied: F10005, copyFile %s -> %s"

    .line 223
    .line 224
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const/4 v6, 0x4

    .line 232
    const/4 v7, 0x0

    .line 233
    const/4 v5, 0x0

    .line 234
    move-object v2, p0

    .line 235
    move-object/from16 v3, p4

    .line 236
    .line 237
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_7
    :goto_2
    return-void

    .line 241
    :cond_8
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 242
    .line 243
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    new-array v3, v11, [Ljava/lang/Object;

    .line 260
    .line 261
    aput-object v0, v3, v10

    .line 262
    .line 263
    aput-object v2, v3, v9

    .line 264
    .line 265
    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const/4 v6, 0x4

    .line 277
    const/4 v7, 0x0

    .line 278
    const/4 v5, 0x0

    .line 279
    move-object v2, p0

    .line 280
    move-object/from16 v3, p4

    .line 281
    .line 282
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_9
    :goto_3
    const/4 v12, 0x4

    .line 287
    const/4 v13, 0x0

    .line 288
    const-string v10, "parameter error: F10001"

    .line 289
    .line 290
    const/4 v11, 0x0

    .line 291
    move-object v8, p0

    .line 292
    move-object/from16 v9, p4

    .line 293
    .line 294
    invoke-static/range {v8 .. v13}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method

.method public final fstat(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileFstat"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const-class v3, Lcom/cloud/tmc/integration/model/FileCache;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-interface {p1, v3, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v3, "app.getData(FileCache::class.java, true)"

    .line 21
    .line 22
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/io/File;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-eqz p3, :cond_3

    .line 57
    .line 58
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v3, "stats"

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v3, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    const-string v1, "FileBridge"

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v1, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    const/4 v4, 0x4

    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v3, "fail permission denied: F10005"

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    move-object v0, p0

    .line 96
    move-object v1, p3

    .line 97
    move-object v2, v3

    .line 98
    move v3, v6

    .line 99
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-void

    .line 103
    :cond_4
    :goto_2
    const/4 v4, 0x4

    .line 104
    const/4 v5, 0x0

    .line 105
    const-string v3, "bad file descriptor: F10003"

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v0, p0

    .line 109
    move-object v1, p3

    .line 110
    move-object v2, v3

    .line 111
    move v3, v6

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    :goto_3
    const/4 v4, 0x4

    .line 117
    const/4 v5, 0x0

    .line 118
    const-string v3, "parameter error: F10001"

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    move-object v0, p0

    .line 122
    move-object v1, p3

    .line 123
    move-object v2, v3

    .line 124
    move v3, v6

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final getFileInfo(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 12
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileGetFileInfo"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "size"

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p3, :cond_2

    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void

    .line 54
    :cond_3
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void

    .line 90
    :cond_5
    const/4 v4, 0x4

    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v2, "fail file does not exist: F10006"

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    move-object v0, p0

    .line 96
    move-object v1, p3

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    :goto_1
    const/4 v10, 0x4

    .line 102
    const/4 v11, 0x0

    .line 103
    const-string v8, "parameter error: F10001"

    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    move-object v6, p0

    .line 107
    move-object v7, p3

    .line 108
    invoke-static/range {v6 .. v11}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final mkdir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "recursive"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileMkdir"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v3, "fail sdcard not mounted: F10002"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object/from16 v2, p4

    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "fail file already exists "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/4 v7, 0x4

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v3, p0

    .line 68
    move-object/from16 v4, p4

    .line 69
    .line 70
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    if-nez p3, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "fail no such file or directory: F10007 "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/4 v7, 0x4

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    move-object v3, p0

    .line 111
    move-object/from16 v4, p4

    .line 112
    .line 113
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    if-eqz p3, :cond_5

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 138
    .line 139
    .line 140
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_1

    .line 142
    :goto_0
    const-string v2, "FileBridge"

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v2, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_1
    if-eqz v0, :cond_6

    .line 153
    .line 154
    if-eqz p4, :cond_7

    .line 155
    .line 156
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v2, "fail permission denied: F10005, open "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const/4 v7, 0x4

    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v6, 0x0

    .line 184
    move-object v3, p0

    .line 185
    move-object/from16 v4, p4

    .line 186
    .line 187
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    :goto_2
    return-void

    .line 191
    :cond_8
    :goto_3
    const/4 v13, 0x4

    .line 192
    const/4 v14, 0x0

    .line 193
    const-string v11, "parameter error: F10001"

    .line 194
    .line 195
    const/4 v12, 0x0

    .line 196
    move-object v9, p0

    .line 197
    move-object/from16 v10, p4

    .line 198
    .line 199
    invoke-static/range {v9 .. v14}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "FileBridge"

    .line 2
    .line 3
    const-string v1, "onFinalized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    const-string v0, "FileBridge"

    .line 2
    .line 3
    const-string v1, "onInitialized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final open(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "flag"
            }
            stringDefault = "r"
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileOpen"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "flag"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    if-eqz p2, :cond_6

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v3, "fail sdcard not mounted: F10002"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p4

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "fail no such file or directory: F10007 "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v4, 0x4

    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    move-object v0, p0

    .line 80
    move-object v1, p4

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    :try_start_0
    invoke-static {p1, v0, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->open(Lcom/cloud/tmc/integration/structure/App;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    const-string p2, "FileBridge"

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    :goto_0
    if-eqz p1, :cond_4

    .line 102
    .line 103
    if-eqz p4, :cond_5

    .line 104
    .line 105
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const-string p3, "fd"

    .line 110
    .line 111
    invoke-virtual {p2, p3, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    if-eqz p4, :cond_5

    .line 124
    .line 125
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_1
    return-void

    .line 129
    :cond_6
    :goto_2
    const/4 v4, 0x4

    .line 130
    const/4 v5, 0x0

    .line 131
    const-string v2, "parameter error: F10001"

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    move-object v0, p0

    .line 135
    move-object v1, p4

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final read(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IJLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "length"
            }
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "position"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileRead"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p2

    .line 3
    move-wide v2, p4

    .line 4
    move-object/from16 v4, p6

    .line 5
    .line 6
    const-string v5, "FileBridge"

    .line 7
    .line 8
    if-eqz v0, :cond_f

    .line 9
    .line 10
    if-eqz v1, :cond_f

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    const-class v6, Lcom/cloud/tmc/integration/model/FileCache;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    invoke-interface {p1, v6, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v6, "app.getData(FileCache::class.java, true)"

    .line 28
    .line 29
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFlags()Ljava/util/WeakHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/String;

    .line 43
    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    const/4 v6, 0x0

    .line 48
    const-string v2, "parameter error: F10001"

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    move-object v0, p0

    .line 52
    move-object/from16 v1, p6

    .line 53
    .line 54
    move v4, v5

    .line 55
    move-object v5, v6

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/io/File;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object v0, v1

    .line 81
    :goto_0
    if-eqz v0, :cond_e

    .line 82
    .line 83
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-nez v7, :cond_3

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_3
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    const-wide/32 v9, 0x6400000

    .line 96
    .line 97
    .line 98
    cmp-long v7, v7, v9

    .line 99
    .line 100
    if-lez v7, :cond_4

    .line 101
    .line 102
    const/4 v5, 0x4

    .line 103
    const/4 v6, 0x0

    .line 104
    const-string v2, "native buffer exceeds size limit: F10008"

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    move-object v0, p0

    .line 108
    move-object/from16 v1, p6

    .line 109
    .line 110
    move v4, v5

    .line 111
    move-object v5, v6

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    const/16 v8, 0x72

    .line 121
    .line 122
    if-eq v7, v8, :cond_a

    .line 123
    .line 124
    const/16 v8, 0xbea

    .line 125
    .line 126
    if-eq v7, v8, :cond_9

    .line 127
    .line 128
    const/16 v8, 0xdf9

    .line 129
    .line 130
    if-eq v7, v8, :cond_8

    .line 131
    .line 132
    const/16 v8, 0xe94

    .line 133
    .line 134
    if-eq v7, v8, :cond_7

    .line 135
    .line 136
    const v8, 0x17a39

    .line 137
    .line 138
    .line 139
    if-eq v7, v8, :cond_6

    .line 140
    .line 141
    const v8, 0x17ad4

    .line 142
    .line 143
    .line 144
    if-eq v7, v8, :cond_5

    .line 145
    .line 146
    const v8, 0x1cd6a

    .line 147
    .line 148
    .line 149
    if-ne v7, v8, :cond_d

    .line 150
    .line 151
    const-string v7, "wx+"

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_d

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_5
    const-string v7, "ax+"

    .line 164
    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_d

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    const-string v7, "as+"

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_d

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    const-string v7, "w+"

    .line 182
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_d

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    const-string v7, "r+"

    .line 191
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_d

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_9
    const-string v7, "a+"

    .line 200
    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_d

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_a
    const-string v7, "r"

    .line 209
    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_d

    .line 215
    .line 216
    :goto_1
    new-instance v6, Ljava/io/FileInputStream;

    .line 217
    .line 218
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 219
    .line 220
    .line 221
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 222
    .line 223
    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .line 225
    .line 226
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->available()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v8, "total size: "

    .line 236
    .line 237
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    if-nez p3, :cond_b

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_b
    move v0, p3

    .line 254
    :goto_2
    new-array v0, v0, [B

    .line 255
    .line 256
    invoke-virtual {v7, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 257
    .line 258
    .line 259
    move-result-wide v8

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v10, "position: "

    .line 266
    .line 267
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v2, " , skip: "

    .line 274
    .line 275
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v5, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v4, :cond_c

    .line 293
    .line 294
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 295
    .line 296
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v6, "bytesRead"

    .line 300
    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v3, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 306
    .line 307
    .line 308
    const-string v2, "arrayBuffer"

    .line 309
    .line 310
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/HexUtil;->formatHexString([B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v3, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :catchall_1
    move-exception v0

    .line 322
    move-object v1, v0

    .line 323
    goto :goto_4

    .line 324
    :cond_c
    :goto_3
    const-string v0, "read File finish"

    .line 325
    .line 326
    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    .line 328
    .line 329
    :try_start_2
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 334
    :catchall_2
    move-exception v0

    .line 335
    move-object v2, v0

    .line 336
    :try_start_4
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    throw v2

    .line 340
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    .line 341
    .line 342
    const-string v1, "Permission not supported for reading to file"

    .line 343
    .line 344
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v5, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    const/4 v5, 0x4

    .line 356
    const/4 v6, 0x0

    .line 357
    const-string v2, "fail permission denied: F10005"

    .line 358
    .line 359
    const/4 v3, 0x0

    .line 360
    move-object v0, p0

    .line 361
    move-object/from16 v1, p6

    .line 362
    .line 363
    move v4, v5

    .line 364
    move-object v5, v6

    .line 365
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :cond_e
    :goto_6
    const/4 v5, 0x4

    .line 370
    const/4 v6, 0x0

    .line 371
    const-string v2, "bad file descriptor: F10003"

    .line 372
    .line 373
    const/4 v3, 0x0

    .line 374
    move-object v0, p0

    .line 375
    move-object/from16 v1, p6

    .line 376
    .line 377
    move v4, v5

    .line 378
    move-object v5, v6

    .line 379
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :cond_f
    :goto_7
    const/4 v5, 0x4

    .line 384
    const/4 v6, 0x0

    .line 385
    const-string v2, "parameter error: F10001"

    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    move-object v0, p0

    .line 389
    move-object/from16 v1, p6

    .line 390
    .line 391
    move v4, v5

    .line 392
    move-object v5, v6

    .line 393
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    return-void
.end method

.method public final readDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileReadDir"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v5, 0x0

    .line 21
    const-string v2, "fail sdcard not mounted: F10002"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p3

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "fail no such file or directory: F10007 "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    move-object v0, p0

    .line 61
    move-object v1, p3

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/bridge/FileBridge$readDir$files$1;->INSTANCE:Lcom/cloud/tmc/integration/bridge/FileBridge$readDir$files$1;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static {v2, v3, v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v4, Lcom/google/gson/JsonArray;

    .line 74
    .line 75
    array-length v5, v0

    .line 76
    invoke-direct {v4, v5}, Lcom/google/gson/JsonArray;-><init>(I)V

    .line 77
    .line 78
    .line 79
    array-length v5, v0

    .line 80
    :goto_0
    if-ge v3, v5, :cond_3

    .line 81
    .line 82
    aget-object v6, v0, v3

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    if-eqz p3, :cond_4

    .line 97
    .line 98
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v3, "files"

    .line 103
    .line 104
    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_1
    const-string v3, "FileBridge"

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v3, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v3, "fail permission denied: F10005 , open "

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const/4 v4, 0x4

    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v3, 0x0

    .line 149
    move-object v0, p0

    .line 150
    move-object v1, p3

    .line 151
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_2
    return-void

    .line 155
    :cond_5
    :goto_3
    const/4 v4, 0x4

    .line 156
    const/4 v5, 0x0

    .line 157
    const-string v2, "parameter error: F10001"

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    move-object v0, p0

    .line 161
    move-object v1, p3

    .line 162
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final readFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;IILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "encoding"
            }
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "position"
            }
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "length"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileReadFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v3, "encoding"

    .line 2
    .line 3
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_b

    .line 7
    .line 8
    if-eqz p2, :cond_b

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v3, "fail sdcard not mounted: F10002"

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v0, p0

    .line 30
    move-object v1, p6

    .line 31
    move-object v2, v3

    .line 32
    move v3, v6

    .line 33
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_2
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "fail no such file or directory: F10007 "

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v4, 0x4

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    move-object v0, p0

    .line 78
    move-object v1, p6

    .line 79
    move-object v2, v3

    .line 80
    move v3, v6

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    const-wide/32 v6, 0x6400000

    .line 90
    .line 91
    .line 92
    cmp-long v4, v4, v6

    .line 93
    .line 94
    if-lez v4, :cond_4

    .line 95
    .line 96
    const/4 v4, 0x4

    .line 97
    const/4 v5, 0x0

    .line 98
    const-string v3, "native buffer exceeds size limit: F10008"

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v0, p0

    .line 102
    move-object v1, p6

    .line 103
    move-object v2, v3

    .line 104
    move v3, v6

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-static {v3}, Lcom/cloud/tmc/worker/utils/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-string v4, "readFile2BytesByStream(file)"

    .line 114
    .line 115
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    if-eqz p5, :cond_5

    .line 119
    .line 120
    add-int v4, p4, p5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    array-length v4, v3

    .line 124
    :goto_0
    invoke-static {v3, p4, v4}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([BII)[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    const-string v4, "data"

    .line 133
    .line 134
    if-nez v3, :cond_8

    .line 135
    .line 136
    if-eqz p6, :cond_7

    .line 137
    .line 138
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 139
    .line 140
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 141
    .line 142
    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    new-array v0, v0, [B

    .line 147
    .line 148
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->newByteArray([B)[B

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v3, "newByteArray()"

    .line 153
    .line 154
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/HexUtil;->formatHexString([B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p6, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    return-void

    .line 168
    :cond_8
    :try_start_0
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkEncoding(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    const-string v0, ""

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto :goto_2

    .line 178
    :cond_9
    invoke-static {v0, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->getByteArrayByDecode([BLjava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_1
    if-eqz p6, :cond_a

    .line 183
    .line 184
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 185
    .line 186
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {p6, v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :goto_2
    const-string v3, "FileBridge"

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v3, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v3, "the named is "

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, " charset is not supported!"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const/4 v4, 0x4

    .line 228
    const/4 v5, 0x0

    .line 229
    const/4 v6, 0x0

    .line 230
    move-object v0, p0

    .line 231
    move-object v1, p6

    .line 232
    move-object v2, v3

    .line 233
    move v3, v6

    .line 234
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_a
    :goto_3
    return-void

    .line 238
    :cond_b
    :goto_4
    const/4 v4, 0x4

    .line 239
    const/4 v5, 0x0

    .line 240
    const-string v3, "parameter error: F10001"

    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    move-object v0, p0

    .line 244
    move-object v1, p6

    .line 245
    move-object v2, v3

    .line 246
    move v3, v6

    .line 247
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public final readSDDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    if-eqz v1, :cond_6

    .line 17
    .line 18
    if-eqz p2, :cond_6

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v3, "fail sdcard not mounted: F10002"

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v1, p0

    .line 40
    move-object v2, p3

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    new-instance v2, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$block$1;

    .line 46
    .line 47
    invoke-direct {v2, p0, p3, p2, v1}, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$block$1;-><init>(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 64
    .line 65
    const-string v3, "fail file does not exist: F10006"

    .line 66
    .line 67
    const/4 v5, 0x4

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v1, p0

    .line 71
    move-object v2, p3

    .line 72
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    new-instance v1, Lkotlin/text/Regex;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    const-string v0, "STORAGE"

    .line 88
    .line 89
    filled-new-array {v0}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;

    .line 98
    .line 99
    invoke-direct {v1, v2, p2, p0, p3}, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v1, "fail no such file or directory: F10007 "

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const/4 v5, 0x4

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    move-object v1, p0

    .line 131
    move-object v2, p3

    .line 132
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_2
    const-string v1, "FileBridge"

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v1, "fail permission denied: F10005 , open "

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const/4 v5, 0x4

    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    move-object v1, p0

    .line 166
    move-object v2, p3

    .line 167
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :goto_3
    return-void

    .line 171
    :cond_6
    :goto_4
    const/4 v5, 0x4

    .line 172
    const/4 v6, 0x0

    .line 173
    const-string v3, "parameter error: F10001"

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    move-object v1, p0

    .line 177
    move-object v2, p3

    .line 178
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final rename(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 18
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "oldPath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "newPath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileRename"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    if-eqz p2, :cond_b

    .line 11
    .line 12
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    if-eqz v1, :cond_b

    .line 21
    .line 22
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    invoke-static/range {p2 .. p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    if-eqz p4, :cond_2

    .line 37
    .line 38
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_4

    .line 47
    .line 48
    const/4 v10, 0x4

    .line 49
    const/4 v11, 0x0

    .line 50
    const-string v8, "fail sdcard not mounted: F10002"

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    move-object/from16 v6, p0

    .line 54
    .line 55
    move-object/from16 v7, p4

    .line 56
    .line 57
    invoke-static/range {v6 .. v11}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const-string v7, "fail no such file or directory: F10007, rename %s -> %s"

    .line 70
    .line 71
    const-string v8, "format(format, *args)"

    .line 72
    .line 73
    if-eqz v5, :cond_a

    .line 74
    .line 75
    if-nez v6, :cond_5

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_5
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_6

    .line 92
    .line 93
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-array v5, v4, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v0, v5, v3

    .line 106
    .line 107
    aput-object v1, v5, v2

    .line 108
    .line 109
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x4

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v4, 0x0

    .line 123
    move-object/from16 v1, p0

    .line 124
    .line 125
    move-object/from16 v2, p4

    .line 126
    .line 127
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    :try_start_0
    invoke-static {v5, v1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->rename(Ljava/io/File;Ljava/io/File;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_7

    .line 136
    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    const-string v0, "app.appId"

    .line 142
    .line 143
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/16 v16, 0x8

    .line 147
    .line 148
    const/16 v17, 0x0

    .line 149
    .line 150
    const/4 v15, 0x0

    .line 151
    move-object v13, v5

    .line 152
    move-object v14, v1

    .line 153
    invoke-static/range {v12 .. v17}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    const-string v6, "FileBridge"

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v6, v7, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    move v6, v3

    .line 168
    :cond_7
    :goto_0
    if-eqz v6, :cond_8

    .line 169
    .line 170
    if-eqz p4, :cond_9

    .line 171
    .line 172
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    new-array v5, v4, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v0, v5, v3

    .line 189
    .line 190
    aput-object v1, v5, v2

    .line 191
    .line 192
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, "fail permission denied: F10005, rename %s -> %s"

    .line 197
    .line 198
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const/4 v6, 0x4

    .line 206
    const/4 v7, 0x0

    .line 207
    const/4 v5, 0x0

    .line 208
    move-object/from16 v2, p0

    .line 209
    .line 210
    move-object/from16 v3, p4

    .line 211
    .line 212
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    :goto_1
    return-void

    .line 216
    :cond_a
    :goto_2
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 217
    .line 218
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-array v1, v4, [Ljava/lang/Object;

    .line 235
    .line 236
    aput-object v5, v1, v3

    .line 237
    .line 238
    aput-object v0, v1, v2

    .line 239
    .line 240
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const/4 v5, 0x4

    .line 252
    const/4 v6, 0x0

    .line 253
    const/4 v4, 0x0

    .line 254
    move-object/from16 v1, p0

    .line 255
    .line 256
    move-object/from16 v2, p4

    .line 257
    .line 258
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_b
    :goto_3
    const/4 v11, 0x4

    .line 263
    const/4 v12, 0x0

    .line 264
    const-string v9, "parameter error: F10001"

    .line 265
    .line 266
    const/4 v10, 0x0

    .line 267
    move-object/from16 v7, p0

    .line 268
    .line 269
    move-object/from16 v8, p4

    .line 270
    .line 271
    invoke-static/range {v7 .. v12}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public final requestSDPermission(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v2, "parameter error: F10001"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p2

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/FileBridge;->requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "FileBridge"

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v4, "fail permission denied: F10005"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    move-object v2, p0

    .line 48
    move-object v3, p2

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public final rmdir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "recursive"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileRmdir"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v3, "fail sdcard not mounted: F10002"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object/from16 v2, p4

    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "fail no such file or directory: F10007 "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v7, 0x4

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v3, p0

    .line 66
    move-object/from16 v4, p4

    .line 67
    .line 68
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    move/from16 v0, p3

    .line 73
    .line 74
    :try_start_0
    invoke-static {v1, v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->deleteDir(Ljava/io/File;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object v2, v0

    .line 81
    const-string v0, "FileBridge"

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v0, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_0
    if-eqz v0, :cond_3

    .line 92
    .line 93
    if-eqz p4, :cond_4

    .line 94
    .line 95
    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "fail permission denied: F10005, open "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, "}"

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    move-object v2, p0

    .line 129
    move-object/from16 v3, p4

    .line 130
    .line 131
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_1
    return-void

    .line 135
    :cond_5
    :goto_2
    const/4 v12, 0x4

    .line 136
    const/4 v13, 0x0

    .line 137
    const-string v10, "parameter error: F10001"

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    move-object v8, p0

    .line 141
    move-object/from16 v9, p4

    .line 142
    .line 143
    invoke-static/range {v8 .. v13}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final saveFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "tempFilePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileSaveFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    if-eqz p2, :cond_c

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    if-eqz p3, :cond_c

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v2, "fail sdcard not mounted: F10002"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p4

    .line 36
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_b

    .line 45
    .line 46
    const-string v1, "local_data"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v4, 0x2

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static {p2, v1, v7, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_3
    invoke-static {p1, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_a

    .line 72
    .line 73
    invoke-static {p3, v1, v7, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_4

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_4
    invoke-static {p3, v1, v7, v4, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-static {p1, v5, v4, v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkLocalDataFileDir$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-static {p1, v5, v4, v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkTempFileDirRunTime$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_0
    if-eqz v1, :cond_6

    .line 97
    .line 98
    const/4 v4, 0x4

    .line 99
    const/4 v5, 0x0

    .line 100
    const-string v2, "fail the maximum size of the file storage limit exceeded: F10004"

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    move-object v0, p0

    .line 104
    move-object v1, p4

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 110
    .line 111
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 112
    .line 113
    .line 114
    :try_start_0
    new-instance v6, Lcom/cloud/tmc/integration/bridge/FileBridge$saveFile$copySuccess$1;

    .line 115
    .line 116
    invoke-direct {v6, v9, p1}, Lcom/cloud/tmc/integration/bridge/FileBridge$saveFile$copySuccess$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/integration/structure/App;)V

    .line 117
    .line 118
    .line 119
    const/4 v4, 0x1

    .line 120
    const/4 v5, 0x0

    .line 121
    move-object v1, p1

    .line 122
    move-object v2, p2

    .line 123
    move-object v3, p3

    .line 124
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->copyFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function3;)Z

    .line 125
    .line 126
    .line 127
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "FileBridge"

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    if-eqz v7, :cond_8

    .line 140
    .line 141
    if-eqz p4, :cond_9

    .line 142
    .line 143
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 144
    .line 145
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Ljava/lang/String;

    .line 151
    .line 152
    if-nez v1, :cond_7

    .line 153
    .line 154
    const-string v1, ""

    .line 155
    .line 156
    :cond_7
    const-string v2, "savedFilePath"

    .line 157
    .line 158
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p4, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "fail permission denied: F10005, open "

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/4 v4, 0x4

    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v3, 0x0

    .line 189
    move-object v0, p0

    .line 190
    move-object v1, p4

    .line 191
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    :goto_2
    return-void

    .line 195
    :cond_a
    :goto_3
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v2, "fail no such file or directory: F10007 "

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const/4 v4, 0x4

    .line 217
    const/4 v5, 0x0

    .line 218
    const/4 v3, 0x0

    .line 219
    move-object v0, p0

    .line 220
    move-object v1, p4

    .line 221
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_b
    :goto_4
    const/4 v4, 0x4

    .line 226
    const/4 v5, 0x0

    .line 227
    const-string v2, "fail tempFilePath file not exist"

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    move-object v0, p0

    .line 231
    move-object v1, p4

    .line 232
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_c
    :goto_5
    const/4 v4, 0x4

    .line 237
    const/4 v5, 0x0

    .line 238
    const-string v2, "parameter error: F10001"

    .line 239
    .line 240
    const/4 v3, 0x0

    .line 241
    move-object v0, p0

    .line 242
    move-object v1, p4

    .line 243
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public final stat(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 17
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "path"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "recursive"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileStat"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    const-string v0, "path"

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    if-eqz p2, :cond_7

    .line 10
    .line 11
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v3, "fail sdcard not mounted: F10002"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    move-object/from16 v1, p0

    .line 31
    .line 32
    move-object/from16 v2, p4

    .line 33
    .line 34
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string v2, "stats"

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    :try_start_1
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v7, v1}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v8, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    sget-object v1, Lcom/cloud/tmc/integration/bridge/FileBridge$stat$files$1;->INSTANCE:Lcom/cloud/tmc/integration/bridge/FileBridge$stat$files$1;

    .line 89
    .line 90
    move/from16 v3, p3

    .line 91
    .line 92
    invoke-static {v9, v3, v1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v3, Lcom/google/gson/JsonArray;

    .line 97
    .line 98
    array-length v4, v1

    .line 99
    invoke-direct {v3, v4}, Lcom/google/gson/JsonArray;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v4, v0, v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {v7, v9}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v2, v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 125
    .line 126
    .line 127
    array-length v4, v1

    .line 128
    const/4 v5, 0x0

    .line 129
    :goto_1
    if-ge v5, v4, :cond_4

    .line 130
    .line 131
    aget-object v6, v1, v5

    .line 132
    .line 133
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const-string v12, "childFile.absolutePath"

    .line 142
    .line 143
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    .line 151
    .line 152
    new-instance v14, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    const-string v13, ""

    .line 168
    .line 169
    const/4 v15, 0x4

    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    const/4 v14, 0x0

    .line 173
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    invoke-virtual {v10, v0, v11}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-direct {v7, v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v10, v2, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 194
    .line 195
    .line 196
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    if-eqz v8, :cond_5

    .line 200
    .line 201
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v8, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    return-void

    .line 217
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v2, "fail no such file or directory: F10007 "

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    const/4 v5, 0x4

    .line 239
    const/4 v6, 0x0

    .line 240
    const/4 v4, 0x0

    .line 241
    move-object/from16 v1, p0

    .line 242
    .line 243
    move-object/from16 v2, p4

    .line 244
    .line 245
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :goto_2
    const-string v1, "FileBridge"

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v2, "fail permission denied: F10005, open "

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    const/4 v5, 0x4

    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v4, 0x0

    .line 282
    move-object/from16 v1, p0

    .line 283
    .line 284
    move-object/from16 v2, p4

    .line 285
    .line 286
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :goto_3
    return-void

    .line 290
    :cond_7
    :goto_4
    const/4 v5, 0x4

    .line 291
    const/4 v6, 0x0

    .line 292
    const-string v3, "parameter error: F10001"

    .line 293
    .line 294
    const/4 v4, 0x0

    .line 295
    move-object/from16 v1, p0

    .line 296
    .line 297
    move-object/from16 v2, p4

    .line 298
    .line 299
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method public final unlink(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileUnlink"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-eqz p1, :cond_9

    .line 4
    .line 5
    if-eqz p2, :cond_9

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v5, "fail sdcard not mounted: F10002"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v3, p0

    .line 27
    move-object/from16 v4, p3

    .line 28
    .line 29
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_2
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-array v3, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v2, v3, v1

    .line 58
    .line 59
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "fail operation not permitted, unlink %s"

    .line 64
    .line 65
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v0, "format(format, *args)"

    .line 70
    .line 71
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    move-object v2, p0

    .line 78
    move-object/from16 v3, p3

    .line 79
    .line 80
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v2, "fail no such file or directory: F10007 "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const/4 v7, 0x4

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    move-object v3, p0

    .line 115
    move-object/from16 v4, p3

    .line 116
    .line 117
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->isFileInAppPrivateDirectory(Ljava/io/File;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "deletion of public space files is not allowed: F10009 "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const/4 v7, 0x4

    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v6, 0x0

    .line 151
    move-object v3, p0

    .line 152
    move-object/from16 v4, p3

    .line 153
    .line 154
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_6

    .line 163
    .line 164
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyOldFileRemoveVUrl(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto :goto_1

    .line 170
    :cond_6
    :goto_0
    move v1, v0

    .line 171
    goto :goto_2

    .line 172
    :goto_1
    const-string v3, "FileBridge"

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v3, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_2
    if-eqz v1, :cond_7

    .line 182
    .line 183
    if-eqz p3, :cond_8

    .line 184
    .line 185
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v2, "fail permission denied: F10005 "

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    const/4 v7, 0x4

    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v6, 0x0

    .line 213
    move-object v3, p0

    .line 214
    move-object/from16 v4, p3

    .line 215
    .line 216
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_3
    return-void

    .line 220
    :cond_9
    :goto_4
    const/4 v13, 0x4

    .line 221
    const/4 v14, 0x0

    .line 222
    const-string v11, "parameter error: F10001"

    .line 223
    .line 224
    const/4 v12, 0x0

    .line 225
    move-object v9, p0

    .line 226
    move-object/from16 v10, p3

    .line 227
    .line 228
    invoke-static/range {v9 .. v14}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final unzip(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "zipFilePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "targetPath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileUnzip"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    if-eqz p3, :cond_6

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    const/4 v8, 0x0

    .line 31
    const-string v5, "fail sdcard not mounted: F10002"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p4

    .line 36
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p1, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const-string v3, " -> "

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v0, v4}, Lcom/cloud/tmc/integration/utils/compress/CompressUtils;->unzip(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    if-eqz p4, :cond_4

    .line 75
    .line 76
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v6, "unzip: "

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string v5, "FileBridge"

    .line 103
    .line 104
    invoke-static {v5, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v4, "fail permission denied: F10005, unzip "

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    const/4 v9, 0x4

    .line 139
    const/4 v10, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    move-object v5, p0

    .line 142
    move-object v6, p4

    .line 143
    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_0
    return-void

    .line 147
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v4, "fail no such file or directory: F10007, unzip "

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const/4 v9, 0x4

    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v8, 0x0

    .line 181
    move-object v5, p0

    .line 182
    move-object v6, p4

    .line 183
    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_6
    :goto_2
    const/4 v4, 0x4

    .line 188
    const/4 v5, 0x0

    .line 189
    const-string v2, "parameter error: F10001"

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    move-object v0, p0

    .line 193
    move-object v1, p4

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final write(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "data"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "encoding"
            }
            stringDefault = "utf8"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "position"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileWrite"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v9, p6

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/4 v11, 0x1

    .line 13
    const-string v12, "FileBridge"

    .line 14
    .line 15
    const-string v4, "data"

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v4, "encoding"

    .line 23
    .line 24
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_13

    .line 28
    .line 29
    if-eqz v1, :cond_13

    .line 30
    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    goto/16 :goto_b

    .line 38
    .line 39
    :cond_0
    const-class v4, Lcom/cloud/tmc/integration/model/FileCache;

    .line 40
    .line 41
    invoke-interface {v0, v4, v11}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v4, "app.getData(FileCache::class.java, true)"

    .line 46
    .line 47
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFlags()Ljava/util/WeakHashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    const/4 v5, 0x0

    .line 66
    const-string v2, "parameter error: F10001"

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    move-object v0, p0

    .line 70
    move-object/from16 v1, p6

    .line 71
    .line 72
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/io/File;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-object v0, v1

    .line 97
    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_3

    .line 102
    .line 103
    const/4 v4, 0x4

    .line 104
    const/4 v5, 0x0

    .line 105
    const-string v2, "bad file descriptor: F10003"

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    move-object v0, p0

    .line 109
    move-object/from16 v1, p6

    .line 110
    .line 111
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkEncoding(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static/range {p3 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->getByteArrayByEncode(Ljava/lang/String;Ljava/lang/String;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->getDefaultBufferSize()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .line 127
    .line 128
    invoke-direct {v13, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    .line 130
    .line 131
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    const/16 v7, 0x61

    .line 136
    .line 137
    if-eq v5, v7, :cond_c

    .line 138
    .line 139
    const/16 v7, 0x77

    .line 140
    .line 141
    if-eq v5, v7, :cond_b

    .line 142
    .line 143
    const/16 v7, 0xbea

    .line 144
    .line 145
    if-eq v5, v7, :cond_a

    .line 146
    .line 147
    const/16 v7, 0xc32

    .line 148
    .line 149
    if-eq v5, v7, :cond_9

    .line 150
    .line 151
    const/16 v7, 0xc37

    .line 152
    .line 153
    if-eq v5, v7, :cond_8

    .line 154
    .line 155
    const/16 v7, 0xe94

    .line 156
    .line 157
    if-eq v5, v7, :cond_7

    .line 158
    .line 159
    const/16 v7, 0xee1

    .line 160
    .line 161
    if-eq v5, v7, :cond_6

    .line 162
    .line 163
    const v7, 0x17a39

    .line 164
    .line 165
    .line 166
    if-eq v5, v7, :cond_5

    .line 167
    .line 168
    const v7, 0x17ad4

    .line 169
    .line 170
    .line 171
    if-eq v5, v7, :cond_4

    .line 172
    .line 173
    const v7, 0x1cd6a

    .line 174
    .line 175
    .line 176
    if-ne v5, v7, :cond_12

    .line 177
    .line 178
    const-string v5, "wx+"

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_12

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    move-object v1, v0

    .line 189
    goto/16 :goto_7

    .line 190
    .line 191
    :cond_4
    const-string v5, "ax+"

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_12

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_5
    const-string v5, "as+"

    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_12

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    const-string v5, "wx"

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_12

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_7
    const-string v5, "w+"

    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_12

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_8
    const-string v5, "ax"

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_12

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_9
    const-string v5, "as"

    .line 237
    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_12

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    const-string v5, "a+"

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_12

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_b
    const-string v5, "w"

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_12

    .line 261
    .line 262
    :goto_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 263
    .line 264
    invoke-direct {v4, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_c
    const-string v5, "a"

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_12

    .line 275
    .line 276
    :goto_2
    new-instance v4, Ljava/io/FileOutputStream;

    .line 277
    .line 278
    invoke-direct {v4, v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 279
    .line 280
    .line 281
    :goto_3
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 282
    .line 283
    invoke-direct {v14, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .line 285
    .line 286
    :try_start_2
    new-array v0, v6, [B

    .line 287
    .line 288
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 289
    .line 290
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 291
    .line 292
    .line 293
    move v5, v10

    .line 294
    :goto_4
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    iput v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 299
    .line 300
    const/4 v7, -0x1

    .line 301
    if-eq v6, v7, :cond_10

    .line 302
    .line 303
    if-nez v5, :cond_d

    .line 304
    .line 305
    move v7, v3

    .line 306
    goto :goto_5

    .line 307
    :cond_d
    move v7, v10

    .line 308
    :goto_5
    if-nez v5, :cond_e

    .line 309
    .line 310
    sub-int/2addr v6, v3

    .line 311
    :cond_e
    if-gez v6, :cond_f

    .line 312
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v4, "Invalid position: "

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v3, ", The offset is more than the length of the written data!"

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    const/4 v7, 0x4

    .line 336
    const/4 v8, 0x0

    .line 337
    const/4 v6, 0x0

    .line 338
    move-object v3, p0

    .line 339
    move-object/from16 v4, p6

    .line 340
    .line 341
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 342
    .line 343
    .line 344
    :try_start_3
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .line 346
    .line 347
    :try_start_4
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :catchall_1
    move-exception v0

    .line 352
    goto :goto_8

    .line 353
    :catch_0
    move-exception v0

    .line 354
    goto :goto_9

    .line 355
    :catchall_2
    move-exception v0

    .line 356
    move-object v1, v0

    .line 357
    goto :goto_6

    .line 358
    :cond_f
    :try_start_5
    invoke-virtual {v14, v0, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 359
    .line 360
    .line 361
    add-int/2addr v5, v6

    .line 362
    goto :goto_4

    .line 363
    :cond_10
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 364
    .line 365
    .line 366
    if-eqz v9, :cond_11

    .line 367
    .line 368
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const-string v3, "bytesWritten"

    .line 373
    .line 374
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-interface {v9, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 387
    .line 388
    .line 389
    :cond_11
    const-string v0, "write File finish"

    .line 390
    .line 391
    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 392
    .line 393
    .line 394
    :try_start_6
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    .line 396
    .line 397
    :try_start_7
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :goto_6
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 402
    :catchall_3
    move-exception v0

    .line 403
    move-object v3, v0

    .line 404
    :try_start_9
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    throw v3

    .line 408
    :cond_12
    new-instance v0, Ljava/lang/Exception;

    .line 409
    .line 410
    const-string v1, "Permission not supported for writing to file"

    .line 411
    .line 412
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 416
    :goto_7
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 417
    :catchall_4
    move-exception v0

    .line 418
    move-object v3, v0

    .line 419
    :try_start_b
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 420
    .line 421
    .line 422
    throw v3
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 423
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-static {v12, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    .line 429
    .line 430
    const/4 v4, 0x4

    .line 431
    const/4 v5, 0x0

    .line 432
    const-string v2, "fail permission denied: F10005"

    .line 433
    .line 434
    const/4 v3, 0x0

    .line 435
    move-object v0, p0

    .line 436
    move-object/from16 v1, p6

    .line 437
    .line 438
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto :goto_a

    .line 442
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v12, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 450
    .line 451
    new-array v0, v11, [Ljava/lang/Object;

    .line 452
    .line 453
    aput-object v2, v0, v10

    .line 454
    .line 455
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    const-string v1, "the named is %s charset is not supported!"

    .line 460
    .line 461
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const-string v0, "format(format, *args)"

    .line 466
    .line 467
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const/4 v4, 0x4

    .line 471
    const/4 v5, 0x0

    .line 472
    const/4 v3, 0x0

    .line 473
    move-object v0, p0

    .line 474
    move-object/from16 v1, p6

    .line 475
    .line 476
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :goto_a
    return-void

    .line 480
    :cond_13
    :goto_b
    const/4 v4, 0x4

    .line 481
    const/4 v5, 0x0

    .line 482
    const-string v2, "parameter error: F10001"

    .line 483
    .line 484
    const/4 v3, 0x0

    .line 485
    move-object v0, p0

    .line 486
    move-object/from16 v1, p6

    .line 487
    .line 488
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    return-void
.end method

.method public final writeFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 16
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "data"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "encoding"
            }
            stringDefault = "utf8"
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileWriteFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const-string v4, "FileBridge"

    .line 10
    .line 11
    const-string v5, "data"

    .line 12
    .line 13
    move-object/from16 v6, p3

    .line 14
    .line 15
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v5, "encoding"

    .line 19
    .line 20
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    if-eqz v1, :cond_9

    .line 26
    .line 27
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->isSDCardEnableByEnvironment()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    const-string v2, "fail sdcard not mounted: F10002"

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    move-object/from16 v0, p0

    .line 47
    .line 48
    move-object/from16 v1, p5

    .line 49
    .line 50
    move v3, v6

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v7}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "fail no such file or directory: F10007, open "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/4 v4, 0x4

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-object/from16 v1, p5

    .line 102
    .line 103
    move v3, v6

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    const-string v7, "local_data"

    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    const/4 v8, 0x2

    .line 112
    const/4 v14, 0x0

    .line 113
    invoke-static {v1, v7, v13, v8, v14}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    invoke-static {v0, v14, v8, v14}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkLocalDataFileDir$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-static {v0, v14, v8, v14}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkTempFileDirRunTime$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    :goto_0
    if-eqz v7, :cond_5

    .line 129
    .line 130
    const/4 v4, 0x4

    .line 131
    const/4 v5, 0x0

    .line 132
    const-string v2, "fail the maximum size of the file storage limit exceeded: F10004"

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    move-object/from16 v0, p0

    .line 136
    .line 137
    move-object/from16 v1, p5

    .line 138
    .line 139
    move v3, v6

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->createFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    const-string v15, "fail permission denied: F10005, open "

    .line 149
    .line 150
    if-nez v1, :cond_6

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const/4 v4, 0x4

    .line 172
    const/4 v5, 0x0

    .line 173
    const/4 v6, 0x0

    .line 174
    move-object/from16 v0, p0

    .line 175
    .line 176
    move-object/from16 v1, p5

    .line 177
    .line 178
    move v3, v6

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    const-string v0, "app.appId"

    .line 188
    .line 189
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v11, 0x8

    .line 193
    .line 194
    const/4 v12, 0x0

    .line 195
    const/4 v8, 0x0

    .line 196
    const/4 v10, 0x0

    .line 197
    move-object v9, v5

    .line 198
    invoke-static/range {v7 .. v12}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkEncoding(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static/range {p3 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->getByteArrayByEncode(Ljava/lang/String;Ljava/lang/String;)[B

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->getDefaultBufferSize()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 213
    .line 214
    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    .line 216
    .line 217
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 218
    .line 219
    new-instance v0, Ljava/io/FileOutputStream;

    .line 220
    .line 221
    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v7, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 225
    .line 226
    .line 227
    :try_start_2
    new-array v0, v1, [B

    .line 228
    .line 229
    move v1, v13

    .line 230
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    const/4 v9, -0x1

    .line 235
    if-eq v8, v9, :cond_7

    .line 236
    .line 237
    invoke-virtual {v7, v0, v13, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 238
    .line 239
    .line 240
    add-int/2addr v1, v8

    .line 241
    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    move-object v1, v0

    .line 244
    goto :goto_2

    .line 245
    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 246
    .line 247
    .line 248
    if-eqz v3, :cond_8

    .line 249
    .line 250
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v8, "bytesWritten"

    .line 255
    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v8, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 269
    .line 270
    .line 271
    :cond_8
    const-string v0, "writeFile File finish"

    .line 272
    .line 273
    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .line 278
    :try_start_3
    invoke-static {v7, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 279
    .line 280
    .line 281
    :try_start_4
    invoke-static {v6, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    goto :goto_4

    .line 287
    :catch_0
    move-exception v0

    .line 288
    goto :goto_5

    .line 289
    :catchall_2
    move-exception v0

    .line 290
    move-object v1, v0

    .line 291
    goto :goto_3

    .line 292
    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 293
    :catchall_3
    move-exception v0

    .line 294
    move-object v8, v0

    .line 295
    :try_start_6
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 299
    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 300
    :catchall_4
    move-exception v0

    .line 301
    move-object v7, v0

    .line 302
    :try_start_8
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    throw v7
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 306
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v4, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    const/4 v4, 0x4

    .line 333
    const/4 v5, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    move-object/from16 v0, p0

    .line 336
    .line 337
    move-object/from16 v1, p5

    .line 338
    .line 339
    move v3, v6

    .line 340
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v4, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v1, "the named is "

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, " charset is not supported!"

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    const/4 v4, 0x4

    .line 374
    const/4 v5, 0x0

    .line 375
    const/4 v6, 0x0

    .line 376
    move-object/from16 v0, p0

    .line 377
    .line 378
    move-object/from16 v1, p5

    .line 379
    .line 380
    move v3, v6

    .line 381
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    :goto_6
    return-void

    .line 385
    :cond_9
    :goto_7
    const/4 v4, 0x4

    .line 386
    const/4 v5, 0x0

    .line 387
    const-string v2, "parameter error: F10001"

    .line 388
    .line 389
    const/4 v6, 0x0

    .line 390
    move-object/from16 v0, p0

    .line 391
    .line 392
    move-object/from16 v1, p5

    .line 393
    .line 394
    move v3, v6

    .line 395
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    return-void
.end method
