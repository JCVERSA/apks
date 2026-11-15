.class public Lcom/transsion/sniffer_load/GlobalDownloadManger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lry2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
    }
.end annotation


# static fields
.field public static volatile d:Z = false

.field public static volatile e:Lcom/transsion/sniffer_load/GlobalDownloadManger;


# instance fields
.field public b:Lry2;

.field public final c:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger$a;-><init>(Lcom/transsion/sniffer_load/GlobalDownloadManger;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static B()Lcom/transsion/sniffer_load/GlobalDownloadManger;
    .locals 2

    sget-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/sniffer_load/GlobalDownloadManger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/sniffer_load/GlobalDownloadManger;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;-><init>()V

    sput-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger;

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
    sget-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger;

    return-object v0
.end method


# virtual methods
.method public A(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lry2;->A(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->getTask(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public D(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public E(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->s(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public F(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->u(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lry2;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Notification;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lry2;->b(Landroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lry2;->c(Ljava/lang/String;Z)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->e()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public f(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->f(Z)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getTask(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->C(Ljava/lang/String;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p0

    return-object p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->h()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Lrw4;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lbd0;->k(Ljava/lang/String;Lrw4;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->l()V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbd0;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Landroid/content/Context;Ljava/util/List;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lry2;->n(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public o()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lry2;->o()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p(Landroid/content/Context;Lba0;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lry2;->p(Landroid/content/Context;Lba0;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->q()V

    :cond_0
    return-void
.end method

.method public bridge synthetic s(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->E(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public t()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->t()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic u(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->F(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void
.end method

.method public v(Ljava/lang/String;Lmf7;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lbd0;->v(Ljava/lang/String;Lmf7;)V

    :cond_0
    return-void
.end method

.method public w()Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lry2;->w()Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->MOBILE:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-object p0
.end method

.method public x()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/GlobalDownloadManger;->b:Lry2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbd0;->x()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
