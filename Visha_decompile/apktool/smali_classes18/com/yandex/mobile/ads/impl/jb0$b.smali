.class final Lcom/yandex/mobile/ads/impl/jb0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ee2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/jb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/we2;

.field private final c:Lcom/yandex/mobile/ads/impl/za1;

.field private final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/dw;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/we2;Lcom/yandex/mobile/ads/impl/za1;Ljava/util/Iterator;Lcom/yandex/mobile/ads/impl/dw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/g5;",
            "Lcom/yandex/mobile/ads/impl/we2;",
            "Lcom/yandex/mobile/ads/impl/za1;",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            ")V"
        }
    .end annotation

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoLoadListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoCacheManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlToRequests"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->a:Lcom/yandex/mobile/ads/impl/g5;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->b:Lcom/yandex/mobile/ads/impl/we2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->c:Lcom/yandex/mobile/ads/impl/za1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->d:Ljava/util/Iterator;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->e:Lcom/yandex/mobile/ads/impl/dw;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Lcom/yandex/mobile/ads/impl/jb0$b;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->a:Lcom/yandex/mobile/ads/impl/g5;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->b:Lcom/yandex/mobile/ads/impl/we2;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->c:Lcom/yandex/mobile/ads/impl/za1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->d:Ljava/util/Iterator;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->e:Lcom/yandex/mobile/ads/impl/dw;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/jb0$b;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/we2;Lcom/yandex/mobile/ads/impl/za1;Ljava/util/Iterator;Lcom/yandex/mobile/ads/impl/dw;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->c:Lcom/yandex/mobile/ads/impl/za1;

    invoke-virtual {p0, v1, v8, v0}, Lcom/yandex/mobile/ads/impl/za1;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ee2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0$b;->e:Lcom/yandex/mobile/ads/impl/dw;

    sget-object v0, Lcom/yandex/mobile/ads/impl/cw;->f:Lcom/yandex/mobile/ads/impl/cw;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dw;->a(Lcom/yandex/mobile/ads/impl/cw;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jb0$b;->a()V

    return-void
.end method
