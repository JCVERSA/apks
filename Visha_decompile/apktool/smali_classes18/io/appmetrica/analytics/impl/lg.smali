.class public final Lio/appmetrica/analytics/impl/lg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

.field public final c:Lio/appmetrica/analytics/impl/Ya;

.field public final d:Lio/appmetrica/analytics/impl/Jc;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 12
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    .line 13
    invoke-static {}, Lio/appmetrica/analytics/impl/q1;->a()Lio/appmetrica/analytics/impl/Fj;

    move-result-object v1

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/lg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/impl/Ya;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/impl/Ya;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/lg;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/lg;->b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/lg;->c:Lio/appmetrica/analytics/impl/Ya;

    .line 5
    new-instance p1, Lio/appmetrica/analytics/impl/Jc;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/Jc;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object p2, Lio/appmetrica/analytics/impl/bg;->d:Lio/appmetrica/analytics/impl/bg;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    sget-object p2, Lio/appmetrica/analytics/impl/bg;->c:Lio/appmetrica/analytics/impl/bg;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lio/appmetrica/analytics/impl/lg;->d:Lio/appmetrica/analytics/impl/Jc;

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/lg;->e:J

    .line 10
    const-string p1, "com.android.vending"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/lg;->f:Ljava/lang/String;

    .line 11
    const-string p1, "com.huawei.appmarket"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/lg;->g:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/lg;Lio/appmetrica/analytics/impl/cg;Lio/appmetrica/analytics/impl/cg;)I
    .locals 4

    .line 39
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/cg;->c:J

    iget-wide v2, p2, Lio/appmetrica/analytics/impl/cg;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ls86;->a(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lg;->d:Lio/appmetrica/analytics/impl/Jc;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/cg;->d:Lio/appmetrica/analytics/impl/bg;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/lg;->d:Lio/appmetrica/analytics/impl/Jc;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/cg;->d:Lio/appmetrica/analytics/impl/bg;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sub-int v0, p1, p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/cg;
    .locals 12

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/cg;

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lg;->b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/lg;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/impl/cg;

    .line 7
    iget-wide v6, v5, Lio/appmetrica/analytics/impl/cg;->c:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/impl/cg;

    .line 9
    iget-wide v7, v6, Lio/appmetrica/analytics/impl/cg;->c:J

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 10
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Comparable;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    invoke-static {v7, v8}, Lkotlin/comparisons/a;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v7

    if-lez v7, :cond_2

    move-object v5, v6

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/cg;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 12
    iget-wide v5, p0, Lio/appmetrica/analytics/impl/lg;->e:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    goto :goto_1

    .line 13
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_9

    .line 14
    new-instance v2, Lomd;

    invoke-direct {v2, p0}, Lomd;-><init>(Lio/appmetrica/analytics/impl/lg;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/cg;

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/impl/cg;

    invoke-interface {v2, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_6

    move-object v4, v5

    goto :goto_2

    :cond_7
    move-object v2, v4

    goto :goto_3

    .line 15
    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 16
    :cond_9
    :goto_3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/lg;->c:Lio/appmetrica/analytics/impl/Ya;

    .line 17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "source"

    const-string v7, "click_timestamp_seconds"

    const-string v8, "install_timestamp_seconds"

    const-string v9, "referrer"

    if-eqz v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 20
    check-cast v5, Lio/appmetrica/analytics/impl/cg;

    .line 21
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 22
    iget-object v11, v5, Lio/appmetrica/analytics/impl/cg;->a:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 23
    iget-wide v10, v5, Lio/appmetrica/analytics/impl/cg;->c:J

    invoke-virtual {v9, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    .line 24
    iget-wide v9, v5, Lio/appmetrica/analytics/impl/cg;->b:J

    invoke-virtual {v8, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v7

    .line 25
    iget-object v5, v5, Lio/appmetrica/analytics/impl/cg;->d:Lio/appmetrica/analytics/impl/bg;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/bg;->a:Ljava/lang/String;

    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 26
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_a
    invoke-static {v4}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object p1, v1

    goto :goto_5

    .line 28
    :cond_b
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 29
    :goto_5
    const-string v4, "candidates"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 31
    iget-object v4, v2, Lio/appmetrica/analytics/impl/cg;->a:Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    iget-wide v4, v2, Lio/appmetrica/analytics/impl/cg;->c:J

    invoke-virtual {v3, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 33
    iget-wide v4, v2, Lio/appmetrica/analytics/impl/cg;->b:J

    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    iget-object v4, v2, Lio/appmetrica/analytics/impl/cg;->d:Lio/appmetrica/analytics/impl/bg;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/bg;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 35
    const-string v4, "chosen"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_c

    .line 36
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_c
    const-string v0, "install_time"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    const-string v0, "several_filled_referrers"

    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
