.class final Lcom/yandex/mobile/ads/impl/i70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hi1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/i70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field final synthetic d:Lcom/yandex/mobile/ads/impl/i70;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i70;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/yandex/mobile/ads/impl/m60;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->a:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i70;->b(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/z60;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z60;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i70;->a(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/n60;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/hi1;->stop()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i70;->c(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/mf2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/mf2;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i70;->e(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/ra1;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ra1;->a(Lcom/yandex/mobile/ads/impl/m60;)Lcom/yandex/mobile/ads/impl/xc2;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/yc2;->a(Lcom/yandex/mobile/ads/impl/rc2;Lcom/yandex/mobile/ads/impl/xc2;)V

    :cond_0
    return-void
.end method

.method public final onIsPlayingChanged(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->a:Z

    invoke-interface {p1, v1}, Lcom/yandex/mobile/ads/impl/yc2;->h(Lcom/yandex/mobile/ads/impl/rc2;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->c:Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/yc2;->g(Lcom/yandex/mobile/ads/impl/rc2;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->b:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->c:Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/yc2;->b(Lcom/yandex/mobile/ads/impl/rc2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->a:Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/yc2;->a(Lcom/yandex/mobile/ads/impl/rc2;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->b(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/z60;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z60;->b()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/yc2;->d(Lcom/yandex/mobile/ads/impl/rc2;)V

    :cond_2
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->b:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->b:Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/yc2;->c(Lcom/yandex/mobile/ads/impl/rc2;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->b:Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i70;->f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70$a;->d:Lcom/yandex/mobile/ads/impl/i70;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i70;->d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/yc2;->f(Lcom/yandex/mobile/ads/impl/rc2;)V

    :cond_4
    :goto_0
    return-void
.end method
