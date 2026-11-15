.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$16;
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

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z
    .locals 8

    const/4 v0, 0x1

    const-string v1, "select"

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->a:[I

    iget-object v3, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "html"

    const/4 v4, 0x0

    const-string v5, "optgroup"

    const-string v6, "option"

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->S(Lorg/jsoup/parser/Token$c;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_1

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->n(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->n(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    :cond_4
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->M(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    :cond_6
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->p0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->D0()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$i;->F()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v2, p0}, Lorg/jsoup/parser/a;->s0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p0

    return p0

    :cond_8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    :cond_9
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    :cond_b
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/c;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    :cond_c
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->Q(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_d
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->H:[Ljava/lang/String;

    invoke-static {v7, v0}, Lm0a;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/a;->M(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    return v4

    :cond_f
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/c;->j(Ljava/lang/String;)Z

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_10
    const-string v0, "script"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/a;->s0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p0

    return p0

    :cond_11
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :pswitch_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    :pswitch_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->T(Lorg/jsoup/parser/Token$d;)V

    :cond_12
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
