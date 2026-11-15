.class public final synthetic Lfrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/qm1;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/aq0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/qm1;Lcom/yandex/mobile/ads/impl/aq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfrd;->b:Lcom/yandex/mobile/ads/impl/qm1;

    iput-object p2, p0, Lfrd;->c:Lcom/yandex/mobile/ads/impl/aq0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfrd;->b:Lcom/yandex/mobile/ads/impl/qm1;

    iget-object p0, p0, Lfrd;->c:Lcom/yandex/mobile/ads/impl/aq0;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/qm1;->c(Lcom/yandex/mobile/ads/impl/qm1;Lcom/yandex/mobile/ads/impl/aq0;)V

    return-void
.end method
