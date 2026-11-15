.class public final synthetic Lxpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/p61;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/q61;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxpd;->b:Lcom/yandex/mobile/ads/impl/p61;

    iput-object p2, p0, Lxpd;->c:Lcom/yandex/mobile/ads/impl/q61;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxpd;->b:Lcom/yandex/mobile/ads/impl/p61;

    iget-object p0, p0, Lxpd;->c:Lcom/yandex/mobile/ads/impl/q61;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/p61;->c(Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/q61;)V

    return-void
.end method
