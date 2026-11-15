.class final Lcom/yandex/mobile/ads/impl/ih$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ih;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/ih;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ih;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ih$a;->a:Lcom/yandex/mobile/ads/impl/ih;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih$a;->a:Lcom/yandex/mobile/ads/impl/ih;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/ih;->a(Lcom/yandex/mobile/ads/impl/ih;Landroid/os/Message;)V

    return-void
.end method
