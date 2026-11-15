.class public abstract Lio/appmetrica/analytics/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/m5;

.field public final b:Lio/appmetrica/analytics/impl/uk;

.field public final c:Lio/appmetrica/analytics/impl/yk;

.field public final d:Lio/appmetrica/analytics/impl/tk;

.field public final e:Lio/appmetrica/analytics/impl/Ya;

.field public final f:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/tk;Lio/appmetrica/analytics/impl/Ya;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/uk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/yk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/tk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/Ya;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/m5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/g;->b:Lio/appmetrica/analytics/impl/uk;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/g;->d:Lio/appmetrica/analytics/impl/tk;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/g;->e:Lio/appmetrica/analytics/impl/Ya;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/g;->f:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ik;)Lio/appmetrica/analytics/impl/hk;
    .locals 10
    .param p1    # Lio/appmetrica/analytics/impl/ik;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/yk;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->e:Lio/appmetrica/analytics/impl/Ya;

    const-string v1, "create session with non-empty storage"

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/hk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 5
    iget-object v3, p0, Lio/appmetrica/analytics/impl/g;->b:Lio/appmetrica/analytics/impl/uk;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/uk;->a()J

    move-result-wide v5

    .line 6
    iget-object v3, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 8
    const-string v7, "SESSION_ID"

    invoke-virtual {v3, v7, v4}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-wide v7, p1, Lio/appmetrica/analytics/impl/ik;->a:J

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "SESSION_SLEEP_START"

    invoke-virtual {v3, v7, v4}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-wide v7, p1, Lio/appmetrica/analytics/impl/ik;->a:J

    .line 12
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "SESSION_INIT_TIME"

    invoke-virtual {v3, v7, v4}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "SESSION_COUNTER_ID"

    invoke-virtual {v3, v7, v4}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {v3, v7, v4}, Lio/appmetrica/analytics/impl/yk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/yk;->b()V

    .line 16
    iget-object v3, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/m5;

    .line 17
    iget-object v4, v3, Lio/appmetrica/analytics/impl/m5;->e:Lio/appmetrica/analytics/impl/S6;

    .line 18
    iget-object v3, p0, Lio/appmetrica/analytics/impl/g;->d:Lio/appmetrica/analytics/impl/tk;

    .line 19
    iget-object v7, v3, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/zk;

    .line 20
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p1, Lio/appmetrica/analytics/impl/ik;->b:J

    .line 21
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    .line 22
    invoke-virtual/range {v4 .. v9}, Lio/appmetrica/analytics/impl/S6;->a(JLio/appmetrica/analytics/impl/zk;J)V

    .line 23
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g;->a()Lio/appmetrica/analytics/impl/kk;

    move-result-object p0

    .line 24
    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct {v0, v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/hk;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/kk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0
.end method

.method public final bridge a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/hk;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/ik;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/g;->a(Lio/appmetrica/analytics/impl/ik;)Lio/appmetrica/analytics/impl/hk;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/kk;
    .locals 3

    .line 25
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->d:Lio/appmetrica/analytics/impl/tk;

    .line 26
    new-instance v1, Lio/appmetrica/analytics/impl/jk;

    .line 27
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/jk;-><init>(Lio/appmetrica/analytics/impl/tk;)V

    .line 28
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 29
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/yk;->i()Ljava/lang/Boolean;

    move-result-object v0

    .line 30
    iput-object v0, v1, Lio/appmetrica/analytics/impl/jk;->g:Ljava/lang/Boolean;

    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 32
    iget-object v0, v0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 33
    const-string v2, "SESSION_COUNTER_ID"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 34
    iput-object v0, v1, Lio/appmetrica/analytics/impl/jk;->f:Ljava/lang/Long;

    .line 35
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 36
    iget-object v0, v0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 37
    const-string v2, "SESSION_INIT_TIME"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 38
    iput-object v0, v1, Lio/appmetrica/analytics/impl/jk;->d:Ljava/lang/Long;

    .line 39
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 40
    iget-object v0, v0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 41
    const-string v2, "SESSION_ID"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 42
    iput-object v0, v1, Lio/appmetrica/analytics/impl/jk;->c:Ljava/lang/Long;

    .line 43
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 44
    iget-object v0, v0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 45
    const-string v2, "SESSION_SLEEP_START"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 46
    iput-object v0, v1, Lio/appmetrica/analytics/impl/jk;->h:Ljava/lang/Long;

    .line 47
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    .line 48
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yk;->c:Lio/appmetrica/analytics/impl/lb;

    .line 49
    const-string v0, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/lb;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 50
    iput-object p0, v1, Lio/appmetrica/analytics/impl/jk;->a:Ljava/lang/Long;

    .line 51
    new-instance p0, Lio/appmetrica/analytics/impl/kk;

    .line 52
    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/kk;-><init>(Lio/appmetrica/analytics/impl/jk;)V

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/hk;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/yk;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/hk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/yk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g;->a()Lio/appmetrica/analytics/impl/kk;

    move-result-object v3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g;->f:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/impl/hk;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/kk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
