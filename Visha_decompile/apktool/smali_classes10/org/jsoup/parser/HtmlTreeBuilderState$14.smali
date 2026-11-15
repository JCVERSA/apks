.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$14;
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

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z
    .locals 0

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/a;->s0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z
    .locals 0

    const-string p0, "tr"

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->x:[Ljava/lang/String;

    invoke-static {v1, v2}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->X()V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->F:[Ljava/lang/String;

    invoke-static {v1, v0}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->f(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_5
    const-string v2, "table"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->f(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z

    move-result p0

    return p0

    :cond_6
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->u:[Ljava/lang/String;

    invoke-static {v0, v2}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->P(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/a;->P(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    :cond_9
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->G:[Ljava/lang/String;

    invoke-static {v0, v1}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0
.end method
