.class public final Lcom/yandex/mobile/ads/impl/hr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gt1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/gt1<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/gt1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gt1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/hr0;-><init>(Lcom/yandex/mobile/ads/impl/gt1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gt1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gt1<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    const-string v0, "safeLayoutInflater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hr0;->a:Lcom/yandex/mobile/ads/impl/gt1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/fr0;)Landroid/view/ViewGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/yandex/mobile/ads/impl/fr0<",
            "TV;>;)TV;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDesign"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fr0;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fr0;->d()Ljava/lang/Class;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hr0;->a:Lcom/yandex/mobile/ads/impl/gt1;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2, v1, p1}, Lcom/yandex/mobile/ads/impl/gt1;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
