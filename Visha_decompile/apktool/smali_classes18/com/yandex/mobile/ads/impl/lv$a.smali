.class final Lcom/yandex/mobile/ads/impl/lv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/eu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/lv;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lv$a;->a:Lcom/yandex/mobile/ads/impl/lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeftApplication()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lv$a;->a:Lcom/yandex/mobile/ads/impl/lv;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lv;->a(Lcom/yandex/mobile/ads/impl/lv;)Lcom/yandex/mobile/ads/impl/t8;

    move-result-object p0

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lv$a;->a:Lcom/yandex/mobile/ads/impl/lv;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lv;->a(Lcom/yandex/mobile/ads/impl/lv;)Lcom/yandex/mobile/ads/impl/t8;

    move-result-object p0

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    return-void
.end method
