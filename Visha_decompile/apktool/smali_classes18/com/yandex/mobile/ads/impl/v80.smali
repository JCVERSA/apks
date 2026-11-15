.class public final Lcom/yandex/mobile/ads/impl/v80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fn0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/v80$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jj0;

.field private final b:Lcom/yandex/mobile/ads/impl/ig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ig<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
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
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/mg;",
            ")V"
        }
    .end annotation

    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickConfigurator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v80;->a:Lcom/yandex/mobile/ads/impl/jj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v80;->b:Lcom/yandex/mobile/ads/impl/ig;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/v80;->c:Lcom/yandex/mobile/ads/impl/mg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 3

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->g()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v80;->b:Lcom/yandex/mobile/ads/impl/ig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/xj0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v80;->a:Lcom/yandex/mobile/ads/impl/jj0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/v80$a;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/v80$a;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    sget-object v1, Lzfb;->a:Lzfb;

    :cond_1
    if-nez v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v80;->c:Lcom/yandex/mobile/ads/impl/mg;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v80;->b:Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/mg;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V

    :cond_3
    return-void
.end method
