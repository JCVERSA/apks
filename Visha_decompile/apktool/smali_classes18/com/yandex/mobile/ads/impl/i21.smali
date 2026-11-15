.class public final Lcom/yandex/mobile/ads/impl/i21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ap;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/w21;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w21;)V
    .locals 1

    const-string v0, "mraidWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i21;->a:Lcom/yandex/mobile/ads/impl/w21;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/h21;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/h21;-><init>(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i21;->a:Lcom/yandex/mobile/ads/impl/w21;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/w21;->setClickListener(Lcom/yandex/mobile/ads/impl/zo;)V

    return-void
.end method
