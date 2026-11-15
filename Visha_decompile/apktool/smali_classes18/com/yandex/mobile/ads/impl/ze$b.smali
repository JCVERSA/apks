.class final Lcom/yandex/mobile/ads/impl/ze$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ze;->b()V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/ze;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ze;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze$b;->b:Lcom/yandex/mobile/ads/impl/ze;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ze$b;->b:Lcom/yandex/mobile/ads/impl/ze;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ze;->a(Lcom/yandex/mobile/ads/impl/ze;)Lcom/yandex/mobile/ads/impl/bf;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/bf;->a()Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ze$b;->b:Lcom/yandex/mobile/ads/impl/ze;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ze;->b(Lcom/yandex/mobile/ads/impl/ze;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
