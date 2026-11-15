.class final Lcom/yandex/mobile/ads/impl/yd2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/yd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yandex/mobile/ads/impl/yd2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yd2;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "requestListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->a:Lcom/yandex/mobile/ads/impl/dq1;

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yd2;->b(Lcom/yandex/mobile/ads/impl/yd2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/g50;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/g50;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->a:Lcom/yandex/mobile/ads/impl/dq1;

    .line 4
    const-string v1, "error"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Ad request completed successfully, but there are no ads available."

    .line 6
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/sb2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/sb2;-><init>(ILjava/lang/String;)V

    .line 7
    invoke-interface {p0, v1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->a:Lcom/yandex/mobile/ads/impl/dq1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/yd2;->b(Lcom/yandex/mobile/ads/impl/yd2;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 9
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/yd2$a;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yd2;->c(Lcom/yandex/mobile/ads/impl/yd2;)Lcom/yandex/mobile/ads/impl/xd2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xd2;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/wd2;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yd2;->b(Lcom/yandex/mobile/ads/impl/yd2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wd2;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/wd2;->b()Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/yd2$a;->a()V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/yd2;->d(Lcom/yandex/mobile/ads/impl/yd2;)Lcom/yandex/mobile/ads/impl/sk2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yd2$a;->b:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/yd2;->a(Lcom/yandex/mobile/ads/impl/yd2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/yandex/mobile/ads/impl/sk2;->a(Landroid/content/Context;Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V

    :goto_0
    return-void
.end method
