.class public Lwc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lwc3;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwc3;->b:Ljava/util/List;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lwc3;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwc3;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwc3;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwc3;->f:Z

    return-void
.end method

.method public static synthetic a(Lwc3;Ls74;)V
    .locals 0

    invoke-static {p0, p1}, Lwc3;->i(Lwc3;Ls74;)V

    return-void
.end method

.method public static final i(Lwc3;Ls74;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwc3;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public b(Lcom/yandex/div2/DivData;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/yandex/div2/DivData;->h:Ljava/util/List;

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lwc3;->c:Ljava/util/List;

    invoke-virtual {p0}, Lwc3;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lwc3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lwc3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lwc3;->g()V

    return-void
.end method

.method public d()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lwc3;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lwc3;->g()V

    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "warning"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc3;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lwc3;->g()V

    return-void
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc3;->f:Z

    iget-object v0, p0, Lwc3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lwc3;->j()V

    iget-object v0, p0, Lwc3;->a:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls74;

    iget-object v2, p0, Lwc3;->e:Ljava/util/List;

    iget-object v3, p0, Lwc3;->d:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Ls74;)Lqc2;
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc3;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lwc3;->j()V

    iget-object v0, p0, Lwc3;->e:Ljava/util/List;

    iget-object v1, p0, Lwc3;->d:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lvc3;

    invoke-direct {v0, p0, p1}, Lvc3;-><init>(Lwc3;Ls74;)V

    return-object v0
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lwc3;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwc3;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lwc3;->e:Ljava/util/List;

    iget-object v1, p0, Lwc3;->c:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lwc3;->e:Ljava/util/List;

    iget-object v1, p0, Lwc3;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwc3;->f:Z

    return-void
.end method
