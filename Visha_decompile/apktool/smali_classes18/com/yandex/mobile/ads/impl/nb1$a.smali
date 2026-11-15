.class final Lcom/yandex/mobile/ads/impl/nb1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/nb1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/nb1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nb1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/nb1;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1;->c(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/xh1;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/nb1;->a(Lcom/yandex/mobile/ads/impl/nb1;Lcom/yandex/mobile/ads/impl/xh1;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/nb1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1$a;->a(Lcom/yandex/mobile/ads/impl/nb1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1;->a(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/jb1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/jb1;->a()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/nb1;->g(Lcom/yandex/mobile/ads/impl/nb1;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/nb1;->d(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/yx1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yx1;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/nb1;->e(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/it0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/yp2;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/yp2;-><init>(Lcom/yandex/mobile/ads/impl/nb1;)V

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/it0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/nb1;->b(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/gp1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gp1;->a()V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1;->a(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/jb1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/jb1;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1$a;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1;->f(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/rg2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/yb1;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
