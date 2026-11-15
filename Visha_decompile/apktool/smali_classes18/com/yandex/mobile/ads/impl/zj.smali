.class public abstract Lcom/yandex/mobile/ads/impl/zj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gh1$b;
.implements Lcom/yandex/mobile/ads/impl/ro;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/gh1$b;",
        "Lcom/yandex/mobile/ads/impl/ro;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/gh1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/gh1;->h:Lcom/yandex/mobile/ads/impl/gh1$a;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/gh1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/gh1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/zj;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gh1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gh1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/gh1;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneStateTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zj;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zj;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/zj;->c:Lcom/yandex/mobile/ads/impl/gh1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zj;->b()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/o8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zj;->b:Lcom/yandex/mobile/ads/impl/o8;

    return-object p0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zj;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zj;->c:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gh1;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zj;->c:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/gh1;->a(Lcom/yandex/mobile/ads/impl/gh1$b;)V

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zj;->c:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/gh1;->b(Lcom/yandex/mobile/ads/impl/gh1$b;)V

    return-void
.end method
