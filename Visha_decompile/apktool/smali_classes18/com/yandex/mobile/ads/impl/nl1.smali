.class public final Lcom/yandex/mobile/ads/impl/nl1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nl1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lb2;

.field private final b:Lcom/yandex/mobile/ads/impl/jj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/jj0;)V
    .locals 1

    const-string v0, "video"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageForPresentProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nl1;->a:Lcom/yandex/mobile/ads/impl/lb2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nl1;->b:Lcom/yandex/mobile/ads/impl/jj0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/af2;)V
    .locals 3

    const-string v0, "placeholderView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/af2;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/af2;->b()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nl1;->a:Lcom/yandex/mobile/ads/impl/lb2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lb2;->a()Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nl1;->b:Lcom/yandex/mobile/ads/impl/jj0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nl1;->a:Lcom/yandex/mobile/ads/impl/lb2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lb2;->a()Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p0

    new-instance v2, Lcom/yandex/mobile/ads/impl/nl1$a;

    invoke-direct {v2, v0, p1}, Lcom/yandex/mobile/ads/impl/nl1$a;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
