.class public final synthetic Lcom/yandex/mobile/ads/impl/dp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/a32;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/a32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dp2;->b:Lcom/yandex/mobile/ads/impl/a32;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dp2;->b:Lcom/yandex/mobile/ads/impl/a32;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32$b;->b(Lcom/yandex/mobile/ads/impl/a32;)V

    return-void
.end method
