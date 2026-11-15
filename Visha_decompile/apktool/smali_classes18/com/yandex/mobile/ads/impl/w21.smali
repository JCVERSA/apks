.class public final Lcom/yandex/mobile/ads/impl/w21;
.super Lcom/yandex/mobile/ads/impl/yf1;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/w21$a;
    }
.end annotation


# instance fields
.field private final k:Lcom/yandex/mobile/ads/impl/n21;

.field private l:Lcom/yandex/mobile/ads/impl/w21$a;

.field private final m:Lcom/yandex/mobile/ads/impl/a31;

.field private n:Lcom/yandex/mobile/ads/impl/su0;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/n21;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n21;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w21;->k:Lcom/yandex/mobile/ads/impl/n21;

    new-instance v0, Lcom/yandex/mobile/ads/impl/a31;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/a31;-><init>(Lcom/yandex/mobile/ads/impl/w21;Lcom/yandex/mobile/ads/impl/n21;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/w21;->m:Lcom/yandex/mobile/ads/impl/a31;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ry1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ry1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w21;->n:Lcom/yandex/mobile/ads/impl/su0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/yf1;->a()V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w21;->l:Lcom/yandex/mobile/ads/impl/w21$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/w21;->o:Z

    .line 4
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/w21$a;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/w21;->l:Lcom/yandex/mobile/ads/impl/w21$a;

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(I)V

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w21;->l:Lcom/yandex/mobile/ads/impl/w21$a;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 9
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w21;->l:Lcom/yandex/mobile/ads/impl/w21$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/w21$a;->a()V

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w21;->l:Lcom/yandex/mobile/ads/impl/w21$a;

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "htmlResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/w21;->o:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w21;->m:Lcom/yandex/mobile/ads/impl/a31;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/a31;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w21;->m:Lcom/yandex/mobile/ads/impl/a31;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a31;->b()V

    return-void
.end method

.method public final k()Lcom/yandex/mobile/ads/impl/n21;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w21;->k:Lcom/yandex/mobile/ads/impl/n21;

    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w21;->n:Lcom/yandex/mobile/ads/impl/su0;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/su0;->a(II)Lcom/yandex/mobile/ads/impl/su0$a;

    move-result-object p1

    iget p2, p1, Lcom/yandex/mobile/ads/impl/su0$a;->a:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/su0$a;->b:I

    invoke-super {p0, p2, p1}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/lm1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/lm1;-><init>(F)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/w21;->n:Lcom/yandex/mobile/ads/impl/su0;

    return-void
.end method

.method public final setClickListener(Lcom/yandex/mobile/ads/impl/zo;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w21;->m:Lcom/yandex/mobile/ads/impl/a31;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/a31;->a(Lcom/yandex/mobile/ads/impl/zo;)V

    return-void
.end method

.method public final setPreloadListener(Lcom/yandex/mobile/ads/impl/w21$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w21;->l:Lcom/yandex/mobile/ads/impl/w21$a;

    return-void
.end method
