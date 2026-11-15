.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method public anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z
    .locals 1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->F0(Z)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/a;->s0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->F0(Z)V

    return p0
.end method

.method public process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->k0()V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->i0()V

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->T(Lorg/jsoup/parser/Token$d;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    const-string v3, "table"

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->F()Ljava/lang/String;

    move-result-object v4

    const-string v5, "caption"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->s()V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->X()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :cond_3
    const-string v5, "colgroup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->s()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :cond_4
    const-string v6, "col"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->s()V

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/c;->k(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_5
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->u:[Ljava/lang/String;

    invoke-static {v4, v5}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->s()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :cond_6
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->v:[Ljava/lang/String;

    invoke-static {v4, v5}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->s()V

    const-string p0, "tbody"

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/c;->k(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/a;->P(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/a;->p0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->D0()V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->H0()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object p0

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    if-ne p0, v2, :cond_9

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    return v1

    :cond_9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_a
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->w:[Ljava/lang/String;

    invoke-static {v4, v3}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/a;->s0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p0

    return p0

    :cond_b
    const-string v3, "input"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->A()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->U(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :cond_e
    const-string v3, "form"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->C()Lx34;

    move-result-object p0

    if-eqz p0, :cond_f

    return v2

    :cond_f
    invoke-virtual {p2, v0, v2}, Lorg/jsoup/parser/a;->V(Lorg/jsoup/parser/Token$h;Z)Lx34;

    :goto_1
    return v1

    :cond_10
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :cond_11
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_12
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/a;->p0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->D0()V

    return v1

    :cond_13
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :cond_15
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->j()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "html"

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_16
    return v1

    :cond_17
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0
.end method
