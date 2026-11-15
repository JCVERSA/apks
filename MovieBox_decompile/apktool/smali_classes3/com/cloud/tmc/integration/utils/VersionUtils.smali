.class public final Lcom/cloud/tmc/integration/utils/VersionUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/VersionUtils;",
        "",
        "()V",
        "FRAMEWORK_VERSION_OFFLIEN_SUFFIX",
        "",
        "LAST_SUPPORT_H5_PAGE_STACK_FRAMEWORK_VERSION",
        "compareVersion",
        "",
        "newVersion",
        "oldVersion",
        "isSupportH5PageStack",
        "isSupportWarmupFramework",
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


# static fields
.field public static final FRAMEWORK_VERSION_OFFLIEN_SUFFIX:Ljava/lang/String; = "-offline"

.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

.field public static final LAST_SUPPORT_H5_PAGE_STACK_FRAMEWORK_VERSION:Ljava/lang/String; = "5.1.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/VersionUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/VersionUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/VersionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

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


# virtual methods
.method public final compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 2
    .line 3
    const-string v1, "newVersion"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "oldVersion"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 27
    .line 28
    invoke-interface {v2, p1}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;

    .line 37
    .line 38
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/proxy/network/IConfigStrategyProxy;->getMiniAppVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    move v4, v1

    .line 51
    move v5, v4

    .line 52
    :cond_1
    if-lt v4, v0, :cond_2

    .line 53
    .line 54
    if-ge v5, v2, :cond_6

    .line 55
    .line 56
    :cond_2
    move v6, v1

    .line 57
    :goto_0
    const/16 v7, 0x2e

    .line 58
    .line 59
    if-ge v4, v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eq v8, v7, :cond_3

    .line 66
    .line 67
    mul-int/lit8 v6, v6, 0xa

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    add-int/2addr v6, v7

    .line 74
    add-int/lit8 v6, v6, -0x30

    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    move v8, v1

    .line 84
    :goto_1
    if-ge v5, v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eq v9, v7, :cond_4

    .line 91
    .line 92
    mul-int/lit8 v8, v8, 0xa

    .line 93
    .line 94
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    add-int/2addr v8, v9

    .line 99
    add-int/lit8 v8, v8, -0x30

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    if-eq v6, v8, :cond_1

    .line 107
    .line 108
    if-le v6, v8, :cond_5

    .line 109
    .line 110
    move v1, v3

    .line 111
    :cond_5
    return v1

    .line 112
    :goto_2
    const-string p2, "compareVersion"

    .line 113
    .line 114
    const-string v0, "compareVersion error"

    .line 115
    .line 116
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    return v1
.end method

.method public final isSupportH5PageStack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "oldVersion"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/integration/utils/VersionUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final isSupportWarmupFramework(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "newVersion"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "oldVersion"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "-offline"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v1, "-offline"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v0, p2

    .line 31
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/VersionUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method
