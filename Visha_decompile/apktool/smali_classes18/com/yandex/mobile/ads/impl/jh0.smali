.class public final Lcom/yandex/mobile/ads/impl/jh0;
.super Lcom/yandex/mobile/ads/impl/h42;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/yandex/mobile/ads/impl/hh0;

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;II)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    iput p3, p0, Lcom/yandex/mobile/ads/impl/jh0;->f:I

    iput p4, p0, Lcom/yandex/mobile/ads/impl/jh0;->g:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/h42;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jh0;->e:Lcom/yandex/mobile/ads/impl/hh0;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/jh0;->f:I

    iget p0, p0, Lcom/yandex/mobile/ads/impl/jh0;->g:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/hh0;->a(IIZ)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
