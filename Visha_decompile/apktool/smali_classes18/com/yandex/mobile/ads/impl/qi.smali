.class final Lcom/yandex/mobile/ads/impl/qi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/oi;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/qi;->a:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/qi;->b:I

    iput p3, p0, Lcom/yandex/mobile/ads/impl/qi;->c:I

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/qi;
    .locals 4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->k()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->k()I

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->k()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->k()I

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/qi;

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/qi;-><init>(III)V

    return-object p0
.end method


# virtual methods
.method public final getType()I
    .locals 0

    const p0, 0x68697661

    return p0
.end method
