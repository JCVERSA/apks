.class public final Lcom/yandex/mobile/ads/impl/c72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fn0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/c72$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jj0;

.field private final b:Lcom/yandex/mobile/ads/impl/ig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/mg;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/mg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jj0;",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/mg;",
            ")V"
        }
    .end annotation

    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetClickConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c72;->a:Lcom/yandex/mobile/ads/impl/jj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c72;->b:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c72;->c:Lcom/yandex/mobile/ads/impl/mg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 4

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->r()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->q()Landroid/widget/TextView;

    move-result-object p1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c72;->b:Lcom/yandex/mobile/ads/impl/ig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/yandex/mobile/ads/impl/xj0;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/xj0;

    :cond_1
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c72;->a:Lcom/yandex/mobile/ads/impl/jj0;

    new-instance v3, Lcom/yandex/mobile/ads/impl/c72$a;

    invoke-direct {v3, v0, p1}, Lcom/yandex/mobile/ads/impl/c72$a;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/c72;->c:Lcom/yandex/mobile/ads/impl/mg;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c72;->b:Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/mg;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V

    :cond_3
    return-void
.end method
