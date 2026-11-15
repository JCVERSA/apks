.class public final Lyzh;
.super Lwzh;
.source "SourceFile"


# static fields
.field public static i:Lyzh;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "paidv2_creation_time"

    const-string v1, "PaidV2LifecycleImpl"

    const-string v2, "paidv2_id"

    invoke-direct {p0, p1, v2, v0, v1}, Lwzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final j(Landroid/content/Context;)Lyzh;
    .locals 2

    const-class v0, Lyzh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyzh;->i:Lyzh;

    if-nez v1, :cond_0

    new-instance v1, Lyzh;

    invoke-direct {v1, p0}, Lyzh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyzh;->i:Lyzh;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lyzh;->i:Lyzh;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final i(JZ)Ltzh;
    .locals 7

    const-class v0, Lyzh;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwzh;->g:Luzh;

    invoke-virtual {v1}, Luzh;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ltzh;

    invoke-direct {p0}, Ltzh;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lwzh;->b(Ljava/lang/String;Ljava/lang/String;JZ)Ltzh;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k()V
    .locals 3

    const-class v0, Lyzh;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lwzh;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lwzh;->f(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
