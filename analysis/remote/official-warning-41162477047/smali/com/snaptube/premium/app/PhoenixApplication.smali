.class public Lcom/snaptube/premium/app/PhoenixApplication;
.super Lcom/snaptube/base/BaseApplication;

# interfaces
.implements Lcom/snaptube/premium/app/d$b;
.implements Lo/z84;
.implements Landroidx/work/a$c;


# static fields
.field public static A:Landroid/os/Handler;

.field public static B:Lo/cj7;

.field public static C:Lcom/snaptube/media/MediaFileScanner;

.field public static volatile D:Lcom/snaptube/plugin/a;

.field public static final E:Lcom/snaptube/premium/log/LaunchLogger;

.field public static final F:Ljava/util/List;

.field public static G:Z

.field public static final z:Ljava/lang/String;


# instance fields
.field public g:Lo/rj5;

.field public h:Lo/uj8;

.field public i:Lcom/snaptube/premium/ads/a;

.field public j:Ljava/lang/Object;

.field public volatile k:Ldagger/Lazy;

.field public l:Lrx/subjects/a;

.field public m:Lo/r18;

.field n:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/ti3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/bg5;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "app"
    .end annotation
.end field

.field p:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/zd3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/cg3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "YouTubePlayer"
    .end annotation
.end field

.field public r:Ljava/lang/Object;

.field public volatile s:Lcom/snaptube/premium/app/d;

.field public volatile t:Ljava/lang/String;

.field public volatile u:Ljava/lang/String;

.field public v:Lo/k04;

.field public w:Lo/av;

.field public x:Z

.field public y:Lo/gi3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->J(Z)V

    const-class v0, Lcom/snaptube/premium/app/PhoenixApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->z:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->A:Landroid/os/Handler;

    new-instance v0, Lcom/snaptube/premium/log/LaunchLogger;

    invoke-direct {v0}, Lcom/snaptube/premium/log/LaunchLogger;-><init>()V

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    new-instance v0, Lcom/snaptube/premium/app/PhoenixApplication$1;

    invoke-direct {v0}, Lcom/snaptube/premium/app/PhoenixApplication$1;-><init>()V

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->F:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snaptube/premium/app/PhoenixApplication;->G:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/snaptube/base/BaseApplication;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->j:Ljava/lang/Object;

    new-instance v0, Lcom/snaptube/premium/app/PhoenixApplication$a;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/app/PhoenixApplication$a;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    invoke-static {v0}, Lo/xq1;->a(Lo/z96;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->n:Ldagger/Lazy;

    new-instance v0, Lcom/snaptube/premium/app/PhoenixApplication$b;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/app/PhoenixApplication$b;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    invoke-static {v0}, Lo/xq1;->a(Lo/z96;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->o:Ldagger/Lazy;

    new-instance v0, Lcom/snaptube/premium/app/PhoenixApplication$c;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/app/PhoenixApplication$c;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    invoke-static {v0}, Lo/xq1;->a(Lo/z96;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->p:Ldagger/Lazy;

    new-instance v0, Lcom/snaptube/premium/app/PhoenixApplication$d;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/app/PhoenixApplication$d;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    invoke-static {v0}, Lo/xq1;->a(Lo/z96;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->q:Ldagger/Lazy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->r:Ljava/lang/Object;

    sget-object v0, Lo/k04;->a:Lo/k04;

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v0, Lo/av;

    invoke-direct {v0}, Lo/av;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->w:Lo/av;

    new-instance v0, Lo/ce7;

    new-instance v1, Lcom/snaptube/premium/app/PhoenixApplication$h;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/app/PhoenixApplication$h;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    const-string v2, "initUserComponent"

    invoke-direct {v0, v1, v2}, Lo/ce7;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->y:Lo/gi3;

    return-void
.end method

.method public static declared-synchronized B()Lo/cj7;
    .locals 3

    const-class v0, Lcom/snaptube/premium/app/PhoenixApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/app/PhoenixApplication;->B:Lo/cj7;

    if-nez v1, :cond_2

    invoke-static {}, Lo/yi2;->a()Lo/yi2$a;

    move-result-object v1

    invoke-interface {v1}, Lo/yi2$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/az7;->x()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DataCache"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DataCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DataCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lo/cj7;

    invoke-direct {v2, v1}, Lo/cj7;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/snaptube/premium/app/PhoenixApplication;->B:Lo/cj7;

    :cond_2
    sget-object v1, Lcom/snaptube/premium/app/PhoenixApplication;->B:Lo/cj7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static C()Lcom/snaptube/premium/app/PhoenixApplication;
    .locals 1

    sget-object v0, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    check-cast v0, Lcom/snaptube/premium/app/PhoenixApplication;

    return-object v0
.end method

.method public static E()Lcom/snaptube/media/MediaFileScanner;
    .locals 3

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->C:Lcom/snaptube/media/MediaFileScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snaptube/media/MediaFileScanner;

    sget-object v1, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snaptube/media/MediaFileScanner;-><init>(Landroid/content/Context;Lo/zd3;)V

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->C:Lcom/snaptube/media/MediaFileScanner;

    :cond_0
    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->C:Lcom/snaptube/media/MediaFileScanner;

    return-object v0
.end method

.method public static I()Lcom/snaptube/plugin/a;
    .locals 2

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->D:Lcom/snaptube/plugin/a;

    if-nez v0, :cond_0

    const-class v1, Lcom/snaptube/premium/app/PhoenixApplication;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/snaptube/plugin/a;

    invoke-direct {v0}, Lcom/snaptube/plugin/a;-><init>()V

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->D:Lcom/snaptube/plugin/a;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static K()Lcom/snaptube/taskManager/TaskMessageCenter;
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0}, Lo/sn;->W()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    return-object v0
.end method

.method public static M()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->A:Landroid/os/Handler;

    return-object v0
.end method

.method public static O()Lo/dv8;
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0}, Lo/hw5;->E()Lo/dv8;

    move-result-object v0

    return-object v0
.end method

.method public static P()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/app/d$b;

    invoke-interface {v1}, Lcom/snaptube/premium/app/d$b;->b()Lcom/snaptube/premium/app/d;

    move-result-object v1

    invoke-interface {v1}, Lo/kk8;->h()Lo/td9;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/app/d$b;

    invoke-interface {v1}, Lcom/snaptube/premium/app/d$b;->b()Lcom/snaptube/premium/app/d;

    move-result-object v1

    invoke-interface {v1}, Lo/kk8;->k()Lo/tb9;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static T(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/snaptube/premium/app/PhoenixApplication;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static U()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/premium/app/PhoenixApplication;->G:Z

    return v0
.end method

.method public static synthetic W()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lo/yk6;->e(I)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/premium/log/network/DnsDetector;->j(Ljava/util/Map;)Lcom/snaptube/premium/log/network/DnsDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/log/network/DnsDetector;->l()V

    return-void
.end method

.method public static synthetic Y(Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d0(Z)V
    .locals 0

    sput-boolean p0, Lcom/snaptube/premium/app/PhoenixApplication;->G:Z

    return-void
.end method

.method public static synthetic f(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->W()V

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/premium/app/PhoenixApplication;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/app/PhoenixApplication;->X(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/premium/app/PhoenixApplication;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->k:Ldagger/Lazy;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/snaptube/premium/app/PhoenixApplication;)Lo/av;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->w:Lo/av;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/snaptube/premium/app/PhoenixApplication;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->o()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/snaptube/premium/app/PhoenixApplication;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->S()V

    return-void
.end method

.method public static bridge synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static z()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->t:Ljava/lang/String;

    return-object v0
.end method

.method public D()Lo/zd3;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->p:Ldagger/Lazy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zd3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lo/bg5;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->o:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bg5;

    return-object v0
.end method

.method public G()Lo/rj5;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->g:Lo/rj5;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->g:Lo/rj5;

    if-nez v0, :cond_0

    new-instance v0, Lo/rj5;

    invoke-direct {v0, p0}, Lo/rj5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/rj5;->m()V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->g:Lo/rj5;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->g:Lo/rj5;

    return-object v0
.end method

.method public declared-synchronized H()Lrx/subjects/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->l:Lrx/subjects/a;

    if-nez v0, :cond_0

    invoke-static {}, Lrx/subjects/a;->Y0()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->l:Lrx/subjects/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->l:Lrx/subjects/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public J()Lo/av;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->w:Lo/av;

    return-object v0
.end method

.method public L()Lo/r18;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->m:Lo/r18;

    if-nez v0, :cond_0

    new-instance v0, Lo/r18;

    sget-object v1, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-direct {v0, v1}, Lo/r18;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->m:Lo/r18;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->m:Lo/r18;

    return-object v0
.end method

.method public declared-synchronized N()Lo/uj8;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->h:Lo/uj8;

    if-nez v0, :cond_0

    new-instance v0, Lo/uj8;

    invoke-direct {v0}, Lo/uj8;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->h:Lo/uj8;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->h:Lo/uj8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Q()Z
    .locals 2

    sget-object v0, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-static {v0}, Lo/cj0;->k(Landroid/content/Context;)Lo/cj0;

    move-result-object v0

    sget-object v1, Lcom/snaptube/titan/TitanConsts$Component;->PAID_LICENSE:Lcom/snaptube/titan/TitanConsts$Component;

    invoke-virtual {v0, v1}, Lo/cj0;->h(Lcom/snaptube/titan/TitanConsts$Component;)Z

    move-result v0

    return v0
.end method

.method public final R()V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/app/PhoenixApplication$f;

    invoke-direct {v0, p0, p0}, Lcom/snaptube/premium/app/PhoenixApplication$f;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;Lcom/snaptube/premium/app/PhoenixApplication;)V

    invoke-static {v0}, Lo/xq1;->a(Lo/z96;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->k:Ldagger/Lazy;

    return-void
.end method

.method public final S()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->s:Lcom/snaptube/premium/app/d;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/snaptube/premium/app/PhoenixApplication;->s:Lcom/snaptube/premium/app/d;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->e0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->a0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    invoke-static {}, Lcom/snaptube/util/ProductionEnv;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/snaptube/premium/app/PhoenixApplication;->z:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initUserComponent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", is UI thread:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/a58;->b()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x2

    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    invoke-static {}, Lo/a58;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "initUserComponent in ui thread"

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v0, v1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final V(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic X(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 3

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x41a

    if-eq v0, v1, :cond_3

    const/16 p1, 0x49f

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->s()V

    sget-object p1, Lcom/snaptube/premium/home/decoration/HomeDecorationHelper;->a:Lcom/snaptube/premium/home/decoration/HomeDecorationHelper;

    invoke-virtual {p1}, Lcom/snaptube/premium/home/decoration/HomeDecorationHelper;->o()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->e0()V

    iget-object v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/app/PhoenixApplication;->Z(Landroid/content/Intent;)V

    :cond_3
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->n:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ti3;

    invoke-interface {v0}, Lo/ti3;->c()Lo/ti3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->s:Lcom/snaptube/premium/app/d;

    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/app/PhoenixApplication;->q(Lcom/snaptube/premium/app/d;Lo/ti3$b;)V

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_4

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v2}, Lcom/snaptube/premium/app/PhoenixApplication;->Z(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public final Z(Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lo/s5;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lo/ug5;

    if-eqz v3, :cond_1

    check-cast v2, Lo/ug5;

    iget-object v3, p0, Lcom/snaptube/premium/app/PhoenixApplication;->n:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ti3;

    invoke-interface {v3}, Lo/ti3;->b()Z

    move-result v3

    invoke-interface {v2, v3, p1}, Lo/ug5;->O(ZLandroid/content/Intent;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a()Landroidx/work/a;
    .locals 2

    new-instance v0, Landroidx/work/a$b;

    invoke-direct {v0}, Landroidx/work/a$b;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/work/a$b;->b(I)Landroidx/work/a$b;

    move-result-object v0

    invoke-static {}, Lo/b99;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/a$b;->c(Ljava/util/concurrent/Executor;)Landroidx/work/a$b;

    invoke-virtual {v0}, Landroidx/work/a$b;->a()Landroidx/work/a;

    move-result-object v0

    return-object v0
.end method

.method public final a0()V
    .locals 6

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x489

    const/16 v2, 0x49f

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/16 v5, 0x41a

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/cr5;

    invoke-direct {v1, p0}, Lo/cr5;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    new-instance v2, Lo/dr5;

    invoke-direct {v2}, Lo/dr5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "app_attach_base_context"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/snaptube/base/BaseApplication;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->x()V

    sget-object v2, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-static {v2}, Lo/vq6;->z(Landroid/content/Context;)V

    invoke-static {p1}, Lme/weishu/reflection/Reflection;->c(Landroid/content/Context;)I

    invoke-static {}, Lo/gl7;->a()Lo/gl7;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/gl7;->f(Landroid/content/Context;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    sget-object v2, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-virtual {p1, v2}, Lo/i02;->m(Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/snaptube/premium/app/d;
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->S()V

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->s:Lcom/snaptube/premium/app/d;

    return-object v0
.end method

.method public b0()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/log/LaunchLogger;->r(Landroid/app/Application;)V

    sget-object v1, Lo/bc;->a:Lo/bc;

    invoke-virtual {v1, v0}, Lo/bc;->f(Lo/bc$a;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->v()V

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->u()V

    invoke-static {}, Lo/y63;->a()V

    return-void
.end method

.method public final c0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->o()V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lcom/snaptube/premium/app/task/ErrorHandleTask;

    invoke-direct {v1}, Lcom/snaptube/premium/app/task/ErrorHandleTask;-><init>()V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/hl7;

    invoke-direct {v1}, Lo/hl7;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/w11;

    invoke-direct {v1, p1}, Lo/w11;-><init>(Z)V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    invoke-static {}, Lo/uh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lo/x39;

    invoke-direct {v1, p1}, Lo/x39;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lo/fm2;

    invoke-direct {v1}, Lo/fm2;-><init>()V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/xq6;

    invoke-direct {v1, p0, p1}, Lo/xq6;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;Z)V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    invoke-static {}, Lo/uh;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lo/y39;

    invoke-direct {v1, p1}, Lo/y39;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    :cond_2
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lo/v39;

    invoke-direct {v1, p1}, Lo/v39;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/ai4;

    invoke-direct {v1}, Lo/ai4;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/qb1;

    invoke-direct {v1}, Lo/qb1;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/eg2;

    invoke-direct {v1, p1}, Lo/eg2;-><init>(Z)V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    return-void
.end method

.method public final e0()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->n:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ti3;

    invoke-interface {v0}, Lo/ti3;->c()Lo/ti3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->s:Lcom/snaptube/premium/app/d;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->t:Ljava/lang/String;

    invoke-interface {v0}, Lo/ti3$b;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->u:Ljava/lang/String;

    invoke-interface {v0}, Lo/ti3$b;->a()Lo/ti3$a;

    move-result-object v3

    invoke-interface {v3}, Lo/ti3$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/app/PhoenixApplication;->q(Lcom/snaptube/premium/app/d;Lo/ti3$b;)V

    return-void
.end method

.method public get()Lo/x84;
    .locals 1

    new-instance v0, Lo/y84;

    invoke-direct {v0}, Lo/y84;-><init>()V

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lo/fc1;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->o()V

    iget-object p1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->k:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "user_scope_injector_service"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->b()Lcom/snaptube/premium/app/d;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public n()Z
    .locals 1

    const-string v0, "IAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    check-cast v0, Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->k:Ldagger/Lazy;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->k:Ldagger/Lazy;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->R()V

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
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p1}, Lcom/snaptube/premium/ConfigurationObservable;->c(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "app_onCreateMainProcess"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Lcom/snaptube/premium/app/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lo/kk8;->h()Lo/td9;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/kk8;->h()Lo/td9;

    move-result-object v0

    invoke-virtual {v0}, Lo/xb9;->d()V

    :cond_1
    invoke-interface {p1}, Lo/kk8;->k()Lo/tb9;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lo/kk8;->k()Lo/tb9;

    move-result-object p1

    invoke-virtual {p1}, Lo/xb9;->d()V

    :cond_2
    return-void
.end method

.method public q(Lcom/snaptube/premium/app/d;Lo/ti3$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/app/PhoenixApplication;->p(Lcom/snaptube/premium/app/d;)V

    if-nez p2, :cond_0

    const-string p1, ""

    invoke-virtual {p0, p1, p1}, Lcom/snaptube/premium/app/PhoenixApplication;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lo/ti3$b;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lo/ti3$b;->a()Lo/ti3$a;

    move-result-object p2

    invoke-interface {p2}, Lo/ti3$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/app/PhoenixApplication;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->t:Ljava/lang/String;

    iput-object p2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->u:Ljava/lang/String;

    iget-object p2, p0, Lcom/snaptube/premium/app/PhoenixApplication;->k:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/snaptube/premium/app/a;

    invoke-interface {p2}, Lcom/snaptube/premium/app/a;->c0()Lcom/snaptube/premium/app/d$a;

    move-result-object p2

    new-instance v0, Lo/wj7;

    invoke-direct {v0, p0, p1}, Lo/wj7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/snaptube/premium/app/d$a;->b(Lo/lk8;)Lcom/snaptube/premium/app/d$a;

    move-result-object p1

    new-instance p2, Lo/bl8;

    invoke-direct {p2, p0}, Lo/bl8;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Lcom/snaptube/premium/app/d$a;->a(Lo/bl8;)Lcom/snaptube/premium/app/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/snaptube/premium/app/d$a;->build()Lcom/snaptube/premium/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->s:Lcom/snaptube/premium/app/d;

    new-instance p1, Lcom/snaptube/premium/app/PhoenixApplication$g;

    invoke-direct {p1, p0}, Lcom/snaptube/premium/app/PhoenixApplication$g;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    invoke-static {p1}, Lo/y48;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final s()V
    .locals 1

    new-instance v0, Lo/er5;

    invoke-direct {v0}, Lo/er5;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/premium/app/PhoenixApplication;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/app/PhoenixApplication;->V(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/k6;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-boolean v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lo/c35;

    invoke-direct {v1}, Lo/c35;-><init>()V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/ha4;

    invoke-direct {v1}, Lo/ha4;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/wh8;

    invoke-direct {v1}, Lo/wh8;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/o56;

    invoke-direct {v1}, Lo/o56;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/fp3;

    invoke-direct {v1}, Lo/fp3;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/m57;

    invoke-direct {v1}, Lo/m57;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/y09;

    invoke-direct {v1}, Lo/y09;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/app/task/AbTestUpdateExposureTask;

    invoke-direct {v1}, Lcom/snaptube/premium/app/task/AbTestUpdateExposureTask;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->x:Z

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 2

    sget-object v0, Lo/ak1;->a:Lo/ak1;

    new-instance v1, Lo/rl5;

    invoke-direct {v1}, Lo/rl5;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/lq2;

    invoke-direct {v1}, Lo/lq2;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/zq0;

    invoke-direct {v1}, Lo/zq0;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/qm4;

    invoke-direct {v1}, Lo/qm4;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/pz;

    invoke-direct {v1}, Lo/pz;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/nw5;

    invoke-direct {v1}, Lo/nw5;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/app/task/SensorInitTask;

    invoke-direct {v1}, Lcom/snaptube/premium/app/task/SensorInitTask;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/cq0;

    invoke-direct {v1}, Lo/cq0;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/pb1;

    invoke-direct {v1}, Lo/pb1;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/r56;

    invoke-direct {v1}, Lo/r56;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/oe8;

    invoke-direct {v1}, Lo/oe8;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/xh6;

    invoke-direct {v1}, Lo/xh6;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/e29;

    invoke-direct {v1}, Lo/e29;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/ui4;

    invoke-direct {v1}, Lo/ui4;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/p23;

    invoke-direct {v1}, Lo/p23;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/ao;

    invoke-direct {v1}, Lo/ao;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/app/task/FeedbackFetchTask;

    invoke-direct {v1}, Lcom/snaptube/premium/app/task/FeedbackFetchTask;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lo/g71;

    invoke-direct {v1}, Lo/g71;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/app/task/AppOptimizeKitTask;

    invoke-direct {v1}, Lcom/snaptube/premium/app/task/AppOptimizeKitTask;-><init>()V

    invoke-virtual {v0, v1}, Lo/ak1;->c(Lo/gi3;)Lo/ak1;

    move-result-object v0

    invoke-virtual {v0}, Lo/ak1;->d()V

    return-void
.end method

.method public unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/z54;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final v()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->v:Lo/k04;

    new-instance v1, Lo/qq1;

    invoke-direct {v1}, Lo/qq1;-><init>()V

    invoke-virtual {v0, v1}, Lo/k04;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/ge;

    invoke-direct {v1}, Lo/ge;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/r24;

    invoke-direct {v1}, Lo/r24;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/gq6;

    invoke-direct {v1}, Lo/gq6;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/xw6;

    invoke-direct {v1}, Lo/xw6;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/pf6;

    invoke-direct {v1}, Lo/pf6;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/y08;

    invoke-direct {v1}, Lo/y08;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/vc;

    invoke-direct {v1}, Lo/vc;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/l06;

    invoke-direct {v1}, Lo/l06;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/cd0;

    invoke-direct {v1}, Lo/cd0;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/hs;

    invoke-direct {v1}, Lo/hs;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/qs;

    invoke-direct {v1}, Lo/qs;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/pi2;

    invoke-direct {v1}, Lo/pi2;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/uz3;

    invoke-direct {v1}, Lo/uz3;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/oh8;

    invoke-direct {v1}, Lo/oh8;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/n23;

    invoke-direct {v1}, Lo/n23;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/yz1;

    invoke-direct {v1}, Lo/yz1;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    move-result-object v0

    new-instance v1, Lo/mi9;

    invoke-direct {v1}, Lo/mi9;-><init>()V

    invoke-interface {v0, v1}, Lo/hd3;->a(Lo/gi3;)Lo/hd3;

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->A:Landroid/os/Handler;

    new-instance v1, Lcom/snaptube/premium/app/PhoenixApplication$e;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/app/PhoenixApplication$e;-><init>(Lcom/snaptube/premium/app/PhoenixApplication;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final w()Z
    .locals 4

    sget-object v0, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-static {v0}, Lo/xi7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":loader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v3, "app_onCreateMainProcess"

    invoke-virtual {v1, v3}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/snaptube/premium/app/PhoenixApplication;->c0(Z)V

    if-nez v1, :cond_2

    const-string v1, "processName"

    invoke-static {v1, v0}, Lo/u81;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "init_main_process_crash"

    invoke-static {v1, v0}, Lo/u81;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v3
.end method

.method public final x()V
    .locals 5

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    :try_start_0
    const-string v0, "java.lang.Daemons$FinalizerWatchdogDaemon"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v4, "INSTANCE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public y()Lcom/snaptube/premium/ads/a;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->i:Lcom/snaptube/premium/ads/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/premium/app/PhoenixApplication;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->i:Lcom/snaptube/premium/ads/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/premium/ads/a;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/ads/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/snaptube/premium/app/PhoenixApplication;->i:Lcom/snaptube/premium/ads/a;

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/a;->q0()V

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
    iget-object v0, p0, Lcom/snaptube/premium/app/PhoenixApplication;->i:Lcom/snaptube/premium/ads/a;

    return-object v0
.end method
