.class public final Lvbc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lte0;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lte0;

    sget-object v1, Lei2;->b:Lei2;

    const-string v2, "INVALID"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lte0;-><init>(Lei2;Lcom/yandex/div2/DivData;)V

    iput-object v0, p0, Lvbc;->a:Lte0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvbc;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Le74;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvbc;->a:Lte0;

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lvbc;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lei2;Lcom/yandex/div2/DivData;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvbc;->a:Lte0;

    invoke-virtual {v0}, Lte0;->b()Lei2;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvbc;->a:Lte0;

    invoke-virtual {v0}, Lte0;->a()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lte0;

    invoke-direct {v0, p1, p2}, Lte0;-><init>(Lei2;Lcom/yandex/div2/DivData;)V

    iput-object v0, p0, Lvbc;->a:Lte0;

    iget-object p1, p0, Lvbc;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le74;

    iget-object v0, p0, Lvbc;->a:Lte0;

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
