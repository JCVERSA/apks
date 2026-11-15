.class public final Lcom/yandex/mobile/ads/impl/m31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/m31$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sj0;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m31;->a:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m31;->b:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lcom/yandex/mobile/ads/impl/l31;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/m31$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/m31$a;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/fk0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m31;->a:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m31;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/fk0;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/l31;

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/l31;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/fk0;)V

    return-object p0
.end method
