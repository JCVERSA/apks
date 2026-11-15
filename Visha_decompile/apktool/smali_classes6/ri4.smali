.class public Lri4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lri4;


# instance fields
.field public a:Lbx4;

.field public final b:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lri4$a;

    invoke-direct {v0, p0}, Lri4$a;-><init>(Lri4;)V

    iput-object v0, p0, Lri4;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static e()Lri4;
    .locals 2

    sget-object v0, Lri4;->c:Lri4;

    if-nez v0, :cond_1

    const-class v0, Lri4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lri4;->c:Lri4;

    if-nez v1, :cond_0

    new-instance v1, Lri4;

    invoke-direct {v1}, Lri4;-><init>()V

    sput-object v1, Lri4;->c:Lri4;

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
    sget-object v0, Lri4;->c:Lri4;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->t()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->h()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->e()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->x()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbx4;->j()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbx4;->z()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Landroid/content/Context;)V
    .locals 2

    const-string v0, "visha_GlobalUploadManager"

    const-string v1, "linkUploadService"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/cloud/upload/service/UploadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lri4;->b:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->f(Z)V

    :cond_0
    return-void
.end method

.method public k(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->s(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->l()V

    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->u(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Lrw4;)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lbd0;->k(Ljava/lang/String;Lrw4;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->q()V

    :cond_0
    return-void
.end method

.method public p(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lbx4;->y(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public q(Landroid/app/Notification;)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->b(Landroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public r(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lbx4;->r(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 0

    iget-object p0, p0, Lri4;->a:Lbx4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->a(Z)V

    :cond_0
    return-void
.end method
