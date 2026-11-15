.class public final Lcom/yandex/mobile/ads/impl/kr0;
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
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Lcom/yandex/mobile/ads/impl/jr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/jr0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/hr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hr0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/gr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/gr0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/jr0;Lcom/yandex/mobile/ads/impl/hr0;Lcom/yandex/mobile/ads/impl/gr0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designs"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutDesignProvider"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutDesignCreator"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutDesignBinder"

    invoke-static {p6, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kr0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kr0;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/kr0;->c:Lcom/yandex/mobile/ads/impl/jr0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/kr0;->d:Lcom/yandex/mobile/ads/impl/hr0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/kr0;->e:Lcom/yandex/mobile/ads/impl/gr0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kr0;->c:Lcom/yandex/mobile/ads/impl/jr0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kr0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jr0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fr0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kr0;->d:Lcom/yandex/mobile/ads/impl/hr0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kr0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/hr0;->a(Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/fr0;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kr0;->e:Lcom/yandex/mobile/ads/impl/gr0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kr0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v1, v0}, Lcom/yandex/mobile/ads/impl/gr0;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/fr0;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kr0;->e:Lcom/yandex/mobile/ads/impl/gr0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kr0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/gr0;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
