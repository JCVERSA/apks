.class public final Lcom/yandex/mobile/ads/impl/qk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/uk0;
.implements Lcom/yandex/mobile/ads/impl/r11;
.implements Lcom/yandex/mobile/ads/impl/ue2;
.implements Lcom/yandex/mobile/ads/impl/cp1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/qk0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qk0$a;

.field private final b:Lcom/yandex/mobile/ads/impl/s4;

.field private final c:Lcom/yandex/mobile/ads/impl/sk0;

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/t4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/qk0$a;Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/sk0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "adIdStorageManager"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "impressionReportController"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/qk0;->c:Lcom/yandex/mobile/ads/impl/sk0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qk0;->d:Landroid/content/Context;

    return-void
.end method

.method private final a()Z
    .locals 2

    .line 5
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->d:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->b0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final i()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->e:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/t4;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "showNotices"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qk0;->e:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->c:Lcom/yandex/mobile/ads/impl/sk0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk0;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->c:Lcom/yandex/mobile/ads/impl/sk0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sk0;->c()V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/qk0$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/qk0$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->c:Lcom/yandex/mobile/ads/impl/sk0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sk0;->b()V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/qk0$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->c:Lcom/yandex/mobile/ads/impl/sk0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sk0;->b()V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/qk0$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/qk0$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->c:Lcom/yandex/mobile/ads/impl/sk0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sk0;->c()V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/qk0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->b:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qk0;->a:Lcom/yandex/mobile/ads/impl/qk0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qk0;->f:Lcom/yandex/mobile/ads/impl/t4;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/qk0$a;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method
