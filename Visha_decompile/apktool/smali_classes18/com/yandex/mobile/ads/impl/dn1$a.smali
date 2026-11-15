.class final Lcom/yandex/mobile/ads/impl/dn1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jj0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/dn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic c:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/go1;

.field private final b:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/yandex/mobile/ads/impl/dn1$a;

    const-string v1, "weekQrcodeContainer"

    const-string v2, "getWeekQrcodeContainer()Landroid/view/ViewGroup;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v1

    const-string v2, "weekQrcodeImageView"

    const-string v4, "getWeekQrcodeImageView()Landroid/widget/ImageView;"

    invoke-static {v0, v2, v4, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Laf5;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/dn1$a;->c:[Laf5;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ob2;)V
    .locals 1

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->k()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->a:Lcom/yandex/mobile/ads/impl/go1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->l()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->b:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->a:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v2, Lcom/yandex/mobile/ads/impl/dn1$a;->c:[Laf5;

    aget-object v1, v2, v1

    invoke-virtual {p1, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->b:Lcom/yandex/mobile/ads/impl/go1;

    aget-object v0, v2, v0

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->b:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v3, Lcom/yandex/mobile/ads/impl/dn1$a;->c:[Laf5;

    aget-object v4, v3, v0

    invoke-virtual {v2, p0, v4}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->a:Lcom/yandex/mobile/ads/impl/go1;

    aget-object v2, v3, v1

    invoke-virtual {p1, p0, v2}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/dn1$a;->b:Lcom/yandex/mobile/ads/impl/go1;

    aget-object v0, v3, v0

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method
