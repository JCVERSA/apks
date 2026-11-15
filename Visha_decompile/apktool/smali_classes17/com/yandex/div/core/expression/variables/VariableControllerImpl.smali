.class public Lcom/yandex/div/core/expression/variables/VariableControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsnb;


# instance fields
.field public final a:Lsnb;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Le74;

.field public final h:Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;


# direct methods
.method public constructor <init>(Lsnb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->d:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->e:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->f:Ljava/util/Map;

    .line 8
    new-instance p1, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$notifyVariableChangedCallback$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$notifyVariableChangedCallback$1;-><init>(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;)V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->g:Le74;

    .line 9
    new-instance p1, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;-><init>(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;)V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->h:Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;

    return-void
.end method

.method public synthetic constructor <init>(Lsnb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;-><init>(Lsnb;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->x(Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V

    return-void
.end method

.method public static synthetic l(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Ljava/lang/String;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->u(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Ljava/lang/String;Le74;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->w(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V

    return-void
.end method

.method public static final synthetic n(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic o(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Lqnb;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->r(Lqnb;)V

    return-void
.end method

.method public static final u(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Ljava/lang/String;Le74;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->t(Ljava/lang/String;Le74;)V

    return-void
.end method

.method public static final w(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V
    .locals 1

    const-string v0, "$names"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$disposables"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->t(Ljava/lang/String;Le74;)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqc2;

    invoke-interface {p1}, Lqc2;->close()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final x(Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V
    .locals 2

    const-string v0, "$names"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd7;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lqd7;->p(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lqnb;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqnb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldob;

    invoke-interface {v0, p1}, Ldob;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/util/List;ZLe74;)Lqc2;
    .locals 5

    const-string v0, "names"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    invoke-interface {v3, v2, v4, p2, p3}, Lsnb;->h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v4, p2, p3}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->v(Ljava/lang/String;Lwc3;ZLe74;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lvnb;

    invoke-direct {p2, p1, v0, p0, p3}, Lvnb;-><init>(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V

    return-object p2
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldob;

    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->g:Le74;

    invoke-interface {v1, v2}, Ldob;->f(Le74;)V

    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->h:Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;

    invoke-interface {v1, v2}, Ldob;->d(Lfu1;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldob;

    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->g:Le74;

    invoke-interface {v1, v2}, Ldob;->e(Le74;)V

    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->g:Le74;

    invoke-interface {v1, v2}, Ldob;->c(Le74;)V

    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->h:Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;

    invoke-interface {v1, v2}, Ldob;->b(Lfu1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;Le74;)Lqc2;
    .locals 4

    const-string v0, "names"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lqd7;

    invoke-direct {v3}, Lqd7;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Lqd7;

    invoke-virtual {v3, p2}, Lqd7;->j(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lunb;

    invoke-direct {v0, p1, p0, p2}, Lunb;-><init>(Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqnb;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lwnb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcob;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    invoke-interface {p0, p1, p2, p3, p4}, Lsnb;->h(Ljava/lang/String;Lwc3;ZLe74;)Lqc2;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->v(Ljava/lang/String;Lwc3;ZLe74;)V

    new-instance p2, Ltnb;

    invoke-direct {p2, p0, p1, p4}, Ltnb;-><init>(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Ljava/lang/String;Le74;)V

    move-object p0, p2

    :goto_1
    return-object p0
.end method

.method public i(Lqnb;)V
    .locals 2

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqnb;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->s(Lqnb;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/yandex/div/data/VariableDeclarationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lqnb;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already declared!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/data/VariableDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public j(Loj3;Le74;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a:Lsnb;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;

    invoke-direct {v1, p0, p2}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl$setOnAnyVariableChangeCallback$1;-><init>(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V

    invoke-interface {v0, p1, v1}, Lsnb;->j(Loj3;Le74;)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;Le74;)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lqd7;

    invoke-direct {v0}, Lqd7;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v0, Lqd7;

    invoke-virtual {v0, p2}, Lqd7;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public q(Ldob;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->g:Le74;

    invoke-interface {p1, v0}, Ldob;->e(Le74;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->h:Lcom/yandex/div/core/expression/variables/VariableControllerImpl$a;

    invoke-interface {p1, v0}, Ldob;->b(Lfu1;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Lqnb;)V
    .locals 2

    invoke-static {}, Lxi;->c()V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le74;

    invoke-interface {v1, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lqnb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd7;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le74;

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final s(Lqnb;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->g:Le74;

    invoke-virtual {p1, v0}, Lqnb;->a(Le74;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->r(Lqnb;)V

    return-void
.end method

.method public final t(Ljava/lang/String;Le74;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd7;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lqd7;->p(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;Lwc3;ZLe74;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, v0}, Lmx7;->p(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lwc3;->e(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->p(Ljava/lang/String;Le74;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lxi;->c()V

    invoke-interface {p4, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p4}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->p(Ljava/lang/String;Le74;)V

    return-void
.end method
