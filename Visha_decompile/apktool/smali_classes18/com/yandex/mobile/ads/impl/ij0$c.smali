.class public final Lcom/yandex/mobile/ads/impl/ij0$c;
.super Lcom/yandex/mobile/ads/impl/ij0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ij0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ij0;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    const p0, 0x3c23d70a    # 0.01f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-static {p1, p0, v0}, Lwn8;->j(FFF)F

    move-result p0

    return p0
.end method

.method public final a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/impl/ij0$d;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8c

    int-to-float v0, v0

    .line 2
    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p2, p2

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ij0;->a()F

    move-result p0

    mul-float/2addr p2, p0

    invoke-static {p2}, Ls86;->c(F)I

    move-result p0

    if-le p3, p0, :cond_0

    int-to-float p2, p3

    int-to-float p3, p0

    div-float/2addr p2, p3

    int-to-float p3, p4

    div-float/2addr p3, p2

    .line 4
    invoke-static {p3}, Ls86;->c(F)I

    move-result p4

    move p3, p0

    :cond_0
    if-le p4, p1, :cond_1

    int-to-float p0, p4

    int-to-float p2, p1

    div-float/2addr p0, p2

    int-to-float p2, p3

    div-float/2addr p2, p0

    .line 5
    invoke-static {p2}, Ls86;->c(F)I

    move-result p3

    goto :goto_0

    :cond_1
    move p1, p4

    .line 6
    :goto_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/ij0$d;

    invoke-direct {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/ij0$d;-><init>(II)V

    return-object p0
.end method
