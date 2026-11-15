.class public final Lcom/yandex/mobile/ads/impl/ij0$b;
.super Lcom/yandex/mobile/ads/impl/ij0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ij0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    .line 5
    invoke-static {p1, p0, v0}, Lwn8;->j(FFF)F

    move-result p0

    return p0
.end method

.method public final a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/impl/ij0$d;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p2

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ij0;->a()F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ls86;->c(F)I

    move-result p0

    int-to-float p1, p0

    int-to-float p2, p3

    div-float/2addr p1, p2

    int-to-float p2, p4

    mul-float/2addr p2, p1

    .line 3
    invoke-static {p2}, Ls86;->c(F)I

    move-result p1

    .line 4
    new-instance p2, Lcom/yandex/mobile/ads/impl/ij0$d;

    invoke-direct {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/ij0$d;-><init>(II)V

    return-object p2
.end method
