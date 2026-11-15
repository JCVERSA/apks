.class final Lcom/yandex/mobile/ads/impl/t01$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/t01;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/t92;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t92;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t01$a;->b:Lcom/yandex/mobile/ads/impl/t92;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t01$a;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t01$a;->b:Lcom/yandex/mobile/ads/impl/t92;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t01$a;->c:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/t92;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/r92;

    move-result-object p0

    return-object p0
.end method
