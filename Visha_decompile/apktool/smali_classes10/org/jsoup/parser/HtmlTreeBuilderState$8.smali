.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$8;
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
.method public process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->S(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->u(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->m0()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n0()Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->m0()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
