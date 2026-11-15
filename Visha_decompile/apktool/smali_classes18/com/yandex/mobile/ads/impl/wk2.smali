.class public final Lcom/yandex/mobile/ads/impl/wk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mb2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mb2;)V
    .locals 1

    const-string v0, "wrapperAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wk2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/uk2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wk2;->a:Lcom/yandex/mobile/ads/impl/mb2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mb2;->n()Lcom/yandex/mobile/ads/impl/uk2;

    move-result-object p0

    return-object p0
.end method
