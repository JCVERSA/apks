.class final Lcom/yandex/mobile/ads/impl/fh2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/hh2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hh2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh2;->b:Lcom/yandex/mobile/ads/impl/hh2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh2;->b:Lcom/yandex/mobile/ads/impl/hh2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh2;->a(Lcom/yandex/mobile/ads/impl/hh2;)Le74;

    move-result-object p0

    sget-object v0, Lcom/yandex/mobile/ads/impl/dy$c;->a:Lcom/yandex/mobile/ads/impl/dy$c;

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
