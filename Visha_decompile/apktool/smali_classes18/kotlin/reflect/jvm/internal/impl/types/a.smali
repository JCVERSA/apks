.class public final Lkotlin/reflect/jvm/internal/impl/types/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/a;->a:Lkotlin/reflect/jvm/internal/impl/types/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;)Z
    .locals 12

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "supertypesPolicy"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2}, Ltcb;->B(Ltm9;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Ltcb;->w(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    invoke-interface {p0, p2}, Ltcb;->Z(Lgh5;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->k()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->h()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltm9;

    const-string v4, "current"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v3}, Ltcb;->w(Ltm9;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    goto :goto_1

    :cond_3
    move-object v4, p3

    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v5

    invoke-interface {v5, v3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v3

    invoke-interface {v5, v3}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgh5;

    invoke-virtual {v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;)Ltm9;

    move-result-object v5

    invoke-interface {p0, v5}, Ltcb;->B(Ltm9;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0, v5}, Ltcb;->w(Ltm9;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-interface {p0, v5}, Ltcb;->Z(Lgh5;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many supertypes for type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Supertypes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    const/4 v1, 0x0

    :cond_b
    :goto_4
    return v1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Z
    .locals 12

    const-string p0, "state"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "start"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "end"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/a;->a:Lkotlin/reflect/jvm/internal/impl/types/a;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/a;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->k()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->h()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->i()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltm9;

    const-string v4, "current"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v3}, Ltcb;->w(Ltm9;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    goto :goto_1

    :cond_2
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;

    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$c;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object v5

    invoke-interface {v5, v3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v3

    invoke-interface {v5, v3}, Ltcb;->D(Ltbb;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgh5;

    invoke-virtual {v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lgh5;)Ltm9;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/a;->a:Lkotlin/reflect/jvm/internal/impl/types/a;

    invoke-virtual {v6, p1, v5, p3}, Lkotlin/reflect/jvm/internal/impl/types/a;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many supertypes for type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Supertypes = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->e()V

    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Z
    .locals 2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    invoke-interface {p0, p2}, Ltcb;->u0(Lgh5;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0, p2}, Ltcb;->w(Ltm9;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, p2}, Ltcb;->E(Ltm9;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p0, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ltcb;->H(Ltbb;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public final d(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Z
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/a;->e(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public final e(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltm9;)Z
    .locals 3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->j()Ltcb;

    move-result-object p0

    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->b:Z

    if-eqz v0, :cond_1

    invoke-interface {p0, p2}, Ltcb;->f(Ltm9;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p2}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object v0

    invoke-interface {p0, v0}, Ltcb;->S(Ltbb;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->l(Lgh5;)Z

    move-result v0

    :cond_0
    invoke-interface {p0, p3}, Ltcb;->f(Ltm9;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->l(Lgh5;)Z

    move-result v0

    :cond_1
    invoke-interface {p0, p3}, Ltcb;->w(Ltm9;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p0, p2}, Ltcb;->Z(Lgh5;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0, p2}, Ltcb;->f0(Lgh5;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lrr0;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lrr0;

    invoke-interface {p0, v0}, Ltcb;->N(Lrr0;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/a;->a:Lkotlin/reflect/jvm/internal/impl/types/a;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$b;

    invoke-virtual {v0, p1, p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/a;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    invoke-interface {p0, p3}, Ltcb;->Z(Lgh5;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    return v2

    :cond_6
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$d;->a:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b$d;

    invoke-virtual {v0, p1, p3, v1}, Lkotlin/reflect/jvm/internal/impl/types/a;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    invoke-interface {p0, p2}, Ltcb;->B(Ltm9;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    invoke-interface {p0, p3}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/a;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ltm9;Ltbb;)Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    return v1
.end method
