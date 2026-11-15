.class public final Lct2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final b:Lxc3;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lxc3;)V
    .locals 1

    const-string v0, "divActionBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct2;->a:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p2, p0, Lct2;->b:Lxc3;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lct2;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lei2;Lcom/yandex/div2/DivData;Loj3;)Lbt2;
    .locals 5

    const-string v0, "dataTag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/yandex/div2/DivData;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lct2;->b:Lxc3;

    invoke-virtual {v1, p1, p2}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p2

    iget-object v1, p0, Lct2;->c:Ljava/util/Map;

    const-string v2, "controllers"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lei2;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lbt2;

    invoke-direct {v2, p2}, Lbt2;-><init>(Lwc3;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivTimer;

    invoke-virtual {p0, v4, p2, p3}, Lct2;->c(Lcom/yandex/div2/DivTimer;Lwc3;Loj3;)Lcom/yandex/div/core/timer/TimerController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbt2;->a(Lcom/yandex/div/core/timer/TimerController;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Lbt2;

    invoke-virtual {p0, v2, v0, p2, p3}, Lct2;->b(Lbt2;Ljava/util/List;Lwc3;Loj3;)V

    return-object v2
.end method

.method public final b(Lbt2;Ljava/util/List;Lwc3;Loj3;)V
    .locals 3

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTimer;

    iget-object v2, v1, Lcom/yandex/div2/DivTimer;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lbt2;->c(Ljava/lang/String;)Lcom/yandex/div/core/timer/TimerController;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p3, p4}, Lct2;->c(Lcom/yandex/div2/DivTimer;Lwc3;Loj3;)Lcom/yandex/div/core/timer/TimerController;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbt2;->a(Lcom/yandex/div/core/timer/TimerController;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivTimer;

    iget-object p3, p3, Lcom/yandex/div2/DivTimer;->c:Ljava/lang/String;

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lbt2;->f(Ljava/util/List;)V

    return-void
.end method

.method public final c(Lcom/yandex/div2/DivTimer;Lwc3;Loj3;)Lcom/yandex/div/core/timer/TimerController;
    .locals 1

    new-instance v0, Lcom/yandex/div/core/timer/TimerController;

    iget-object p0, p0, Lct2;->a:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/yandex/div/core/timer/TimerController;-><init>(Lcom/yandex/div2/DivTimer;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lwc3;Loj3;)V

    return-object v0
.end method
