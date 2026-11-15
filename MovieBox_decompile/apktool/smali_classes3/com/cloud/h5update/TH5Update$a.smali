.class public final Lcom/cloud/h5update/TH5Update$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/h5update/TH5Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/h5update/TH5Update$a;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/cloud/h5update/TH5Update$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/h5update/TH5Update$a;->l(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/cloud/h5update/bean/PreloadResource;

    .line 39
    .line 40
    sget-object v2, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    .line 58
    .line 59
    sget-object v1, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    const-string v3, "last_update_version"

    .line 81
    .line 82
    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/h5update/utils/j;->g(Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final b(Lcom/cloud/h5update/bean/UpdateEntity;)V
    .locals 6

    .line 1
    const-string v0, "updateEntity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    const-string v3, "last_update_version"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/h5update/utils/j;->c(Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    cmp-long v1, v1, v4

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/cloud/h5update/utils/j;->i(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    check-cast p1, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/cloud/h5update/bean/PreloadResource;

    .line 57
    .line 58
    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget-object v1, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "last_update_url_version"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lcom/cloud/h5update/utils/j;->i(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update;->l()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final d()Lcom/cloud/h5update/TH5Update;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->a()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/h5update/TH5Update;

    .line 10
    .line 11
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final j()Lv6/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/TH5Update;->g()Lv6/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k(Landroid/content/Context;)Lcom/cloud/h5update/b$a;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/h5update/b$a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/cloud/h5update/b$a;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "appName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "versionName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/cloud/h5update/TH5Update$a;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/cloud/h5update/TH5Update$a;->e()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, p2, p3}, Lcom/tmc/network/HttpRequestor;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->i(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->j(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final q(Lv6/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/h5update/TH5Update;->k(Lv6/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final r(Lv6/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/h5update/TH5Update$a;->q(Lv6/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
