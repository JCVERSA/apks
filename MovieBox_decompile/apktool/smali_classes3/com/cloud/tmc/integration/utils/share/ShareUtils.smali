.class public final Lcom/cloud/tmc/integration/utils/share/ShareUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J)\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u000f\"\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002JR\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u001a\u001a\u00020\r2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J0\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u001c2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareUtils;",
        "",
        "()V",
        "TAG",
        "",
        "createShareIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "shareParams",
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "getAppName",
        "isGranted",
        "",
        "permission",
        "",
        "(Landroid/content/Context;[Ljava/lang/String;)Z",
        "share",
        "",
        "listener",
        "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
        "shareFile",
        "Ljava/io/File;",
        "shareType",
        "text",
        "targetPackageName",
        "isFileProvider",
        "shareText",
        "",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

.field private static final TAG:Ljava/lang/String; = "ShareUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final createShareIntent(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shareParams"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "android.intent.action.SEND"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getShareType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getTitle()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v2, "android.intent.extra.TITLE"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getContent()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_1

    .line 45
    .line 46
    const-string v1, "android.intent.extra.TEXT"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getContent()Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getSubLine()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const-string v2, "android.intent.extra.SUBJECT"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getFileUri()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    const-string v2, "android.intent.extra.STREAM"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getThumbnail()Landroid/content/ClipData;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getTargetPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    :cond_5
    sget-object p1, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string p1, "createChooser(Intent(Int\u2026  }, getAppName(context))"

    .line 110
    .line 111
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object p0
.end method

.method private final getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move-object v0, p1

    .line 40
    goto :goto_2

    .line 41
    :goto_1
    const-string v1, "ShareUtils"

    .line 42
    .line 43
    const-string v2, "getAppName failed!"

    .line 44
    .line 45
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    return-object v0
.end method

.method public static final varargs isGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "permission"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    aget-object v5, p1, v3

    .line 23
    .line 24
    invoke-static {p0, v5}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v4, v2

    .line 32
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_3

    .line 47
    .line 48
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    return v4

    .line 58
    :cond_3
    :goto_2
    return v2
.end method

.method private final share(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getStrategy()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->setStrategy(Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getStrategy()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;->doShare(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public static final shareFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "shareFile"

    .line 9
    .line 10
    move-object/from16 v5, p1

    .line 11
    .line 12
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    .line 16
    .line 17
    new-instance v15, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object/from16 v3, p3

    .line 26
    .line 27
    :goto_0
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v4, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object/from16 v4, p2

    .line 36
    .line 37
    :goto_1
    const/16 v14, 0x578

    .line 38
    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    move-object v2, v15

    .line 48
    move-object/from16 v5, p1

    .line 49
    .line 50
    move-object/from16 v10, p4

    .line 51
    .line 52
    move/from16 v12, p5

    .line 53
    .line 54
    move-object/from16 v17, v15

    .line 55
    .line 56
    move-object/from16 v15, v16

    .line 57
    .line 58
    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/integration/utils/share/ShareParams;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v2, p6

    .line 62
    .line 63
    move-object/from16 v3, v17

    .line 64
    .line 65
    invoke-direct {v1, v0, v3, v2}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->share(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static synthetic shareFile$default(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p2

    .line 9
    :goto_0
    and-int/lit8 v2, p7, 0x8

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v2, p3

    .line 16
    :goto_1
    and-int/lit8 v3, p7, 0x10

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    move-object v3, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v3, p4

    .line 23
    :goto_2
    and-int/lit8 v4, p7, 0x20

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move v4, p5

    .line 30
    :goto_3
    and-int/lit8 v5, p7, 0x40

    .line 31
    .line 32
    if-eqz v5, :cond_4

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_4
    move-object v1, p6

    .line 36
    :goto_4
    move-object p2, p0

    .line 37
    move-object p3, p1

    .line 38
    move-object p4, v0

    .line 39
    move-object p5, v2

    .line 40
    move-object p6, v3

    .line 41
    move p7, v4

    .line 42
    move-object p8, v1

    .line 43
    invoke-static/range {p2 .. p8}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final shareText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "text"

    .line 9
    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    .line 16
    .line 17
    new-instance v15, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 18
    .line 19
    const/16 v14, 0x77c

    .line 20
    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    const-string v4, "text/plain"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    move-object v2, v15

    .line 34
    move-object/from16 v10, p2

    .line 35
    .line 36
    move-object/from16 v17, v15

    .line 37
    .line 38
    move-object/from16 v15, v16

    .line 39
    .line 40
    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/integration/utils/share/ShareParams;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v2, p3

    .line 44
    .line 45
    move-object/from16 v3, v17

    .line 46
    .line 47
    invoke-direct {v1, v0, v3, v2}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->share(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic shareText$default(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
