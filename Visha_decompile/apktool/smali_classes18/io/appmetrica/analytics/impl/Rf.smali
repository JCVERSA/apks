.class public final Lio/appmetrica/analytics/impl/Rf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ag;

.field public final b:Lio/appmetrica/analytics/impl/Ga;

.field public final c:Lio/appmetrica/analytics/impl/lg;

.field public final d:Lyi5;

.field public final e:Lyi5;

.field public final f:Lyi5;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ag;Lio/appmetrica/analytics/impl/kg;Lio/appmetrica/analytics/impl/Ga;Lio/appmetrica/analytics/impl/lg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rf;->a:Lio/appmetrica/analytics/impl/ag;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Rf;->b:Lio/appmetrica/analytics/impl/Ga;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Rf;->c:Lio/appmetrica/analytics/impl/lg;

    new-instance p1, Lio/appmetrica/analytics/impl/Of;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Of;-><init>(Lio/appmetrica/analytics/impl/Rf;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rf;->d:Lyi5;

    new-instance p1, Lio/appmetrica/analytics/impl/Mf;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Mf;-><init>(Lio/appmetrica/analytics/impl/Rf;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rf;->e:Lyi5;

    new-instance p1, Lio/appmetrica/analytics/impl/Qf;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Qf;-><init>(Lio/appmetrica/analytics/impl/Rf;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rf;->f:Lyi5;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rf;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Rf;)Lio/appmetrica/analytics/impl/Jf;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rf;->d:Lyi5;

    .line 2
    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Jf;

    return-object p0
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Rf;Lio/appmetrica/analytics/impl/cg;Lio/appmetrica/analytics/impl/Jf;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rf;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rf;->c:Lio/appmetrica/analytics/impl/lg;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/lg;->b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 7
    iget-object v2, v0, Lio/appmetrica/analytics/impl/lg;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p1, Lio/appmetrica/analytics/impl/cg;->d:Lio/appmetrica/analytics/impl/bg;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lg;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lg;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Rf;->a(Lio/appmetrica/analytics/impl/cg;)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Jf;->a()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/cg;)V
    .locals 1

    .line 13
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rf;->a:Lio/appmetrica/analytics/impl/ag;

    monitor-enter p0

    .line 14
    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ag;->b:Lio/appmetrica/analytics/impl/cg;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/ag;->c:Z

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ag;->d:Lio/appmetrica/analytics/impl/Tn;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Tn;->a(Lio/appmetrica/analytics/impl/cg;)V

    .line 17
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ag;->d:Lio/appmetrica/analytics/impl/Tn;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Tn;->d()V

    .line 18
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ag;->b:Lio/appmetrica/analytics/impl/cg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ag;->a(Lio/appmetrica/analytics/impl/cg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1
.end method
