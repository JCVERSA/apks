.class final Lcom/yandex/mobile/ads/impl/dx$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/dx;-><init>(Landroid/content/Context;)V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/dx;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dx;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dx$f;->b:Lcom/yandex/mobile/ads/impl/dx;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$f;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/ur;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dx$f;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/dx;->A(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/iq;->a:Lcom/yandex/mobile/ads/impl/iq$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/iq$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/ur;-><init>(Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/iq;)V

    return-object v0
.end method
