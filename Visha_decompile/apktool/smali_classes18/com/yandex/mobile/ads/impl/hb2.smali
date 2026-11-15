.class public final Lcom/yandex/mobile/ads/impl/hb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/yandex/mobile/ads/impl/hb2;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/hb2;->b:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/hb2;->c:I

    iput p3, p0, Lcom/yandex/mobile/ads/impl/hb2;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 5
    iget p0, p0, Lcom/yandex/mobile/ads/impl/hb2;->b:I

    return p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hb2;)I
    .locals 2

    .line 1
    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/hb2;->b:I

    iget v1, p1, Lcom/yandex/mobile/ads/impl/hb2;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Ly45;->l(II)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/hb2;->c:I

    iget v1, p1, Lcom/yandex/mobile/ads/impl/hb2;->c:I

    if-eq v0, v1, :cond_1

    invoke-static {v0, v1}, Ly45;->l(II)I

    move-result p0

    goto :goto_0

    .line 4
    :cond_1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/hb2;->d:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/hb2;->d:I

    invoke-static {p0, p1}, Ly45;->l(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/hb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hb2;->a(Lcom/yandex/mobile/ads/impl/hb2;)I

    move-result p0

    return p0
.end method
