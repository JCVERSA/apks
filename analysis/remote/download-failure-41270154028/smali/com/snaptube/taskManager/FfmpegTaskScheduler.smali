.class public Lcom/snaptube/taskManager/FfmpegTaskScheduler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/FfmpegTaskScheduler$e;,
        Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;,
        Lcom/snaptube/taskManager/FfmpegTaskScheduler$TaskType;,
        Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;,
        Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "FfmpegTaskScheduler"

.field public static volatile i:Lcom/snaptube/taskManager/FfmpegTaskScheduler;

.field public static final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile k:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Lo/p40;

.field public g:Lcom/snaptube/taskManager/FfmpegTaskScheduler$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    sput v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Lo/ke2;

    invoke-direct {v0}, Lo/ke2;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->z()I

    move-result v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o2()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webm crash count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webm_crash"

    const-string v2, "ffmpeg_crash_count"

    invoke-static {v1, v2, v0}, Lo/ne2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->I()V

    return-void
.end method

.method public static A()V
    .locals 2

    const-class v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->A6(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static F()V
    .locals 2

    const-class v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->A6(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static bridge synthetic a(Lcom/snaptube/taskManager/FfmpegTaskScheduler;Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->i(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/snaptube/taskManager/FfmpegTaskScheduler;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->B(J)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/snaptube/taskManager/FfmpegTaskScheduler;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/snaptube/taskManager/FfmpegTaskScheduler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic f()V
    .locals 0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->A()V

    return-void
.end method

.method public static bridge synthetic g()V
    .locals 0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->F()V

    return-void
.end method

.method public static j(Ljava/lang/String;J)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lo/yj2;->Q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/az7;->o()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    return-wide v2

    :cond_1
    sub-long/2addr v0, p1

    const-wide/32 p0, 0x1400000

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->j(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2, v0, v1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->j(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    add-long/2addr v0, p0

    invoke-static {p2, v0, v1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->j(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;
    .locals 2

    sget-object v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->i:Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->i:Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    invoke-direct {v1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;-><init>()V

    sput-object v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->i:Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->i:Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    return-object v0
.end method

.method public static z()I
    .locals 3

    sget v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-class v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    monitor-enter v0

    :try_start_0
    sget v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    if-ne v2, v1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->n2()I

    move-result v1

    sput v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k:I

    return v0
.end method


# virtual methods
.method public final B(J)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->m:Lo/p40$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final C(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    iget-object v3, v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    iget-object v2, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    sget-object v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->FAILED:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    move-object v5, p1

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " install plugin failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final D()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    iget-object v3, v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    iget-object v2, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    sget-object v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->WAITING_FOR_CODEC_PLUGIN:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public E()V
    .locals 0

    invoke-static {}, Lo/b35;->a()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    return-void
.end method

.method public final G()V
    .locals 11

    sget-object v0, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    invoke-virtual {v2}, Lo/p40;->h()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    iget-object v3, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_2
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->S3()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->b:I

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v5, v6, :cond_3

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "jni_webm"

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "jni_mp3"

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_extract_mp3"

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_combine_hd"

    goto :goto_1

    :cond_6
    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_m4a_mp3"

    goto :goto_1

    :cond_7
    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_combine_images"

    goto :goto_1

    :cond_8
    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    const-string v4, "process_combine_ts"

    :cond_9
    move-object v6, v4

    move-wide v4, v7

    :goto_1
    cmp-long v9, v4, v7

    if-gez v9, :cond_a

    invoke-static {v6}, Lcom/snaptube/dataadapter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "ffmpeg_no_enough_space"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need space "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    move-object v4, v6

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    sget-object v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->WARNING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v0

    return-void

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->H(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)V

    :cond_b
    monitor-exit v0

    return-void

    :cond_c
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final H(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    sget-object v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->RUNNING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    iget v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/p40;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ge2;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    iget v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->g:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/p40;->g(Ljava/lang/String;Ljava/lang/String;ILo/ge2;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/p40;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ge2;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    iget v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->g:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/p40;->e(Ljava/lang/String;Ljava/lang/String;ILo/ge2;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    iget-wide v6, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->l:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lo/p40;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLo/ge2;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lo/p40;->c(Ljava/lang/String;Ljava/lang/String;Lo/ge2;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    iget-object v1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lo/p40;->d(Ljava/lang/String;Ljava/lang/String;Lo/ge2;)V

    :goto_0
    return-void
.end method

.method public final I()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->I()Lcom/snaptube/plugin/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/plugin/a;->y()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lrx/c;->a()Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->a()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$a;

    invoke-direct {v1, p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$a;-><init>(Lcom/snaptube/taskManager/FfmpegTaskScheduler;)V

    invoke-virtual {v0, v1}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    return-void
.end method

.method public h(Lcom/snaptube/taskManager/FfmpegTaskScheduler$e;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->g:Lcom/snaptube/taskManager/FfmpegTaskScheduler$e;

    return-void
.end method

.method public final i(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, ""

    :goto_3
    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " available space\uff1a"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " need space: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " isFull: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p2, v0, v2

    if-gtz p2, :cond_5

    const-string p2, "true"

    goto :goto_4

    :cond_5
    const-string p2, "false"

    :goto_4
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p2, v0}, Lo/ca8;->b(Ljava/lang/StringBuilder;Ljava/io/File;Ljava/io/File;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(J)V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    const-string v2, ""

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->i:Z

    iget p1, v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->k:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->m:Lo/p40$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/p40$a;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    :goto_1
    if-eqz v1, :cond_2

    iget-object p1, v1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->CANCELED:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    invoke-interface {p1, p2, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized o()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->I()Lcom/snaptube/plugin/a;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object v2

    sget-object v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$c;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/snaptube/plugin/a;->n(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/q55;->G(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/plugin/a;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/snaptube/plugin/a;->n(Landroid/content/Context;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/q55;->A(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->R3()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/snaptube/plugin/a;->P(Landroid/content/Context;)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->D()V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object v2

    sget-object v3, Lcom/snaptube/plugin/PluginStatus;->UNSUPPORTED:Lcom/snaptube/plugin/PluginStatus;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pluginInfo Supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "pluginInfo == null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->C(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final p(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)Lo/ge2;
    .locals 1

    new-instance v0, Lcom/snaptube/taskManager/FfmpegTaskScheduler$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$b;-><init>(Lcom/snaptube/taskManager/FfmpegTaskScheduler;Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)V

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;ILcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->g:Lcom/snaptube/taskManager/FfmpegTaskScheduler$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$e;->a()V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->k(I)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p4, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->p(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->n(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p4, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->p(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->n(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p4, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->n(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->m(J)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p6, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;ILcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v1, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;-><init>(JI)V

    invoke-virtual {v3, p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->r(Ljava/lang/String;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->k(I)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->q(Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d$a;->l()Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    sget-object p1, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->PENDING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const/4 p2, 0x0

    invoke-interface {p4, p1, p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->o()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v2

    return-wide v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x()I
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->q3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
