.class final Lcom/yandex/mobile/ads/impl/l7$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/l7;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e7;)V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/l7;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l7;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l7$a;->b:Lcom/yandex/mobile/ads/impl/l7;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/q7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/q7;-><init>(I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l7$a;->b:Lcom/yandex/mobile/ads/impl/l7;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/l7;->a(Lcom/yandex/mobile/ads/impl/l7;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/q7;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p7;

    move-result-object p0

    return-object p0
.end method
