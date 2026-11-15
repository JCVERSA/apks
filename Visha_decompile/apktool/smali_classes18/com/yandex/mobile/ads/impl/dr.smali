.class public final Lcom/yandex/mobile/ads/impl/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/dr$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rt;

.field private final b:I

.field private final c:Lcom/yandex/mobile/ads/impl/h41;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;ILcom/yandex/mobile/ads/impl/h41;)V
    .locals 1

    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAdditionalViewProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dr;->a:Lcom/yandex/mobile/ads/impl/rt;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/dr;->b:I

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dr;->c:Lcom/yandex/mobile/ads/impl/h41;

    return-void
.end method

.method private final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/dr$a;Lcom/yandex/mobile/ads/impl/tt;)Landroid/widget/ImageView;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dr;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dr;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/yandex/mobile/ads/impl/dr$a;->c:Lcom/yandex/mobile/ads/impl/dr$a;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lcom/yandex/mobile/ads/impl/dr$a;->b:Lcom/yandex/mobile/ads/impl/dr$a;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/impl/dr$a;->d:Lcom/yandex/mobile/ads/impl/dr$a;

    :goto_0
    if-eqz p3, :cond_3

    if-ne v0, p2, :cond_3

    .line 9
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/tt;->d()I

    move-result p2

    .line 10
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/tt;->b()I

    move-result p3

    .line 11
    iget v0, p0, Lcom/yandex/mobile/ads/impl/dr;->b:I

    const-string v1, "container"

    if-gt v0, p2, :cond_2

    if-gt v0, p3, :cond_2

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dr;->c:Lcom/yandex/mobile/ads/impl/h41;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget p0, Lcom/yandex/mobile/ads/R$id;->icon_large:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_1

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dr;->c:Lcom/yandex/mobile/ads/impl/h41;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget p0, Lcom/yandex/mobile/ads/R$id;->icon_small:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 2

    .line 1
    const-string v0, "parentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dr;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/dr$a;->b:Lcom/yandex/mobile/ads/impl/dr$a;

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/dr;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/dr$a;Lcom/yandex/mobile/ads/impl/tt;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 2

    const-string v0, "parentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dr;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/dr$a;->c:Lcom/yandex/mobile/ads/impl/dr$a;

    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/dr;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/dr$a;Lcom/yandex/mobile/ads/impl/tt;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method
