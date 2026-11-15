.class public final Lcom/transsion/mediationads/manager/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/manager/d$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/mediationads/manager/d$a;

.field public static volatile g:Lcom/transsion/mediationads/manager/d;


# instance fields
.field public volatile a:Z

.field public volatile b:Lcom/transsion/mediationads/beans/TTStrategy;

.field public volatile c:I

.field public volatile d:J

.field public final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/manager/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/manager/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/manager/d;->f:Lcom/transsion/mediationads/manager/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/mediationads/manager/d;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mediationads/manager/d;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/mediationads/manager/d;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/manager/d;->g:Lcom/transsion/mediationads/manager/d;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/mediationads/manager/d;)V
    .locals 0

    sput-object p0, Lcom/transsion/mediationads/manager/d;->g:Lcom/transsion/mediationads/manager/d;

    return-void
.end method


# virtual methods
.method public final c(Lcom/transsion/mediationads/beans/TTStrategy;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getStartPosition()I

    move-result p0

    if-gtz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkStrategyParameter "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mediation_ad_TtStrategyManagerCore"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/transsion/mediationads/beans/TTStrategy;->setStartPosition(I)V

    :cond_0
    return-void
.end method

.method public final d()J
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v0, v4

    sub-long/2addr v0, v2

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final e()I
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/mediationads/manager/d;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/transsion/mediationads/manager/d;->d:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/mediationads/manager/d;->m(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget p0, p0, Lcom/transsion/mediationads/manager/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return p0

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public final f()Lcom/transsion/mediationads/beans/TTStrategy;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/mediationads/manager/d;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mediationads/manager/d;->b:Lcom/transsion/mediationads/beans/TTStrategy;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final g()I
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/mediationads/manager/d;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/transsion/mediationads/manager/d;->d:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/mediationads/manager/d;->m(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget v3, p0, Lcom/transsion/mediationads/manager/d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/transsion/mediationads/manager/d;->c:I

    iput-wide v0, p0, Lcom/transsion/mediationads/manager/d;->d:J

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->o()V

    const-string v0, "mediation_ad_TtStrategyManagerCore"

    iget v1, p0, Lcom/transsion/mediationads/manager/d;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incrementDailyAdShowCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/transsion/mediationads/manager/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return p0

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/mediationads/manager/d;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/transsion/mediationads/manager/d;->d:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/mediationads/manager/d;->m(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediationads/manager/d;->a:Z

    return p0
.end method

.method public final k(I)Z
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/c;->a:Lcom/transsion/mediationads/manager/c$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/c$a;->a()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->l(I)Z

    move-result p0

    return p0
.end method

.method public final l(Lcom/transsion/mediationads/beans/TTStrategy;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getMaxAdvertisingCount()I

    move-result v0

    if-nez v0, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getVideoIntervalsMin()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getVideoIntervalsMax()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getVideoIntervalsMin()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TTStrategy;->getVideoIntervalsMax()I

    move-result p1

    if-le v0, p1, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x1

    :cond_4
    :goto_0
    return p0
.end method

.method public final m(J)V
    .locals 6

    const-string v0, "visha_tt_daily_ad_count_date"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v3}, Lfec;->c(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, p1

    const-string v5, "visha_tt_daily_ad_count_value"

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {v5, v1}, Lfec;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/mediationads/manager/d;->c:I

    iput-wide v2, p0, Lcom/transsion/mediationads/manager/d;->d:J

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/transsion/mediationads/manager/d;->c:I

    iput-wide p1, p0, Lcom/transsion/mediationads/manager/d;->d:J

    invoke-static {v0, p1, p2}, Lfec;->e(Ljava/lang/String;J)Z

    invoke-static {v5, v1}, Lfec;->d(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromPrefs failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediation_ad_TtStrategyManagerCore"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/transsion/mediationads/manager/d;->c:I

    iput-wide p1, p0, Lcom/transsion/mediationads/manager/d;->d:J

    :goto_1
    return-void
.end method

.method public final n(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V
    .locals 4

    const-string v0, "mediation_ad_TtStrategyManagerCore"

    const-string v1, "adDisplayResponse"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/AdDisplayResponse;->getDisplayStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/mediationads/manager/d;->a:Z

    iget-boolean v1, p0, Lcom/transsion/mediationads/manager/d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/AdDisplayResponse;->getTtStrategyList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/mediationads/beans/TTStrategy;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    move-object p1, v2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/d;->c(Lcom/transsion/mediationads/beans/TTStrategy;)V

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/d;->l(Lcom/transsion/mediationads/beans/TTStrategy;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, p1

    :cond_2
    iput-object v2, p0, Lcom/transsion/mediationads/manager/d;->b:Lcom/transsion/mediationads/beans/TTStrategy;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/transsion/mediationads/manager/d;->b:Lcom/transsion/mediationads/beans/TTStrategy;

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->h()V

    iget-object p1, p0, Lcom/transsion/mediationads/manager/d;->b:Lcom/transsion/mediationads/beans/TTStrategy;

    iget-boolean v1, p0, Lcom/transsion/mediationads/manager/d;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TT ad strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", enabled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse TT ad strategy: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public final o()V
    .locals 3

    :try_start_0
    const-string v0, "visha_tt_daily_ad_count_date"

    iget-wide v1, p0, Lcom/transsion/mediationads/manager/d;->d:J

    invoke-static {v0, v1, v2}, Lfec;->e(Ljava/lang/String;J)Z

    const-string v0, "visha_tt_daily_ad_count_value"

    iget p0, p0, Lcom/transsion/mediationads/manager/d;->c:I

    invoke-static {v0, p0}, Lfec;->d(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mediation_ad_TtStrategyManagerCore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final p()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/mediationads/manager/d;->b:Lcom/transsion/mediationads/beans/TTStrategy;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/mediationads/beans/TTStrategy;->getMaxAdvertisingCount()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    return v3

    :cond_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d;->e()I

    move-result p0

    if-lt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1
.end method
