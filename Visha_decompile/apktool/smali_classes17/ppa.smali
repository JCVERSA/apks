.class public final Lppa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lppa$a;
    }
.end annotation


# static fields
.field public static final a:Lppa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lppa;

    invoke-direct {v0}, Lppa;-><init>()V

    sput-object v0, Lppa;->a:Lppa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic u(Lppa;Lppa$a;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lppa;->t(Lppa$a;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;
    .locals 2

    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid token \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final b(C)Z
    .locals 0

    const/16 p0, 0x61

    if-gt p0, p1, :cond_0

    const/16 p0, 0x7b

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x41

    if-gt p0, p1, :cond_1

    const/16 p0, 0x5b

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5f

    if-ne p1, p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final c(C)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(C)Z
    .locals 0

    const/16 p0, 0x7d

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Lppa$a;Z)Z
    .locals 1

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v0

    invoke-virtual {p0, v0}, Lppa;->c(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v0

    invoke-virtual {p0, v0, p1}, Lppa;->k(CLppa$a;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result p2

    invoke-virtual {p0, p2, p1}, Lppa;->f(CLppa$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final f(CLppa$a;)Z
    .locals 0

    const/16 p0, 0x27

    if-ne p1, p0, :cond_0

    invoke-virtual {p2}, Lppa$a;->c()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(CCC)Z
    .locals 5

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    const/16 p0, 0x2e

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    goto :goto_3

    :cond_0
    const/16 p0, 0x2d

    const/16 v2, 0x2b

    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x45

    if-ne p1, v4, :cond_4

    :goto_0
    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_2

    if-eq p3, v2, :cond_2

    if-ne p3, p0, :cond_3

    :cond_2
    :goto_1
    move p0, v0

    goto :goto_3

    :cond_3
    move p0, v1

    goto :goto_3

    :cond_4
    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne p1, p0, :cond_3

    :goto_2
    if-eq p2, v3, :cond_6

    if-ne p2, v4, :cond_3

    :cond_6
    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :goto_3
    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :cond_8
    :goto_4
    return v0
.end method

.method public final h(C)Z
    .locals 0

    const/16 p0, 0x2e

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(C)Z
    .locals 1

    const/16 p0, 0x30

    const/4 v0, 0x0

    if-gt p0, p1, :cond_0

    const/16 p0, 0x3a

    if-ge p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final j(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lgpa$c$g;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lgpa$b;

    if-nez p0, :cond_1

    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lapa;

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final k(CLppa$a;)Z
    .locals 3

    const/16 p0, 0x40

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {p2, v0, p0, p1}, Lppa$a;->l(Lppa$a;IILjava/lang/Object;)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    invoke-static {p2, v0, p0, p1}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result p1

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method public final l(Ljava/util/List;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lppa;->j(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lgpa$c$g;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(C)Z
    .locals 1

    invoke-virtual {p0, p1}, Lppa;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lppa;->i(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final n(C)Z
    .locals 0

    const/16 p0, 0x20

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final o(Lppa$a;Ljava/util/List;)Z
    .locals 12

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v0

    invoke-virtual {p0, v0, p1}, Lppa;->k(CLppa$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    :goto_0
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    invoke-virtual {p0, v2}, Lppa;->c(C)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_22

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    const/16 v5, 0x7d

    if-eq v2, v5, :cond_22

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    const/16 v5, 0x3f

    if-ne v2, v5, :cond_1

    sget-object v2, Lgpa$c$d;->a:Lgpa$c$d;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_0

    :cond_1
    const/16 v5, 0x3a

    if-ne v2, v5, :cond_2

    sget-object v2, Lgpa$c$c;->a:Lgpa$c$c;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_0

    :cond_2
    const/16 v6, 0x2b

    if-ne v2, v6, :cond_5

    invoke-virtual {p0, p2}, Lppa;->l(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lgpa$c$g$c;->a:Lgpa$c$g$c;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lppa;->j(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lgpa$c$a$f$b;->a:Lgpa$c$a$f$b;

    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v6, 0x2d

    if-ne v2, v6, :cond_8

    invoke-virtual {p0, p2}, Lppa;->l(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lgpa$c$g$a;->a:Lgpa$c$g$a;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2}, Lppa;->j(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lgpa$c$a$f$a;->a:Lgpa$c$a$f$a;

    :goto_2
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_8
    const/16 v6, 0x2a

    if-ne v2, v6, :cond_9

    sget-object v2, Lgpa$c$a$c$c;->a:Lgpa$c$a$c$c;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0x2f

    if-ne v2, v6, :cond_a

    sget-object v2, Lgpa$c$a$c$a;->a:Lgpa$c$a$c$a;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x25

    if-ne v2, v6, :cond_b

    sget-object v2, Lgpa$c$a$c$b;->a:Lgpa$c$a$c$b;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x21

    const/16 v7, 0x3d

    if-ne v2, v6, :cond_f

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v7, :cond_c

    sget-object v2, Lgpa$c$a$b$b;->a:Lgpa$c$a$b$b;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v5, :cond_d

    sget-object v2, Lgpa$c$f;->a:Lgpa$c$f;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, p2}, Lppa;->l(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lgpa$c$g$b;->a:Lgpa$c$g$b;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_f
    const/16 v5, 0x26

    if-ne v2, v5, :cond_11

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v5, :cond_10

    sget-object v2, Lgpa$c$a$d$a;->a:Lgpa$c$a$d$a;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_11
    const/16 v5, 0x7c

    if-ne v2, v5, :cond_13

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v5, :cond_12

    sget-object v2, Lgpa$c$a$d$b;->a:Lgpa$c$a$d$b;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_13
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_15

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v7, :cond_14

    sget-object v2, Lgpa$c$a$a$d;->a:Lgpa$c$a$a$d;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_14
    sget-object v2, Lgpa$c$a$a$c;->a:Lgpa$c$a$a$c;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x3e

    if-ne v2, v5, :cond_17

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v7, :cond_16

    sget-object v2, Lgpa$c$a$a$b;->a:Lgpa$c$a$a$b;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_16
    sget-object v2, Lgpa$c$a$a$a;->a:Lgpa$c$a$a$a;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_17
    if-ne v2, v7, :cond_19

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v2

    if-ne v2, v7, :cond_18

    sget-object v2, Lgpa$c$a$b$a;->a:Lgpa$c$a$b$a;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lppa$a;->d(I)I

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_19
    const/16 v5, 0x28

    if-ne v2, v5, :cond_1a

    sget-object v2, Lzoa;->a:Lzoa;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x29

    if-ne v2, v5, :cond_1b

    sget-object v2, Lapa;->a:Lapa;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_1c

    sget-object v2, Lgpa$a$a;->a:Lgpa$a$a;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0x27

    if-ne v2, v5, :cond_1d

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Lppa;->u(Lppa;Lppa$a;Ljava/util/List;ZILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    invoke-virtual {p0, v2}, Lppa;->n(C)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    invoke-static {p1, v1, v3, v4}, Lppa$a;->l(Lppa$a;IILjava/lang/Object;)C

    move-result v5

    invoke-static {p1, v1, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v6

    invoke-virtual {p0, v2, v5, v6}, Lppa;->g(CCC)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0, p1, p2}, Lppa;->r(Lppa$a;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    invoke-virtual {p0, v2}, Lppa;->b(C)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0, p1, p2}, Lppa;->p(Lppa$a;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_20
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v2

    invoke-virtual {p0, v2}, Lppa;->h(C)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    sget-object v2, Lgpa$c$b;->a:Lgpa$c$b;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p0, p1}, Lppa;->a(Lppa$a;)Lcom/yandex/div/evaluable/EvaluableException;

    move-result-object p0

    throw p0

    :cond_22
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result p2

    invoke-virtual {p0, p2}, Lppa;->d(C)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-static {p1, v1, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    return v3

    :cond_23
    new-instance p0, Lcom/yandex/div/evaluable/TokenizingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'}\' expected at end of expression at "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v0, v4}, Lcom/yandex/div/evaluable/TokenizingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final p(Lppa$a;Ljava/util/List;)V
    .locals 9

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v3

    :goto_0
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v4

    invoke-virtual {p0, v4}, Lppa;->m(C)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-static {p1, v5, v6, v1}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v4

    invoke-virtual {p0, v4}, Lppa;->h(C)Z

    move-result v4

    const/4 v7, 0x2

    const-string v8, "Unexpected token: ."

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v5, v6, v1}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    sub-int/2addr v2, v3

    if-le v2, v6, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v8, v1, v7, v1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v3

    invoke-virtual {p0, v3}, Lppa;->m(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v3

    invoke-virtual {p0, v3}, Lppa;->h(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v3

    :goto_2
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v4

    invoke-virtual {p0, v4}, Lppa;->n(C)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1, v5, v6, v1}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result p0

    const/16 v4, 0x28

    if-ne p0, v4, :cond_7

    new-instance p0, Lgpa$a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v0

    :goto_3
    invoke-virtual {p1, v4, v3}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lgpa$a;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_6

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    goto :goto_4

    :cond_7
    move-object p0, v1

    :goto_4
    invoke-virtual {p1, v0, v3}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lppa;->a:Lppa;

    invoke-virtual {v2, v0, p2}, Lppa;->q(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_9

    sub-int/2addr v3, v6

    invoke-virtual {p1, v3}, Lppa$a;->a(I)C

    move-result p1

    invoke-virtual {v2, p1}, Lppa;->h(C)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {v0}, Lgpa$b$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgpa$b$b;->a(Ljava/lang/String;)Lgpa$b$b;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    invoke-direct {p0, v8, v1, v7, v1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_9
    :goto_5
    if-eqz p0, :cond_a

    sget-object p1, Lgpa$c$b;->a:Lgpa$c$b;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    const-string p0, "true"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-static {v1}, Lgpa$b$a$a;->b(Z)Z

    move-result p0

    invoke-static {p0}, Lgpa$b$a$a;->a(Z)Lgpa$b$a$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "false"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lgpa$b$a$a;->b(Z)Z

    move-result p0

    invoke-static {p0}, Lgpa$b$a$a;->a(Z)Lgpa$b$a$a;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    return v0
.end method

.method public final r(Lppa$a;Ljava/util/List;)V
    .locals 11

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v0

    invoke-static {p2}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgpa$c$g$a;

    if-eqz v1, :cond_0

    invoke-static {p2}, Ld81;->K(Ljava/util/List;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v0}, Lppa$a;->a(I)C

    move-result v5

    const/16 v6, 0x2e

    const/4 v7, 0x2

    const-string v8, "Value "

    const/16 v9, 0x2d

    if-eq v5, v6, :cond_3

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v5

    invoke-static {p1, v2, v3, v4}, Lppa$a;->l(Lppa$a;IILjava/lang/Object;)C

    move-result v6

    invoke-static {p1, v2, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v10

    invoke-virtual {p0, v5, v6, v10}, Lppa;->g(CCC)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lgpa$b$a$b;->b(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Lgpa$b$a$b;->a(Ljava/lang/Number;)Lgpa$b$a$b;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    new-instance p1, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be converted to Integer type."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4, v7, v4}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v5

    invoke-static {p1, v2, v3, v4}, Lppa$a;->l(Lppa$a;IILjava/lang/Object;)C

    move-result v6

    invoke-static {p1, v2, v3, v4}, Lppa$a;->i(Lppa$a;IILjava/lang/Object;)C

    move-result v10

    invoke-virtual {p0, v5, v6, v10}, Lppa;->g(CCC)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1, v2, v3, v4}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lgpa$b$a$b;->b(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Lgpa$b$a$b;->a(Ljava/lang/Number;)Lgpa$b$a$b;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :catch_1
    new-instance p1, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t be converted to Number type."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4, v7, v4}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final s(Lppa$a;Z)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lppa;->e(Lppa$a;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v3, v2}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lrm5;->a:Lrm5;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lppa$a;->j(II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p0, p1, v2, p2, v2}, Lrm5;->e(Lrm5;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {p0}, Lgpa$b$a$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final t(Lppa$a;Ljava/util/List;Z)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1, v1, v0, v2}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p3}, Lppa;->s(Lppa$a;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v5

    invoke-virtual {p0, v5}, Lppa;->c(C)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, "\'\'\' expected at end of string literal at "

    if-eqz v5, :cond_3

    if-nez p3, :cond_2

    if-eqz v4, :cond_1

    invoke-static {v4}, Lgpa$b$a$c;->a(Ljava/lang/String;)Lgpa$b$a$c;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/yandex/div/evaluable/TokenizingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6, v2}, Lcom/yandex/div/evaluable/TokenizingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v5

    invoke-virtual {p0, v5, p1}, Lppa;->f(CLppa$a;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v4, :cond_4

    const-string p0, ""

    invoke-static {p0}, Lgpa$b$a$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v4}, Lgpa$b$a$c;->a(Ljava/lang/String;)Lgpa$b$a$c;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v0, v2}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    return-void

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v5

    invoke-virtual {p0, v5, p1}, Lppa;->k(CLppa$a;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Ldpa;->a:Ldpa;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lgpa$b$a$c;->a(Ljava/lang/String;)Lgpa$b$a$c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v4

    invoke-virtual {p0, v4, p1}, Lppa;->k(CLppa$a;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v4}, Lppa;->o(Lppa$a;Ljava/util/List;)Z

    invoke-virtual {p0, p1, p3}, Lppa;->s(Lppa$a;Z)Ljava/lang/String;

    move-result-object v5

    if-nez p3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v8

    invoke-virtual {p0, v8, p1}, Lppa;->k(CLppa$a;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Ldpa;->a:Ldpa;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v8, Lepa;->a:Lepa;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcpa;->a:Lcpa;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_6

    invoke-static {v5}, Lgpa$b$a$c;->a(Ljava/lang/String;)Lgpa$b$a$c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lppa$a;->b()C

    move-result v4

    invoke-virtual {p0, v4, p1}, Lppa;->f(CLppa$a;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    new-instance p0, Lcom/yandex/div/evaluable/TokenizingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lppa$a;->f()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6, v2}, Lcom/yandex/div/evaluable/TokenizingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_b
    :goto_1
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p0, Lbpa;->a:Lbpa;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz p3, :cond_d

    invoke-static {p1, v1, v0, v2}, Lppa$a;->e(Lppa$a;IILjava/lang/Object;)I

    :cond_d
    return-void
.end method

.method public final v(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "this as java.lang.String).toCharArray()"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lppa;->w([C)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final w([C)Ljava/util/List;
    .locals 3

    new-instance v0, Lppa$a;

    invoke-direct {v0, p1}, Lppa$a;-><init>([C)V

    :try_start_0
    invoke-virtual {v0}, Lppa$a;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lppa;->t(Lppa$a;Ljava/util/List;Z)V
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lppa$a;->g()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Lcom/yandex/div/evaluable/TokenizingException;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error tokenizing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lg1a;->x([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    throw p0
.end method
