.class public final Lcom/yandex/mobile/ads/impl/ij0$a;
.super Lcom/yandex/mobile/ads/impl/ij0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ij0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ij0;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 0

    const/high16 p0, 0x41200000    # 10.0f

    .line 6
    invoke-static {p1, p0}, Lwn8;->c(FF)F

    move-result p0

    return p0
.end method

.method public final a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/impl/ij0$d;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ij0;->a()F

    move-result p0

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result p0

    .line 3
    invoke-static {p0, p2}, Lwn8;->g(II)I

    move-result p0

    int-to-float p1, p0

    int-to-float p2, p3

    div-float/2addr p1, p2

    int-to-float p2, p4

    mul-float/2addr p2, p1

    .line 4
    invoke-static {p2}, Ls86;->c(F)I

    move-result p1

    .line 5
    new-instance p2, Lcom/yandex/mobile/ads/impl/ij0$d;

    invoke-direct {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/ij0$d;-><init>(II)V

    return-object p2
.end method
