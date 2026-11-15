.class final Lcom/yandex/mobile/ads/impl/cm2$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/cm2;->onInstreamAdBreakStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/cm2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cm2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cm2$d;->b:Lcom/yandex/mobile/ads/impl/cm2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cm2$d;->b:Lcom/yandex/mobile/ads/impl/cm2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cm2;->a(Lcom/yandex/mobile/ads/impl/cm2;)Lcom/yandex/mobile/ads/instream/InstreamAdBreakEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/instream/InstreamAdBreakEventListener;->onInstreamAdBreakStarted()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
