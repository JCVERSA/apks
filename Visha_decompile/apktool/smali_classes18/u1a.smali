.class public Lu1a;
.super Ldn6;
.source "SourceFile"


# instance fields
.field public final b:Lqq6;

.field public final c:Lo54;


# direct methods
.method public constructor <init>(Lqq6;Lo54;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldn6;-><init>()V

    iput-object p1, p0, Lu1a;->b:Lqq6;

    iput-object p2, p0, Lu1a;->c:Lo54;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Set;
    .locals 0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public g(Lu82;Le74;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lu82;->c:Lu82$a;

    invoke-virtual {v0}, Lu82$a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lu82;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_0
    iget-object v0, p0, Lu1a;->c:Lo54;

    invoke-virtual {v0}, Lo54;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lu82;->l()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lt82$b;->a:Lt82$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_1
    iget-object p1, p0, Lu1a;->b:Lqq6;

    iget-object v0, p0, Lu1a;->c:Lo54;

    invoke-interface {p1, v0, p2}, Lqq6;->i(Lo54;Le74;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo54;

    invoke-virtual {v1}, Lo54;->g()Lby6;

    move-result-object v1

    const-string v2, "subFqName.shortName()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lu1a;->h(Lby6;)Lpv7;

    move-result-object v1

    invoke-static {v0, v1}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final h(Lby6;)Lpv7;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lby6;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lu1a;->b:Lqq6;

    iget-object p0, p0, Lu1a;->c:Lo54;

    invoke-virtual {p0, p1}, Lo54;->c(Lby6;)Lo54;

    move-result-object p0

    const-string p1, "fqName.child(name)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lqq6;->C(Lo54;)Lpv7;

    move-result-object p0

    invoke-interface {p0}, Lpv7;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subpackages of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu1a;->c:Lo54;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu1a;->b:Lqq6;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
