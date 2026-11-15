.class final Lcom/yandex/mobile/ads/impl/dx$s;
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
.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$s;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/lx;

    sget-object v1, Lcom/yandex/mobile/ads/impl/id1;->c:Lcom/yandex/mobile/ads/impl/id1$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$s;->b:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/id1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/id1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/id1;->b()Lcom/yandex/mobile/ads/impl/jz1;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/lx;-><init>(Lcom/yandex/mobile/ads/impl/jz1;Ljava/util/List;)V

    return-object v0
.end method
