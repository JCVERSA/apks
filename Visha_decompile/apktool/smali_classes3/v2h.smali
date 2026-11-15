.class public final Lv2h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lv2h;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lq8g;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lv2h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lv2h;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lv2h;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lv2h;->d:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeb;-><init>(Lv2h;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lv2h;
    .locals 2

    const-class v0, Lv2h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv2h;->f:Lv2h;

    if-nez v1, :cond_0

    new-instance v1, Lv2h;

    invoke-direct {v1, p0}, Lv2h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lv2h;->f:Lv2h;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lv2h;->f:Lv2h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic c(Lv2h;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lv2h;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic d(Lv2h;Landroid/content/Context;)V
    .locals 9

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x9

    const/4 v7, 0x6

    const/4 v8, 0x4

    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_5

    if-eq v4, v8, :cond_6

    if-eq v4, v2, :cond_6

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :cond_4
    :pswitch_0
    move v1, v2

    goto :goto_0

    :cond_5
    :pswitch_1
    move v1, v5

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_2
    move v1, v7

    goto :goto_0

    :pswitch_3
    sget v0, Lkfh;->a:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_7

    move v1, v6

    goto :goto_0

    :pswitch_4
    move v1, v8

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    :catch_0
    :cond_7
    :goto_0
    sget v0, Lkfh;->a:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_9

    if-ne v1, v2, :cond_9

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_8

    new-instance v0, Lexg;

    invoke-direct {v0, p0}, Lexg;-><init>(Lv2h;)V

    iget-object v1, p0, Lv2h;->a:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, v0}, Lzz6;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-static {p1, v0}, La07;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {p0, v2}, Lv2h;->h(I)V

    return-void

    :cond_9
    invoke-virtual {p0, v1}, Lv2h;->h(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static bridge synthetic e(Lv2h;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lv2h;->h(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lv2h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lv2h;->d:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lorj;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lv2h;->g()V

    new-instance v0, Lxyg;

    invoke-direct {v0, p0, p1, p2}, Lxyg;-><init>(Lv2h;Lorj;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lv2h;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lv2h;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lv2h;->e:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lxyg;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 3

    iget-object p0, p0, Lv2h;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxyg;

    invoke-virtual {v1}, Lxyg;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(I)V
    .locals 2

    invoke-virtual {p0}, Lv2h;->g()V

    iget-object v0, p0, Lv2h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv2h;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lv2h;->d:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lv2h;->e:Z

    iput p1, p0, Lv2h;->d:I

    iget-object p0, p0, Lv2h;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxyg;

    invoke-virtual {p1}, Lxyg;->b()V

    goto :goto_0

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
