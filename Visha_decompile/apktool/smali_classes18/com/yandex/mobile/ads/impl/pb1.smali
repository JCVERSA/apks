.class public final Lcom/yandex/mobile/ads/impl/pb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/uf2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tg2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cc1;)V
    .locals 1

    const-string v0, "videoViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/tg2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/tg2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pb1;->a:Lcom/yandex/mobile/ads/impl/tg2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pb1;->a:Lcom/yandex/mobile/ads/impl/tg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tg2;->a()Z

    move-result p0

    return p0
.end method
