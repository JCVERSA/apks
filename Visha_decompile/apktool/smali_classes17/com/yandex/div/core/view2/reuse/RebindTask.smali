.class public final Lcom/yandex/div/core/view2/reuse/RebindTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/reuse/RebindTask$a;,
        Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;
    }
.end annotation


# static fields
.field public static final m:Lcom/yandex/div/core/view2/reuse/RebindTask$a;


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Lrg2;

.field public final c:Loj3;

.field public final d:Loj3;

.field public final e:Lcom/yandex/div/core/view2/reuse/a;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/Map;

.field public k:Z

.field public final l:Lxu8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/reuse/RebindTask$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/reuse/RebindTask$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/reuse/RebindTask;->m:Lcom/yandex/div/core/view2/reuse/RebindTask$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lrg2;Loj3;Loj3;Lcom/yandex/div/core/view2/reuse/a;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->b:Lrg2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->c:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->d:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->i:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->j:Ljava/util/Map;

    new-instance p1, Lxu8;

    invoke-direct {p1}, Lxu8;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->l:Lxu8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Landroid/view/ViewGroup;)Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/Div2View;->stateToBind(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->c:Loj3;

    invoke-static {p1, v1}, Lbh2;->t(Lcom/yandex/div2/Div;Loj3;)Lzl2;

    move-result-object p1

    new-instance v1, Lcom/yandex/div/core/view2/reuse/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p3, v2}, Lcom/yandex/div/core/view2/reuse/b;-><init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/Div2View;->stateToBind(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p2, Lo07;

    iget-object p3, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->d:Loj3;

    invoke-static {p1, p3}, Lbh2;->t(Lcom/yandex/div2/Div;Loj3;)Lzl2;

    move-result-object p1

    invoke-direct {p2, p1, v0, v2}, Lo07;-><init>(Lzl2;ILcom/yandex/div/core/view2/reuse/b;)V

    invoke-virtual {v1, p2}, Lfpa;->e(Lfpa;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/yandex/div/core/view2/reuse/RebindTask;->e(Lcom/yandex/div/core/view2/reuse/b;Lo07;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/reuse/RebindTask;->c(Lcom/yandex/div/core/view2/reuse/b;)V

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/reuse/RebindTask;->d(Lo07;)V

    :goto_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->i:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo07;

    invoke-virtual {p2}, Lo07;->g()Lcom/yandex/div/core/view2/reuse/b;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    invoke-interface {p0}, Lcom/yandex/div/core/view2/reuse/a;->w()V

    return v0

    :cond_3
    iget-object p3, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->l:Lxu8;

    invoke-virtual {p3, p2}, Lxu8;->g(Lcom/yandex/div/core/view2/reuse/b;)Z

    iget-object p3, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    invoke-interface {p0}, Lcom/yandex/div/core/view2/reuse/a;->s()V

    return v0

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    invoke-interface {p0}, Lcom/yandex/div/core/view2/reuse/a;->s()V

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->k:Z

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->l:Lxu8;

    invoke-virtual {v0}, Lxu8;->b()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final c(Lcom/yandex/div/core/view2/reuse/b;)V
    .locals 2

    invoke-virtual {p1}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->j:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/yandex/div/core/view2/reuse/b;->g(Lcom/yandex/div/core/view2/reuse/b;Lcom/yandex/div/core/view2/reuse/b;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/view2/reuse/b;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->c(Lcom/yandex/div/core/view2/reuse/b;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final d(Lo07;)V
    .locals 11

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div/core/view2/reuse/b;

    invoke-virtual {v3, p1}, Lfpa;->e(Lfpa;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/yandex/div/core/view2/reuse/b;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/core/view2/reuse/RebindTask;->e(Lcom/yandex/div/core/view2/reuse/b;Lo07;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div/core/view2/reuse/b;

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v3, Lhh2;->a:Lhh2;

    invoke-virtual {v2}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v4

    invoke-virtual {p1}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v5

    iget-object v6, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->c:Loj3;

    iget-object v7, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->d:Loj3;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lhh2;->f(Lhh2;Log2;Log2;Loj3;Loj3;Lih2;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lno8;->a(Lcom/yandex/div/core/view2/reuse/b;Lo07;)Lcom/yandex/div/core/view2/reuse/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Lo07;->f()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo07;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->d(Lo07;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final e(Lcom/yandex/div/core/view2/reuse/b;Lo07;)V
    .locals 6

    invoke-static {p1, p2}, Lno8;->a(Lcom/yandex/div/core/view2/reuse/b;Lo07;)Lcom/yandex/div/core/view2/reuse/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo07;->i(Lcom/yandex/div/core/view2/reuse/b;)V

    invoke-virtual {p2}, Lo07;->f()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/reuse/b;->f(Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/view2/reuse/b;

    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo07;

    invoke-virtual {v5, v2}, Lfpa;->e(Lfpa;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    check-cast v4, Lo07;

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, v4}, Lcom/yandex/div/core/view2/reuse/RebindTask;->e(Lcom/yandex/div/core/view2/reuse/b;Lo07;)V

    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->l:Lxu8;

    invoke-virtual {p1, v0}, Lxu8;->a(Lcom/yandex/div/core/view2/reuse/b;)V

    :goto_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/view2/reuse/b;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->c(Lcom/yandex/div/core/view2/reuse/b;)V

    goto :goto_3

    :cond_5
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo07;

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/reuse/RebindTask;->d(Lo07;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->k:Z

    return p0
.end method

.method public final g()Lxu8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->l:Lxu8;

    return-object p0
.end method

.method public final h(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Landroid/view/ViewGroup;Lcom/yandex/div/core/state/DivStatePath;)Z
    .locals 1

    const-string v0, "oldDivData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newDivData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->k:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/reuse/RebindTask;->a(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Landroid/view/ViewGroup;)Z

    move-result p1
    :try_end_0
    .catch Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    invoke-interface {p2, p1}, Lcom/yandex/div/core/view2/reuse/a;->t(Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;)V

    move p1, v0

    :goto_0
    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/yandex/div/core/view2/reuse/RebindTask;->i(Lcom/yandex/div/core/state/DivStatePath;)Z

    move-result p0

    return p0
.end method

.method public final i(Lcom/yandex/div/core/state/DivStatePath;)Z
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->l:Lxu8;

    invoke-virtual {v0}, Lxu8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    invoke-interface {p0}, Lcom/yandex/div/core/view2/reuse/a;->n()V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/reuse/b;

    invoke-virtual {v1}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/yandex/div/core/view2/reuse/RebindTask;->j(Lcom/yandex/div2/Div;Landroid/view/View;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/reuse/b;

    invoke-virtual {v1}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/yandex/div/core/view2/reuse/RebindTask;->j(Lcom/yandex/div2/Div;Landroid/view/View;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/reuse/b;

    iget-object v2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->h()Lcom/yandex/div/core/view2/reuse/b;

    move-result-object v3

    invoke-static {v2, v3}, Li81;->d0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v2

    :cond_4
    iget-object v3, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->b:Lrg2;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1, p1}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/reuse/b;

    iget-object v2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->f:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->h()Lcom/yandex/div/core/view2/reuse/b;

    move-result-object v3

    invoke-static {v2, v3}, Li81;->d0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->getBindingContext$div_release()Lcom/yandex/div/core/view2/a;

    move-result-object v2

    :cond_7
    iget-object v3, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->b:Lrg2;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/reuse/b;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1, p1}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/reuse/RebindTask;->b()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->e:Lcom/yandex/div/core/view2/reuse/a;

    invoke-interface {p0}, Lcom/yandex/div/core/view2/reuse/a;->b()V

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lcom/yandex/div2/Div;Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/yandex/div2/Div$c;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/yandex/div2/Div$r;

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/RebindTask;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object p0

    invoke-virtual {p0, p2}, Lzr8;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method
