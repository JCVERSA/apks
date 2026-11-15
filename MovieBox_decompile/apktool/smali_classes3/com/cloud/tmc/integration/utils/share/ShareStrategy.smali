.class public final Lcom/cloud/tmc/integration/utils/share/ShareStrategy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J#\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0002J\"\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J4\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J\"\u0010\u001f\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareStrategy;",
        "Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;",
        "()V",
        "bytes2HexString",
        "",
        "data",
        "",
        "doShare",
        "",
        "context",
        "Landroid/content/Context;",
        "shareParams",
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "listener",
        "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
        "getExternalDownloadAppPath",
        "getExternalDownloadPath",
        "getFileMD5",
        "file",
        "Ljava/io/File;",
        "getFileUriByCursor",
        "Landroid/net/Uri;",
        "(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFileUriByProvider",
        "getSDCardPathByEnvironment",
        "handleShareChannels",
        "handleShareFile",
        "block",
        "Lkotlin/Function0;",
        "isSDCardEnableByEnvironment",
        "",
        "queryFileUriByCursor",
        "fileName",
        "absolutePath",
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
.field public static final Companion:Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;

.field private static final DIR_BYTEAPP:Ljava/lang/String; = "MiniApp"

.field private static final HANDLER:Landroid/os/Handler;

.field private static final MAX_QUERY_BY_CURSOR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShareStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->Companion:Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    .line 19
    .line 20
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

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getFileUriByCursor(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileUriByCursor(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getHANDLER$cp()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile$lambda$2(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final bytes2HexString([B)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "this as java.lang.String).toCharArray()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    array-length v2, p1

    .line 15
    mul-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    array-length v2, p1

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-byte v4, p1, v3

    .line 25
    .line 26
    shr-int/lit8 v5, v4, 0x4

    .line 27
    .line 28
    and-int/lit8 v5, v5, 0xf

    .line 29
    .line 30
    aget-char v5, v0, v5

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    and-int/lit8 v4, v4, 0xf

    .line 36
    .line 37
    aget-char v4, v0, v4

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "r.toString()"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method

.method private final getExternalDownloadAppPath()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->isSDCardEnableByEnvironment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getExternalDownloadPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "MiniApp"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "{\n            File(getEx\u2026P).absolutePath\n        }"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, ""

    .line 29
    .line 30
    :goto_0
    return-object v0
.end method

.method private final getExternalDownloadPath()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->isSDCardEnableByEnvironment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getSDCardPathByEnvironment()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "{\n            File(getSD\u2026S).absolutePath\n        }"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, ""

    .line 29
    .line 30
    :goto_0
    return-object v0
.end method

.method private final getFileMD5(Ljava/io/File;)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    const-string p1, "MD5"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Ljava/security/DigestInputStream;

    .line 23
    .line 24
    invoke-direct {v2, v1, p1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    const/high16 p1, 0x40000

    .line 28
    .line 29
    :try_start_2
    new-array p1, p1, [B

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-gtz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v3, "digest.digest()"

    .line 46
    .line 47
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    :try_start_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    .line 53
    .line 54
    :try_start_4
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :catchall_2
    move-exception p1

    .line 63
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 64
    :catchall_3
    move-exception v3

    .line 65
    :try_start_6
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 69
    :goto_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 70
    :catchall_4
    move-exception v2

    .line 71
    :try_start_8
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 75
    :goto_1
    const-string v1, "ShareStrategy"

    .line 76
    .line 77
    const-string v2, "getFileMD5: "

    .line 78
    .line 79
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    new-array p1, v0, [B

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_2
    :goto_2
    new-array p1, v0, [B

    .line 86
    .line 87
    return-object p1
.end method

.method private final getFileUriByCursor(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v2, v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    .line 36
    .line 37
    const-string v5, "ShareStrategy"

    .line 38
    .line 39
    const-string v6, "destFile.absolutePath"

    .line 40
    .line 41
    const-string v7, "destFile.name"

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x1

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    if-ne v4, v9, :cond_1

    .line 48
    .line 49
    iget v4, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->I$0:I

    .line 50
    .line 51
    iget-object v10, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$2:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v10, Ljava/io/File;

    .line 54
    .line 55
    iget-object v11, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v11, Landroid/content/Context;

    .line 58
    .line 59
    iget-object v12, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v12, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    .line 62
    .line 63
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    move-object v0, v11

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 84
    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getExternalDownloadAppPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-direct {v0, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_7

    .line 109
    .line 110
    move-object/from16 v4, p2

    .line 111
    .line 112
    invoke-direct {v1, v4}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileMD5(Ljava/io/File;)[B

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-direct {v1, v10}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->bytes2HexString([B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileMD5(Ljava/io/File;)[B

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-direct {v1, v11}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->bytes2HexString([B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    const/4 v14, 0x6

    .line 136
    const/4 v15, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const/4 v13, 0x0

    .line 139
    move-object/from16 v10, p2

    .line 140
    .line 141
    move-object v11, v0

    .line 142
    invoke-static/range {v10 .. v15}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_6

    .line 147
    .line 148
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->notifySystemToScan(Ljava/io/File;)V

    .line 149
    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    move-object v10, v0

    .line 153
    move-object v12, v1

    .line 154
    move-object v11, v8

    .line 155
    move-object/from16 v0, p1

    .line 156
    .line 157
    :goto_1
    if-nez v11, :cond_5

    .line 158
    .line 159
    const/4 v13, 0x3

    .line 160
    if-ge v4, v13, :cond_5

    .line 161
    .line 162
    iput-object v12, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v0, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$1:Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v10, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$2:Ljava/lang/Object;

    .line 167
    .line 168
    iput v4, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->I$0:I

    .line 169
    .line 170
    iput v9, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    .line 171
    .line 172
    const-wide/16 v13, 0xfa

    .line 173
    .line 174
    invoke-static {v13, v14, v2}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    if-ne v11, v3, :cond_4

    .line 179
    .line 180
    return-object v3

    .line 181
    :cond_4
    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v12, v0, v11, v13}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->queryFileUriByCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    new-instance v13, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v14, "getFileUriByCursor: queryFileUriByCursor uri: "

    .line 205
    .line 206
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v14, " count: "

    .line 213
    .line 214
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    invoke-static {v5, v13}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_5
    return-object v11

    .line 231
    :cond_6
    return-object v8

    .line 232
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v3, p1

    .line 247
    .line 248
    invoke-direct {v1, v3, v2, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->queryFileUriByCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 249
    .line 250
    .line 251
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    return-object v0

    .line 253
    :goto_4
    const-string v2, "getFileUriByCursor: "

    .line 254
    .line 255
    invoke-static {v5, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    return-object v8
.end method

.method private final getFileUriByProvider(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, ".fileprovider"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    const-string p2, "ShareStrategy"

    .line 29
    .line 30
    const-string v0, "getFileUri: "

    .line 31
    .line 32
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    :goto_0
    return-object p1
.end method

.method private final getSDCardPathByEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->isSDCardEnableByEnvironment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method private final handleShareChannels(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
            "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    const-string v9, "ShareStrategy"

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getShareFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    if-eqz v5, :cond_6

    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x21

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v10, 0x2

    .line 22
    if-lt v1, v2, :cond_0

    .line 23
    .line 24
    new-array v2, v10, [Ljava/lang/String;

    .line 25
    .line 26
    const-string v7, "android.permission.READ_MEDIA_IMAGES"

    .line 27
    .line 28
    aput-object v7, v2, v4

    .line 29
    .line 30
    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    .line 31
    .line 32
    aput-object v4, v2, v3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    .line 36
    .line 37
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 38
    .line 39
    aput-object v3, v2, v4

    .line 40
    .line 41
    :goto_0
    :try_start_0
    array-length v3, v2

    .line 42
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    const/16 v2, 0x22

    .line 55
    .line 56
    if-ge v1, v2, :cond_2

    .line 57
    .line 58
    const-string v0, "handleShareFile: has no write permission"

    .line 59
    .line 60
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getChannel()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-interface {v8, v0, v10}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object/from16 v11, p0

    .line 75
    .line 76
    :goto_1
    move-object/from16 v12, p2

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_1
    :goto_2
    return-void

    .line 80
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider()Z

    .line 87
    .line 88
    .line 89
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    move-object/from16 v11, p0

    .line 93
    .line 94
    :try_start_1
    invoke-direct {v11, v0, v5}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileUriByProvider(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 98
    move-object/from16 v12, p2

    .line 99
    .line 100
    :try_start_2
    invoke-virtual {v12, v0}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->setFileUri(Landroid/net/Uri;)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    .line 104
    .line 105
    new-instance v1, Lcom/cloud/tmc/integration/utils/share/a;

    .line 106
    .line 107
    invoke-direct {v1, v6}, Lcom/cloud/tmc/integration/utils/share/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    goto :goto_3

    .line 116
    :catchall_2
    move-exception v0

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move-object/from16 v11, p0

    .line 119
    .line 120
    move-object/from16 v12, p2

    .line 121
    .line 122
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    new-instance v16, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    move-object/from16 v1, v16

    .line 134
    .line 135
    move-object/from16 v2, p2

    .line 136
    .line 137
    move-object/from16 v3, p0

    .line 138
    .line 139
    move-object/from16 v4, p1

    .line 140
    .line 141
    move-object/from16 v6, p4

    .line 142
    .line 143
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 144
    .line 145
    .line 146
    const/16 v17, 0x3

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/4 v14, 0x0

    .line 151
    const/4 v15, 0x0

    .line 152
    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    move-object/from16 v11, p0

    .line 157
    .line 158
    move-object/from16 v12, p2

    .line 159
    .line 160
    const-string v0, "handleShareFile: file is not exist"

    .line 161
    .line 162
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :goto_3
    const-string v1, "handleShareFile: exception"

    .line 167
    .line 168
    invoke-static {v9, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    if-eqz v8, :cond_5

    .line 172
    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getChannel()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-interface {v8, v0, v10}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    .line 178
    .line 179
    .line 180
    :cond_5
    return-void

    .line 181
    :cond_6
    move-object/from16 v11, p0

    .line 182
    .line 183
    sget-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    .line 184
    .line 185
    new-instance v1, Lcom/cloud/tmc/integration/utils/share/b;

    .line 186
    .line 187
    invoke-direct {v1, v6}, Lcom/cloud/tmc/integration/utils/share/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method static synthetic handleShareFile$default(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final handleShareFile$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final handleShareFile$lambda$2(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final isSDCardEnableByEnvironment()Z
    .locals 2

    .line 1
    const-string v0, "mounted"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private final queryFileUriByCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .line 1
    const-string v0, "external"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getContentUri(\"external\")"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    filled-new-array {p2, p3}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v4, "_display_name=? AND _data=?"

    .line 23
    .line 24
    move-object v2, v0

    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    const-string p2, "_id"

    .line 38
    .line 39
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide p2

    .line 47
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string p3, "withAppendedId(contentUri, id)"

    .line 52
    .line 53
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p3, "_display_name"

    .line 57
    .line 58
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    const-string v0, "_data"

    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "queryFileUriByCursor: uri: "

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, " displayName: "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, " path: "

    .line 98
    .line 99
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    const-string v0, "ShareStrategy"

    .line 110
    .line 111
    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 115
    .line 116
    .line 117
    return-object p2

    .line 118
    :cond_0
    if-eqz p1, :cond_1

    .line 119
    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 121
    .line 122
    .line 123
    :cond_1
    const/4 p1, 0x0

    .line 124
    return-object p1
.end method


# virtual methods
.method public doShare(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shareParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "doShare: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "ShareStrategy"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareChannels(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
