.class public final synthetic Ldvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/um0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/et;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldvd;->b:Lcom/yandex/mobile/ads/impl/um0;

    iput-object p2, p0, Ldvd;->c:Lcom/yandex/mobile/ads/impl/et;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldvd;->b:Lcom/yandex/mobile/ads/impl/um0;

    iget-object p0, p0, Ldvd;->c:Lcom/yandex/mobile/ads/impl/et;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/um0;->b(Lcom/yandex/mobile/ads/impl/um0;Lcom/yandex/mobile/ads/impl/et;)V

    return-void
.end method
