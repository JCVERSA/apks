.class public final Lcom/yandex/mobile/ads/impl/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/hr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hr0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kj<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 8

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/jr0;

    invoke-direct {v5, p3}, Lcom/yandex/mobile/ads/impl/jr0;-><init>(Ljava/util/List;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/hr0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/hr0;-><init>()V

    .line 3
    new-instance v7, Lcom/yandex/mobile/ads/impl/kj;

    invoke-direct {v7, p4}, Lcom/yandex/mobile/ads/impl/kj;-><init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/lj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/ViewTreeObserver$OnPreDrawListener;Lcom/yandex/mobile/ads/impl/jr0;Lcom/yandex/mobile/ads/impl/hr0;Lcom/yandex/mobile/ads/impl/kj;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/ViewTreeObserver$OnPreDrawListener;Lcom/yandex/mobile/ads/impl/jr0;Lcom/yandex/mobile/ads/impl/hr0;Lcom/yandex/mobile/ads/impl/kj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/fr0<",
            "TT;>;>;",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            "Lcom/yandex/mobile/ads/impl/jr0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/hr0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/kj<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "designs"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "preDrawListener"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutDesignProvider"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutDesignCreator"

    invoke-static {p6, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutDesignBinder"

    invoke-static {p7, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lj;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lj;->b:Landroid/view/ViewGroup;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/lj;->c:Lcom/yandex/mobile/ads/impl/jr0;

    .line 10
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/lj;->d:Lcom/yandex/mobile/ads/impl/hr0;

    .line 11
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/lj;->e:Lcom/yandex/mobile/ads/impl/kj;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lj;->e:Lcom/yandex/mobile/ads/impl/kj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kj;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gz1;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lj;->c:Lcom/yandex/mobile/ads/impl/jr0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jr0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fr0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lj;->d:Lcom/yandex/mobile/ads/impl/hr0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lj;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/hr0;->a(Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/fr0;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lj;->e:Lcom/yandex/mobile/ads/impl/kj;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lj;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v1, v0, p1}, Lcom/yandex/mobile/ads/impl/kj;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/fr0;Lcom/yandex/mobile/ads/impl/gz1;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
