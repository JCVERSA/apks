.class public Lcom/transsion/ga/AthenaAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ga/AthenaAnalytics$anehat;,
        Lcom/transsion/ga/AthenaAnalytics$aethna;,
        Lcom/transsion/ga/AthenaAnalytics$a;,
        Lcom/transsion/ga/AthenaAnalytics$c;,
        Lcom/transsion/ga/AthenaAnalytics$b;
    }
.end annotation


# static fields
.field public static f:Lcom/transsion/ga/AthenaAnalytics$b;

.field public static volatile g:I

.field public static volatile h:Lcom/transsion/ga/AthenaAnalytics;

.field public static i:J

.field public static volatile j:I

.field public static volatile k:J

.field public static l:Ljava/lang/String;

.field public static m:Landroid/content/Context;

.field public static n:Ljava/util/List;

.field public static o:Lcom/transsion/ga/athena;

.field public static p:I

.field public static q:Z

.field public static r:Z


# instance fields
.field public a:Lj5d;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public c:Lcom/transsion/athena/athena;

.field public d:Z

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrj;

    invoke-direct {v0}, Lrj;-><init>()V

    sput-object v0, Lcom/transsion/ga/AthenaAnalytics;->f:Lcom/transsion/ga/AthenaAnalytics$b;

    const/4 v0, 0x1

    sput v0, Lcom/transsion/ga/AthenaAnalytics;->g:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/ga/AthenaAnalytics;->i:J

    const/4 v2, -0x1

    sput v2, Lcom/transsion/ga/AthenaAnalytics;->j:I

    sput-wide v0, Lcom/transsion/ga/AthenaAnalytics;->k:J

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/ga/AthenaAnalytics;->l:Ljava/lang/String;

    sput-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static A()Z
    .locals 2

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static C(Z)V
    .locals 1

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/ehanat;->d(Z)V

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    if-nez v0, :cond_0

    const-string p0, "Init method not called."

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lj5d;->a()V

    :cond_1
    return-void
.end method

.method public static D()V
    .locals 2

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/c;->g()V

    :cond_1
    return-void
.end method

.method public static E()Z
    .locals 1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lsbd;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lsbd;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lsbd;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H()Lcom/transsion/ga/AthenaAnalytics$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static I()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static J(I)Lcom/transsion/ga/AthenaAnalytics;
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->K(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static K(J)Lcom/transsion/ga/AthenaAnalytics;
    .locals 8

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-class v0, Lcom/transsion/ga/AthenaAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    if-nez v2, :cond_1

    new-instance v2, Lcom/transsion/ga/AthenaAnalytics;

    invoke-direct {v2}, Lcom/transsion/ga/AthenaAnalytics;-><init>()V

    sput-object v2, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    sget v2, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v2}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->w(Lj5d;)V

    new-instance v4, Lcom/transsion/ga/AthenaAnalytics$aethna;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/transsion/ga/AthenaAnalytics$aethna;-><init>(Lj5d;Lcom/transsion/ga/AthenaAnalytics$athena;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Lj5d;->d(Ljava/lang/Runnable;J)V

    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->y(Lj5d;)V

    invoke-static {v3}, Lcom/transsion/ga/AthenaAnalytics;->m(Landroid/os/Handler;)V

    new-instance v4, Lcom/transsion/ga/AthenaAnalytics$anehat;

    invoke-direct {v4, v3, v5}, Lcom/transsion/ga/AthenaAnalytics$anehat;-><init>(Landroid/os/Handler;Lcom/transsion/ga/AthenaAnalytics$athena;)V

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->u(Lj5d;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    sget-object v3, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "AthenaAnalytics bindTrackService"

    invoke-static {v4}, Lc4d;->f(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/transsion/athena/aidl/AthenaTrackService;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ld4d;

    invoke-direct {v5, v2}, Ld4d;-><init>(Lcom/transsion/ga/AthenaAnalytics;)V

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc4d;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    invoke-static {p0, p1}, Lcom/transsion/athena/taaneh/a;->j(J)Z

    move-result v0

    if-eqz v0, :cond_4

    long-to-int p0, p0

    sget p1, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez p1, :cond_3

    invoke-static {p0}, Lcom/transsion/athena/data/athena;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x190

    iput v0, p1, Landroid/os/Message;->what:I

    iput p0, p1, Landroid/os/Message;->arg1:I

    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {p0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lj5d;->b(Landroid/os/Message;J)V

    goto :goto_3

    :cond_3
    sget p1, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-ne p1, v1, :cond_4

    invoke-static {p0}, Lcom/transsion/athena/data/athena;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multi process appid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " register successful"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V

    :cond_4
    :goto_3
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    return-object p0
.end method

.method public static L()Lcom/transsion/ga/AthenaAnalytics$b;
    .locals 1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->f:Lcom/transsion/ga/AthenaAnalytics$b;

    return-object v0
.end method

.method public static synthetic M()V
    .locals 1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-static {v0}, Lo3d;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static N()V
    .locals 5

    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->E()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Athena SDK isAthenaEnable = false"

    invoke-static {v0}, Lc4d;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/athena/data/athena;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x270f

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "app_launch"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/transsion/ga/AthenaAnalytics;->c0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static O(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static P(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 3

    if-eqz p0, :cond_4

    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_4

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_4

    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    :cond_0
    invoke-static {p3}, Lcom/transsion/athena/config/data/model/ehanat;->c(Z)V

    invoke-static {p1, p4}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    invoke-static {p2}, Lcom/transsion/athena/data/athena;->b(I)V

    int-to-long p3, p2

    invoke-static {p3, p4, p1}, Lcom/transsion/ga/AthenaAnalytics;->l(JZ)V

    :cond_1
    sget-object p3, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-static {p3}, Lzbd;->b(Landroid/content/Context;)V

    sget p3, Lcom/transsion/ga/AthenaAnalytics;->j:I

    const/4 p4, -0x1

    const/4 v1, 0x1

    if-ne p3, p4, :cond_3

    sget-object p3, Lcom/transsion/ga/AthenaAnalytics;->l:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    :try_start_1
    sget-object v2, Lc4d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lc4d;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p4, ""

    :goto_0
    :try_start_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, p4

    :goto_1
    invoke-static {p0}, Lcom/transsion/athena/taaneh/athena;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move p3, v1

    :goto_2
    xor-int/2addr p3, v1

    sput p3, Lcom/transsion/ga/AthenaAnalytics;->j:I

    sget p3, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez p3, :cond_3

    sget p3, Lcom/transsion/ga/AthenaAnalytics;->p:I

    if-nez p3, :cond_3

    sget-boolean p3, Lcom/transsion/athena/config/data/model/ehanat;->K:Z

    if-eqz p3, :cond_3

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    const/16 p4, 0x259

    invoke-virtual {p3, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    add-int/lit16 p3, p3, 0x12c

    sput p3, Lcom/transsion/ga/AthenaAnalytics;->p:I

    :cond_3
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    invoke-static {p2}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    sget p3, Lcom/transsion/ga/AthenaAnalytics;->p:I

    invoke-static {p0, p2, p3}, Lsbd;->c(Landroid/content/Context;II)V

    sget-object p0, Lcom/transsion/athena/taaneh/a;->a:Ljava/lang/String;

    :try_start_3
    sget-object p0, Lcom/tencent/mmkv/MMKV;->a:Ljava/util/EnumMap;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move p1, v1

    :catch_2
    sput-boolean p1, Lcom/transsion/ga/AthenaAnalytics;->r:Z

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The parameter is illegal."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->J:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static R()Z
    .locals 2

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static S()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->G:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static T()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->H:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static U()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/ga/AthenaAnalytics;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/transsion/ga/AthenaAnalytics;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static V()V
    .locals 9

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Athena SDK isAthenaEnable = false"

    invoke-static {v0}, Lc4d;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_0
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->S()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "iid"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    sget-object v3, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid2"

    invoke-virtual {v1, v4, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->T()Z

    move-result v1

    const-string v3, "isd2"

    const-string v4, "isd"

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/athena;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    sget-object v5, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/transsion/athena/taaneh/athena;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_2
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->Q()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/athena/taaneh/athena;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "aid"

    invoke-virtual {v0, v5, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "proc/rid"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v5, v2, [B

    :goto_0
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    invoke-static {v5}, Lcom/transsion/athena/config/data/model/anehat;->c([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_1

    :catch_0
    move-object v5, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc4d;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    throw v0

    :catch_2
    :goto_3
    if-eqz v5, :cond_6

    move-object v6, v5

    :cond_5
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc4d;->d(Ljava/lang/String;)V

    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v1, ""

    goto :goto_5

    :cond_7
    invoke-static {v1}, Lja3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string v5, "chip"

    invoke-virtual {v0, v5, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v1

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->q()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sn"

    invoke-virtual {v1, v6, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :try_start_4
    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    const-string v5, "telephony_subscription_service"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->T()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v6, v5}, Lcom/transsion/athena/taaneh/athena;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-ne v6, v2, :cond_8

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->T()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v6, v5}, Lcom/transsion/athena/taaneh/athena;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc4d;->d(Ljava/lang/String;)V

    :cond_a
    const/16 v1, 0x270f

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->c0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :goto_8
    return-void
.end method

.method public static W()V
    .locals 4

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x258

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v1}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lj5d;->b(Landroid/os/Message;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static X(SLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(SLjava/lang/String;)V

    return-void
.end method

.method public static Y(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_2

    const/16 v0, 0x270f

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "sdkVersion can not be null or empty"

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "appId %d is illegal"

    invoke-static {p1, p0}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static Z(Z)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/ehanat;->c(Z)V

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    if-nez v0, :cond_0

    const-string p0, "Init method not called."

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/ga/AthenaAnalytics$athena;

    invoke-direct {v1, p0}, Lcom/transsion/ga/AthenaAnalytics$athena;-><init>(Z)V

    invoke-virtual {v0, v1}, Lj5d;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->N()V

    return-void
.end method

.method public static a0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/ehanat;->f(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->p(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public static b0()V
    .locals 3

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->h:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/transsion/ga/AthenaAnalytics;->g:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->E()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v0

    invoke-virtual {v0}, Lj5d;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lj5d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->n(Lj5d;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->M()V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->V()V

    return-void
.end method

.method public static synthetic g()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/ga/AthenaAnalytics;Lcom/transsion/athena/athena;)Lcom/transsion/athena/athena;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/athena/athena;

    return-object p1
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/ga/AthenaAnalytics;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ga/AthenaAnalytics;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static l(JZ)V
    .locals 4

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    sput-wide p0, Lcom/transsion/ga/AthenaAnalytics;->k:J

    :cond_2
    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->o:Lcom/transsion/ga/athena;

    if-nez p0, :cond_3

    new-instance p0, Lcom/transsion/ga/athena;

    invoke-direct {p0}, Lcom/transsion/ga/athena;-><init>()V

    sput-object p0, Lcom/transsion/ga/AthenaAnalytics;->o:Lcom/transsion/ga/athena;

    sget-wide p1, Lcom/transsion/ga/AthenaAnalytics;->k:J

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ga/athena;->d(J)V

    sget-object p0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    check-cast p0, Landroid/app/Application;

    sget-object p1, Lcom/transsion/ga/AthenaAnalytics;->o:Lcom/transsion/ga/athena;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_3
    sget-wide p1, Lcom/transsion/ga/AthenaAnalytics;->k:J

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ga/athena;->d(J)V

    :goto_0
    return-void
.end method

.method public static m(Landroid/os/Handler;)V
    .locals 3

    new-instance v0, Lsj;

    invoke-direct {v0}, Lsj;-><init>()V

    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic n(Lj5d;)V
    .locals 6

    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    new-instance v1, Lq4d;

    invoke-direct {v1}, Lq4d;-><init>()V

    invoke-virtual {p0}, Lj5d;->f()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    new-instance v1, Lq4d;

    invoke-direct {v1}, Lq4d;-><init>()V

    invoke-virtual {p0}, Lj5d;->f()Landroid/os/Handler;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static synthetic o(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->z(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/ga/AthenaAnalytics;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ga/AthenaAnalytics;->d:Z

    return p1
.end method

.method public static r(Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/transsion/ga/AthenaAnalytics;->n:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/transsion/athena/config/data/model/ehanat;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic t()J
    .locals 2

    sget-wide v0, Lcom/transsion/ga/AthenaAnalytics;->k:J

    return-wide v0
.end method

.method public static u(Lj5d;)V
    .locals 1

    new-instance v0, Lvj;

    invoke-direct {v0}, Lvj;-><init>()V

    invoke-virtual {p0, v0}, Lj5d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Lj5d;)V
    .locals 1

    new-instance v0, Ltj;

    invoke-direct {v0, p0}, Ltj;-><init>(Lj5d;)V

    invoke-virtual {p0, v0}, Lj5d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 5

    const-string v0, "_"

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackData;->c()I

    move-result v1

    const/high16 v2, 0x80000

    if-le v1, v2, :cond_0

    const-string p0, "TrackData size is too large, ignored !!"

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string v1, "AthenaKV"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/athena/data/TrackDataWrapper;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/transsion/athena/data/TrackDataWrapper;-><init>(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Landroid/os/Parcelable;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "SaveToMMKV tid : %d, eventName : %s"

    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static y(Lj5d;)V
    .locals 3

    new-instance v0, Luj;

    invoke-direct {v0}, Luj;-><init>()V

    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v0, v1, v2}, Lj5d;->d(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final B()Lj5d;
    .locals 4

    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->a:Lj5d;

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/taaneh/a;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sput v1, Lcom/transsion/ga/AthenaAnalytics;->g:I

    :cond_0
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    sget v3, Lcom/transsion/ga/AthenaAnalytics;->g:I

    if-eq v3, v1, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lb4d;->h(Landroid/content/Context;)Lb4d;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/transsion/athena/enatha/enatha;->m(Landroid/content/Context;)Lcom/transsion/athena/enatha/enatha;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->a:Lj5d;

    :cond_3
    iget-object p0, p0, Lcom/transsion/ga/AthenaAnalytics;->a:Lj5d;

    return-object p0
.end method

.method public c0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V
    .locals 2

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->d0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public d0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    sget-object v0, Lcom/transsion/athena/taaneh/a;->a:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The parameter tid : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " or event name : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is illegal."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p3, p4}, Lcom/transsion/athena/data/athena;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The tid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not belong the app"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->v(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->v(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public k(IJ)V
    .locals 1

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p3}, Lj5d;->b(Landroid/os/Message;J)V

    :cond_1
    return-void
.end method

.method public final synthetic p(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/athena/athena;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/athena/athena;->a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "TrackByAidl tid : %d, eventName : %s"

    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TrackByAidl "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final v(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 3

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->j:I

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/ga/AthenaAnalytics;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/transsion/ga/AthenaAnalytics;->m:Landroid/content/Context;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    const-string v0, ""

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "scode"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->z(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/ga/AthenaAnalytics;->B()Lj5d;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj5d;->e(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->c:Lcom/transsion/athena/athena;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/ga/AthenaAnalytics;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->c()I

    move-result v0

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lqj;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lqj;-><init>(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "TrackByAidl trackData size is too large, ignored !!"

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->x(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    iget-object p0, p0, Lcom/transsion/ga/AthenaAnalytics;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/transsion/athena/data/TrackDataWrapper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/athena/data/TrackDataWrapper;-><init>(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
