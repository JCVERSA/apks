.class public abstract Lcom/yandex/mobile/ads/impl/fr;
.super Lcom/yandex/mobile/ads/impl/pk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/fr$b;,
        Lcom/yandex/mobile/ads/impl/fr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/pk;"
    }
.end annotation


# instance fields
.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/yandex/mobile/ads/impl/fr$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/yandex/mobile/ads/impl/d72;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/pk;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0;Lcom/yandex/mobile/ads/impl/i52;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/fr;->b(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0;Lcom/yandex/mobile/ads/impl/i52;)V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/fr;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0;Lcom/yandex/mobile/ads/impl/i52;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/fr;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0;Lcom/yandex/mobile/ads/impl/i52;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/vw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            ")",
            "Lcom/yandex/mobile/ads/impl/vw0$b;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/fr$b;

    .line 2
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/fr$b;->a:Lcom/yandex/mobile/ads/impl/vw0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/fr$b;->b:Lcom/yandex/mobile/ads/impl/vw0$c;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/vw0;->b(Lcom/yandex/mobile/ads/impl/vw0$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/impl/d72;)V
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/d72;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fr;->j:Lcom/yandex/mobile/ads/impl/d72;

    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fr;->i:Landroid/os/Handler;

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/impl/vw0;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lffd;

    invoke-direct {v0, p0, p1}, Lffd;-><init>(Lcom/yandex/mobile/ads/impl/fr;Ljava/lang/Object;)V

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/fr$a;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/fr$a;-><init>(Lcom/yandex/mobile/ads/impl/fr;Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    new-instance v3, Lcom/yandex/mobile/ads/impl/fr$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/fr$b;-><init>(Lcom/yandex/mobile/ads/impl/vw0;Lcom/yandex/mobile/ads/impl/vw0$c;Lcom/yandex/mobile/ads/impl/fr$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fr;->i:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-interface {p2, p1, v1}, Lcom/yandex/mobile/ads/impl/vw0;->a(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/ww0;)V

    .line 11
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fr;->i:Landroid/os/Handler;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {p2, p1, v1}, Lcom/yandex/mobile/ads/impl/vw0;->a(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/h40;)V

    .line 14
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fr;->j:Lcom/yandex/mobile/ads/impl/d72;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pk;->c()Lcom/yandex/mobile/ads/impl/mi1;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lcom/yandex/mobile/ads/impl/vw0;->a(Lcom/yandex/mobile/ads/impl/vw0$c;Lcom/yandex/mobile/ads/impl/d72;Lcom/yandex/mobile/ads/impl/mi1;)V

    .line 15
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pk;->d()Z

    move-result p0

    if-nez p0, :cond_0

    .line 16
    invoke-interface {p2, v0}, Lcom/yandex/mobile/ads/impl/vw0;->b(Lcom/yandex/mobile/ads/impl/vw0$c;)V

    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/fr$b;

    .line 2
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/fr$b;->a:Lcom/yandex/mobile/ads/impl/vw0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/fr$b;->b:Lcom/yandex/mobile/ads/impl/vw0$c;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/vw0;->c(Lcom/yandex/mobile/ads/impl/vw0$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract b(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vw0;Lcom/yandex/mobile/ads/impl/i52;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/impl/vw0;",
            "Lcom/yandex/mobile/ads/impl/i52;",
            ")V"
        }
    .end annotation
.end method

.method public e()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/fr$b;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/fr$b;->a:Lcom/yandex/mobile/ads/impl/vw0;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/fr$b;->b:Lcom/yandex/mobile/ads/impl/vw0$c;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/vw0;->a(Lcom/yandex/mobile/ads/impl/vw0$c;)V

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/fr$b;->a:Lcom/yandex/mobile/ads/impl/vw0;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/fr$b;->c:Lcom/yandex/mobile/ads/impl/fr$a;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/vw0;->a(Lcom/yandex/mobile/ads/impl/ww0;)V

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/fr$b;->a:Lcom/yandex/mobile/ads/impl/vw0;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/fr$b;->c:Lcom/yandex/mobile/ads/impl/fr$a;

    invoke-interface {v2, v1}, Lcom/yandex/mobile/ads/impl/vw0;->a(Lcom/yandex/mobile/ads/impl/h40;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fr;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
