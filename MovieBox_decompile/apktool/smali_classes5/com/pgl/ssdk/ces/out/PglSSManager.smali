.class public Lcom/pgl/ssdk/ces/out/PglSSManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final INIT_STATUS_FAIL_CONTEXT_NULL:I = 0x4

.field public static final INIT_STATUS_FAIL_SO_LOADFAIL:I = 0x3

.field public static final INIT_STATUS_FAIL_SO_MISSING:I = 0x2

.field public static final INIT_STATUS_OK:I = 0x0

.field public static final INIT_STATUS_UNINITIALIZE:I = 0x1

.field public static final REPORT_SCENE_ADSHOW:Ljava/lang/String; = "AdShow"

.field private static volatile a:Lcom/pgl/ssdk/ces/out/PglSSManager;


# instance fields
.field private final b:Lcom/pgl/ssdk/ces/b;

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/pgl/ssdk/ces/out/PglSSConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->c:I

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->getAppId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->getOVRegionType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p2}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->getCollectMode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p2}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->getAdSdkVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1, v0, v1, v2, p2}, Lcom/pgl/ssdk/ces/b;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/pgl/ssdk/ces/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 28
    .line 29
    return-void
.end method

.method public static getInitStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getInstance()Lcom/pgl/ssdk/ces/out/PglSSManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getLoadError()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->i()Lcom/pgl/ssdk/t0$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->i()Lcom/pgl/ssdk/t0$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/pgl/ssdk/t0$a;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/pgl/ssdk/ces/out/PglSSConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSManager;
    .locals 2
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const-class v0, Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/pgl/ssdk/ces/out/PglSSManager;-><init>(Landroid/content/Context;Lcom/pgl/ssdk/ces/out/PglSSConfig;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 24
    .line 25
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/pgl/ssdk/ces/out/PglSSConfig;->getCustomInfo()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/pgl/ssdk/ces/b;->a(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 45
    .line 46
    invoke-virtual {p0, p2, p4, p3, p5}, Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit v0

    .line 55
    throw p0

    .line 56
    :cond_2
    :goto_2
    sget-object p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    .line 57
    .line 58
    return-object p0
.end method


# virtual methods
.method public checkEventVirtual(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/b;->a(Landroid/view/MotionEvent;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public getECForBidding()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/b;->e()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getFeatureHash(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/String;[B)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public getSofChara()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/b;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/b;->k()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public reportNow(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-string v0, "AdShow"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/b;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->c:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 23
    .line 24
    iget v2, v1, Lcom/pgl/ssdk/ces/b;->p:I

    .line 25
    .line 26
    rem-int/2addr v0, v2

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->c:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->c:I

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/b;->a(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/b;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager;->b:Lcom/pgl/ssdk/ces/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/pgl/ssdk/ces/b;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
