.class public final Lcom/cloud/hisavana/net/NetGroup;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R(\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0013\u0010\u0019\u0012\u0004\u0008\u001d\u0010\u0003\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u001cR(\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008 \u0010!\u0012\u0004\u0008%\u0010\u0003\u001a\u0004\u0008 \u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cloud/hisavana/net/NetGroup;",
        "",
        "<init>",
        "()V",
        "",
        "e",
        "()I",
        "Lokhttp3/OkHttpClient$Builder;",
        "builder",
        "Lmh/g;",
        "factory",
        "testChannel",
        "f",
        "(Lokhttp3/OkHttpClient$Builder;Lmh/g;I)Lokhttp3/OkHttpClient$Builder;",
        "Landroid/content/Context;",
        "context",
        "",
        "group",
        "Lorg/chromium/net/CronetEngine;",
        "b",
        "(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;",
        "url",
        "",
        "a",
        "(Ljava/lang/String;)Z",
        "I",
        "d",
        "setGroupBucketId",
        "(I)V",
        "getGroupBucketId$annotations",
        "groupBucketId",
        "",
        "c",
        "J",
        "()J",
        "setAbtestVarId",
        "(J)V",
        "getAbtestVarId$annotations",
        "abtestVarId",
        "adnetwork_release"
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
.field public static final a:Lcom/cloud/hisavana/net/NetGroup;

.field private static b:I

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/net/NetGroup;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/net/NetGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/net/NetGroup;->a:Lcom/cloud/hisavana/net/NetGroup;

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

.method public static final a(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-boolean v1, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string v1, "api.hisavana.com"

    .line 17
    .line 18
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, "fra-api.hisavana.com"

    .line 25
    .line 26
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string v1, "ind-api.hisavana.com"

    .line 33
    .line 34
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-string v1, "fast-api.hisavana.com"

    .line 41
    .line 42
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    :cond_1
    move v0, v2

    .line 49
    :cond_2
    :goto_0
    return v0
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "api.hisavana.com"

    .line 18
    .line 19
    const/16 v1, 0x1bb

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "creative.eagllwin.com"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "hisavana-adx.transacme.com"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v1}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;

    .line 46
    .line 47
    invoke-direct {v1, p2, v0}, Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lorg/chromium/net/CronetEngine;->addRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_0

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    :cond_0
    check-cast p1, Lorg/chromium/net/CronetEngine;

    .line 77
    .line 78
    return-object p1
.end method

.method public static final c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/hisavana/net/NetGroup;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final d()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/hisavana/net/NetGroup;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static final e()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "bucketV2"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ll7/a;->f(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/cloud/hisavana/net/NetGroup;->b:I

    .line 12
    .line 13
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "bucketVarId"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ll7/a;->h(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lcom/cloud/hisavana/net/NetGroup;->c:J

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "NetGroup Net Init\uff1agroupBucketId = "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget v1, Lcom/cloud/hisavana/net/NetGroup;->b:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget v0, Lcom/cloud/hisavana/net/NetGroup;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    return v0

    .line 50
    :catchall_0
    const/4 v0, 0x0

    .line 51
    return v0
.end method

.method public static final f(Lokhttp3/OkHttpClient$Builder;Lmh/g;I)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "2013"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lmh/g;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "getContext(...)"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "api.hisavana.com"

    .line 12
    .line 13
    packed-switch p2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :pswitch_0
    sget-object p2, Lcom/cloud/hisavana/net/NetGroup;->a:Lcom/cloud/hisavana/net/NetGroup;

    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "2016"

    .line 28
    .line 29
    invoke-direct {p2, v3, v0}, Lcom/cloud/hisavana/net/NetGroup;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lmh/g;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    if-eqz p0, :cond_3

    .line 42
    .line 43
    new-instance v0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    .line 44
    .line 45
    invoke-direct {v0, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;-><init>(Lorg/chromium/net/CronetEngine;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lkotlin/Pair;

    .line 49
    .line 50
    invoke-direct {p2, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->i(Ljava/util/Map;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    new-instance v0, Lcom/cloud/hisavana/net/NetGroup$getWrapBuilder$1;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/cloud/hisavana/net/NetGroup$getWrapBuilder$1;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->h(Ly6/b;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->b(Lmh/g;)Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->a()Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    move-object p0, v1

    .line 84
    goto :goto_0

    .line 85
    :pswitch_1
    sget-object p2, Lcom/cloud/hisavana/net/NetGroup;->a:Lcom/cloud/hisavana/net/NetGroup;

    .line 86
    .line 87
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "2015"

    .line 95
    .line 96
    invoke-direct {p2, v2, v0}, Lcom/cloud/hisavana/net/NetGroup;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-nez p2, :cond_4

    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_4
    if-eqz p1, :cond_5

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lmh/g;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    if-eqz p1, :cond_6

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Lmh/g;->b(Z)V

    .line 112
    .line 113
    .line 114
    :cond_6
    if-eqz p0, :cond_3

    .line 115
    .line 116
    invoke-static {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->j(Lorg/chromium/net/CronetEngine;)Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;->a()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lokhttp3/Interceptor;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    goto :goto_0

    .line 131
    :pswitch_2
    if-eqz p1, :cond_7

    .line 132
    .line 133
    const-string p2, "2014"

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lmh/g;->a(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    if-eqz p0, :cond_3

    .line 139
    .line 140
    new-instance p1, Lcom/cloud/hisavana/protocol/intercept/a;

    .line 141
    .line 142
    new-instance p2, Lkotlin/Pair;

    .line 143
    .line 144
    invoke-direct {p2, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-direct {p1, p2}, Lcom/cloud/hisavana/protocol/intercept/a;-><init>(Ljava/util/Map;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    :goto_0
    return-object p0

    .line 159
    :pswitch_data_0
    .packed-switch 0x7de
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
