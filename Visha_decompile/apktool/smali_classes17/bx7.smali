.class public final Lbx7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbx7$a;
    }
.end annotation


# static fields
.field public static final a:Lbx7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbx7;

    invoke-direct {v0}, Lbx7;-><init>()V

    sput-object v0, Lbx7;->a:Lbx7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lbx7;Lbx7$a;Lcom/yandex/div/evaluable/a;ILjava/lang/Object;)Lcom/yandex/div/evaluable/a;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lbx7;->b(Lbx7$a;Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p0, p1}, Lbx7;->e(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$d$a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->b()I

    invoke-virtual {p0, p1}, Lbx7;->e(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/evaluable/a$a;

    sget-object v3, Lgpa$c$a$d$a;->a:Lgpa$c$a$d$a;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Lbx7$a;Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p1}, Lbx7$a;->d()Z

    move-result v0

    const-string v1, "Expression expected"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v0

    if-eqz p2, :cond_1

    instance-of v4, v0, Lgpa$a;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "Method expected after ."

    invoke-direct {p0, p1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_1
    :goto_0
    instance-of v4, v0, Lgpa$b$a;

    if-eqz v4, :cond_2

    new-instance p0, Lcom/yandex/div/evaluable/a$j;

    check-cast v0, Lgpa$b$a;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/yandex/div/evaluable/a$j;-><init>(Lgpa$b$a;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    instance-of v4, v0, Lgpa$b$b;

    if-eqz v4, :cond_3

    new-instance p0, Lcom/yandex/div/evaluable/a$k;

    check-cast v0, Lgpa$b$b;

    invoke-virtual {v0}, Lgpa$b$b;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v3}, Lcom/yandex/div/evaluable/a$k;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    instance-of v4, v0, Lgpa$a;

    if-eqz v4, :cond_4

    check-cast v0, Lgpa$a;

    invoke-virtual {p0, v0, p1, p2}, Lbx7;->l(Lgpa$a;Lbx7$a;Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    goto :goto_3

    :cond_4
    instance-of p2, v0, Lzoa;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object p1

    instance-of p1, p1, Lapa;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "\')\' expected after expression"

    invoke-direct {p0, p1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_6
    instance-of p2, v0, Ldpa;

    if-eqz p2, :cond_b

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lbpa;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lepa;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lcpa;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lbx7$a;->b()I

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object p0

    instance-of p0, p0, Lbpa;

    if-eqz p0, :cond_a

    new-instance p0, Lcom/yandex/div/evaluable/a$f;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/yandex/div/evaluable/a$f;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_3
    return-object p0

    :cond_a
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "expected \'\'\' at end of a string template"

    invoke-direct {p0, p1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v1, v3, v2, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final d(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p0, p1}, Lbx7;->m(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v1

    invoke-virtual {p0, p1}, Lbx7;->m(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v2

    new-instance v3, Lcom/yandex/div/evaluable/a$a;

    const-string v4, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary"

    invoke-static {v1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lgpa$c$a;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final e(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p0, p1}, Lbx7;->d(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$b;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v1

    invoke-virtual {p0, p1}, Lbx7;->d(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v2

    new-instance v3, Lcom/yandex/div/evaluable/a$a;

    const-string v4, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary"

    invoke-static {v1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lgpa$c$a;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final f(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 3

    invoke-virtual {p0, p1}, Lbx7;->i(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$e;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->b()I

    new-instance v1, Lcom/yandex/div/evaluable/a$a;

    sget-object v2, Lgpa$c$a$e;->a:Lgpa$c$a$e;

    invoke-virtual {p0, p1}, Lbx7;->o(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final g(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 6

    invoke-virtual {p0, p1}, Lbx7;->n(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v2

    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lgpa$c$d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbx7$a;->b()I

    invoke-virtual {p0, p1}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v3

    invoke-virtual {p1}, Lbx7$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lgpa$c$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbx7$a;->b()I

    invoke-virtual {p0, p1}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v4

    new-instance p0, Lcom/yandex/div/evaluable/a$g;

    sget-object v1, Lgpa$c$e;->a:Lgpa$c$e;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/evaluable/a$g;-><init>(Lgpa$c;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "\':\' expected in ternary-if-else expression"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_1
    return-object v2
.end method

.method public final h(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p0, p1}, Lbx7;->o(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$c;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/evaluable/a$a;

    const-string v3, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lgpa$c$a;

    invoke-virtual {p0, p1}, Lbx7;->o(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v3

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final i(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lbx7;->c(Lbx7;Lbx7$a;Lcom/yandex/div/evaluable/a;ILjava/lang/Object;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$b;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->b()I

    invoke-virtual {p0, p1, v0}, Lbx7;->b(Lbx7$a;Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final j(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p0, p1}, Lbx7;->a(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$d$b;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->b()I

    invoke-virtual {p0, p1}, Lbx7;->a(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/evaluable/a$a;

    sget-object v3, Lgpa$c$a$d$b;->a:Lgpa$c$a$d$b;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final k(Ljava/util/List;Ljava/lang/String;)Lcom/yandex/div/evaluable/a;
    .locals 4

    const-string v0, "tokens"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawExpression"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "Expression expected"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lbx7$a;

    invoke-direct {v0, p1, p2}, Lbx7$a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    invoke-virtual {v0}, Lbx7$a;->e()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final l(Lgpa$a;Lbx7$a;Lcom/yandex/div/evaluable/a;)Lcom/yandex/div/evaluable/a;
    .locals 4

    invoke-virtual {p2}, Lbx7$a;->f()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lzoa;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lbx7$a;->a()Lgpa;

    move-result-object v3

    instance-of v3, v3, Lapa;

    if-nez v3, :cond_1

    invoke-virtual {p0, p2}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lbx7$a;->a()Lgpa;

    move-result-object v3

    instance-of v3, v3, Lgpa$a$a;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lbx7$a;->b()I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lbx7$a;->f()Lgpa;

    move-result-object p0

    instance-of p0, p0, Lapa;

    if-eqz p0, :cond_3

    if-nez p3, :cond_2

    new-instance p0, Lcom/yandex/div/evaluable/a$c;

    invoke-virtual {p2}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/div/evaluable/a$c;-><init>(Lgpa$a;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/yandex/div/evaluable/a$e;

    invoke-virtual {p2}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/div/evaluable/a$e;-><init>(Lgpa$a;Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "expected \')\' after a function call"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    const-string p1, "\'(\' expected after function call"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final m(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 5

    invoke-virtual {p0, p1}, Lbx7;->h(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$a$f;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/evaluable/a$a;

    const-string v3, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Binary"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lgpa$c$a;

    invoke-virtual {p0, p1}, Lbx7;->h(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v3

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/yandex/div/evaluable/a$a;-><init>(Lgpa$c$a;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final n(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 4

    invoke-virtual {p0, p1}, Lbx7;->j(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$f;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v1

    invoke-virtual {p0, p1}, Lbx7;->g(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    new-instance v2, Lcom/yandex/div/evaluable/a$h;

    const-string v3, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator.Try"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lgpa$c$f;

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, v0, p0, p1}, Lcom/yandex/div/evaluable/a$h;-><init>(Lgpa$c$f;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final o(Lbx7$a;)Lcom/yandex/div/evaluable/a;
    .locals 3

    invoke-virtual {p1}, Lbx7$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbx7$a;->a()Lgpa;

    move-result-object v0

    instance-of v0, v0, Lgpa$c$g;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbx7$a;->f()Lgpa;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/evaluable/a$i;

    const-string v2, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Token.Operator"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgpa$c;

    invoke-virtual {p0, p1}, Lbx7;->o(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object p0

    invoke-virtual {p1}, Lbx7$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/yandex/div/evaluable/a$i;-><init>(Lgpa$c;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lbx7;->f(Lbx7$a;)Lcom/yandex/div/evaluable/a;

    move-result-object v1

    :goto_0
    return-object v1
.end method
