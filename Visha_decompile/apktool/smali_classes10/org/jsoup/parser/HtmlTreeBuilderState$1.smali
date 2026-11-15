.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$1;
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
    .locals 4

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->T(Lorg/jsoup/parser/Token$d;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Lorg/jsoup/parser/Token$e;

    move-result-object p0

    new-instance p1, Lorg/jsoup/nodes/f;

    iget-object v1, p2, Lorg/jsoup/parser/c;->h:Ltw7;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltw7;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$e;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/f;->h0(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->B()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$e;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->B()Lorg/jsoup/nodes/Document;

    move-result-object p0

    sget-object p1, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document;->B1(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    :cond_2
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    return v0

    :cond_3
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->I0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method
