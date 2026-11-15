.class public Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$h;,
        Lcom/caverock/androidsvg/CSSParser$k;,
        Lcom/caverock/androidsvg/CSSParser$g;,
        Lcom/caverock/androidsvg/CSSParser$f;,
        Lcom/caverock/androidsvg/CSSParser$j;,
        Lcom/caverock/androidsvg/CSSParser$i;,
        Lcom/caverock/androidsvg/CSSParser$e;,
        Lcom/caverock/androidsvg/CSSParser$d;,
        Lcom/caverock/androidsvg/CSSParser$m;,
        Lcom/caverock/androidsvg/CSSParser$c;,
        Lcom/caverock/androidsvg/CSSParser$o;,
        Lcom/caverock/androidsvg/CSSParser$l;,
        Lcom/caverock/androidsvg/CSSParser$Source;,
        Lcom/caverock/androidsvg/CSSParser$n;,
        Lcom/caverock/androidsvg/CSSParser$p;,
        Lcom/caverock/androidsvg/CSSParser$b;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;
    }
.end annotation


# instance fields
.field public a:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public b:Lcom/caverock/androidsvg/CSSParser$Source;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    .line 4
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser;->a:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 5
    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser;->b:Lcom/caverock/androidsvg/CSSParser$Source;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$Source;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    return-void
.end method

.method public static a(Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    const/4 v1, -0x1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$h0;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/SVG$l0;

    if-ne p1, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static b(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 1

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$c;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$c;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/CSSParser;->c(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$c;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$c;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$g;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static h(Lcom/caverock/androidsvg/CSSParser$c;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$g;->w()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$g;->z()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static k(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z
    .locals 10

    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/CSSParser$o;->e(I)Lcom/caverock/androidsvg/CSSParser$p;

    move-result-object v0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/caverock/androidsvg/CSSParser;->n(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$p;Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$p;->a:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    if-nez p2, :cond_1

    return v3

    :cond_1
    :goto_0
    if-ltz p4, :cond_3

    add-int/lit8 p5, p2, -0x1

    invoke-static {p0, p1, p5, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->m(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;I)Z

    move-result p5

    if-eqz p5, :cond_2

    return v3

    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v1, :cond_5

    sub-int/2addr p2, v3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->m(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;I)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p3, p4, p5}, Lcom/caverock/androidsvg/CSSParser;->a(Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)I

    move-result v0

    if-gtz v0, :cond_6

    return v2

    :cond_6
    iget-object p5, p5, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    invoke-interface {p5}, Lcom/caverock/androidsvg/SVG$h0;->getChildren()Ljava/util/List;

    move-result-object p5

    sub-int/2addr v0, v3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    move-object v9, p5

    check-cast v9, Lcom/caverock/androidsvg/SVG$j0;

    add-int/lit8 v6, p2, -0x1

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move v8, p4

    invoke-static/range {v4 .. v9}, Lcom/caverock/androidsvg/CSSParser;->k(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z

    move-result p0

    return p0
.end method

.method public static l(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;Lcom/caverock/androidsvg/SVG$j0;)Z
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    check-cast v0, Lcom/caverock/androidsvg/SVG$l0;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$o;->g()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$o;->e(I)Lcom/caverock/androidsvg/CSSParser$p;

    move-result-object p1

    invoke-static {p0, p1, v3, v4, p2}, Lcom/caverock/androidsvg/CSSParser;->n(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$p;Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$o;->g()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/caverock/androidsvg/CSSParser;->k(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z

    move-result p0

    return p0
.end method

.method public static m(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;I)Z
    .locals 11

    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/CSSParser$o;->e(I)Lcom/caverock/androidsvg/CSSParser$p;

    move-result-object v0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$j0;

    invoke-static {p0, v0, p3, p4, v1}, Lcom/caverock/androidsvg/CSSParser;->n(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$p;Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$p;->a:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    if-nez p2, :cond_1

    return v4

    :cond_1
    if-lez p4, :cond_2

    add-int/lit8 v0, p2, -0x1

    add-int/lit8 p4, p4, -0x1

    invoke-static {p0, p1, v0, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->m(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_2
    return v3

    :cond_3
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v2, :cond_4

    sub-int/2addr p2, v4

    sub-int/2addr p4, v4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->m(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;I)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p3, p4, v1}, Lcom/caverock/androidsvg/CSSParser;->a(Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)I

    move-result v0

    if-gtz v0, :cond_5

    return v3

    :cond_5
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$h0;->getChildren()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/caverock/androidsvg/SVG$j0;

    add-int/lit8 v7, p2, -0x1

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    move v9, p4

    invoke-static/range {v5 .. v10}, Lcom/caverock/androidsvg/CSSParser;->k(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;ILjava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z

    move-result p0

    return p0
.end method

.method public static n(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$p;Ljava/util/List;ILcom/caverock/androidsvg/SVG$j0;)Z
    .locals 3

    iget-object p2, p1, Lcom/caverock/androidsvg/CSSParser$p;->b:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p4}, Lcom/caverock/androidsvg/SVG$l0;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return p3

    :cond_0
    iget-object p2, p1, Lcom/caverock/androidsvg/CSSParser$p;->c:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$b;

    iget-object v1, v0, Lcom/caverock/androidsvg/CSSParser$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return p3

    :cond_2
    iget-object v1, p4, Lcom/caverock/androidsvg/SVG$j0;->g:Ljava/util/List;

    if-nez v1, :cond_3

    return p3

    :cond_3
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$b;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_4
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$b;->c:Ljava/lang/String;

    iget-object v1, p4, Lcom/caverock/androidsvg/SVG$j0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_5
    iget-object p1, p1, Lcom/caverock/androidsvg/CSSParser$p;->d:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/caverock/androidsvg/CSSParser$d;

    invoke-interface {p2, p0, p4}, Lcom/caverock/androidsvg/CSSParser$d;->a(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/SVG$j0;)Z

    move-result p2

    if-nez p2, :cond_6

    return p3

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs p(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CSSParser"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$n;
    .locals 1

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$c;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser;->j(Lcom/caverock/androidsvg/CSSParser$c;)Lcom/caverock/androidsvg/CSSParser$n;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/caverock/androidsvg/CSSParser$n;Lcom/caverock/androidsvg/CSSParser$c;)V
    .locals 3

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$c;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    const-string v2, "Invalid @media rule: expected \'}\' at end of rule set"

    if-nez v1, :cond_3

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$c;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser;->a:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/CSSParser;->c(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->j(Lcom/caverock/androidsvg/CSSParser$c;)Lcom/caverock/androidsvg/CSSParser$n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/CSSParser$n;->b(Lcom/caverock/androidsvg/CSSParser$n;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->j(Lcom/caverock/androidsvg/CSSParser$c;)Lcom/caverock/androidsvg/CSSParser$n;

    :goto_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result p0

    if-nez p0, :cond_9

    const/16 p0, 0x7d

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Invalid @media rule: missing rule set"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    if-nez p1, :cond_8

    const-string p1, "import"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$c;->N()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$c;->F()Ljava/lang/String;

    move-result-object p0

    :cond_4
    if-eqz p0, :cond_7

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$c;)Ljava/util/List;

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result p0

    if-nez p0, :cond_6

    const/16 p0, 0x3b

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->k()Lr09;

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Invalid @import rule: expected string or url()"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string p1, "Ignoring @%s rule"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/caverock/androidsvg/CSSParser;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->o(Lcom/caverock/androidsvg/CSSParser$c;)V

    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    return-void

    :cond_a
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Invalid \'@\' rule"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lcom/caverock/androidsvg/CSSParser$c;)Lcom/caverock/androidsvg/SVG$Style;
    .locals 3

    new-instance p0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$c;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$c;->J()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    const/16 v2, 0x21

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    const-string v2, "important"

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVGParser$g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Malformed rule set: found unexpected \'!\'"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser;->S0(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Expected property value"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Expected \':\'"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/caverock/androidsvg/CSSParser$n;Lcom/caverock/androidsvg/CSSParser$c;)Z
    .locals 4

    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser$c;->B(Lcom/caverock/androidsvg/CSSParser$c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->g(Lcom/caverock/androidsvg/CSSParser$c;)Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$g;->A()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$o;

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$l;

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser;->b:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v2, v0, v1, v3}, Lcom/caverock/androidsvg/CSSParser$l;-><init>(Lcom/caverock/androidsvg/CSSParser$o;Lcom/caverock/androidsvg/SVG$Style;Lcom/caverock/androidsvg/CSSParser$Source;)V

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$n;->a(Lcom/caverock/androidsvg/CSSParser$l;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Malformed rule block: expected \'{\'"

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lcom/caverock/androidsvg/CSSParser$c;)Lcom/caverock/androidsvg/CSSParser$n;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$n;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$n;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$g;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$g;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$g;->f(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->e(Lcom/caverock/androidsvg/CSSParser$n;Lcom/caverock/androidsvg/CSSParser$c;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->i(Lcom/caverock/androidsvg/CSSParser$n;Lcom/caverock/androidsvg/CSSParser$c;)Z

    move-result v1
    :try_end_0
    .catch Lcom/caverock/androidsvg/CSSParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSS parser terminated early due to error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CSSParser"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public final o(Lcom/caverock/androidsvg/CSSParser$c;)V
    .locals 2

    const/4 p0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$g;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    if-nez p0, :cond_0

    :cond_3
    return-void
.end method
