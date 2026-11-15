.class public final Lcom/yandex/mobile/ads/impl/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0xb

    const/4 v1, -0x2

    const/16 v2, -0xc

    const/4 v3, -0x6

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/dc;->a:[I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dc;->a:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
