.class final Lcom/yandex/mobile/ads/impl/ff$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ff;->a()V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/ff;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ff;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ff$a;->b:Lcom/yandex/mobile/ads/impl/ff;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff$a;->b:Lcom/yandex/mobile/ads/impl/ff;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ff;->c(Lcom/yandex/mobile/ads/impl/ff;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ff$a;->b:Lcom/yandex/mobile/ads/impl/ff;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ff;->a(Lcom/yandex/mobile/ads/impl/ff;)Lcom/yandex/mobile/ads/impl/bf;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/bf;->a()Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ff$a;->b:Lcom/yandex/mobile/ads/impl/ff;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ff;->b(Lcom/yandex/mobile/ads/impl/ff;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
