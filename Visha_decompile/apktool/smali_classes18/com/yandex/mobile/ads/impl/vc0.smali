.class public final Lcom/yandex/mobile/ads/impl/vc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/va;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/yandex/mobile/ads/impl/vc0;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/yandex/mobile/ads/impl/vc0;->a:I

    return-void
.end method

.method public final a()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vc0;->b()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/vc0;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
