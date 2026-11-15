.class public Lcom/caverock/androidsvg/CSSParser$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->a:I

    iput p2, p0, Lcom/caverock/androidsvg/CSSParser$e;->b:I

    iput-boolean p3, p0, Lcom/caverock/androidsvg/CSSParser$e;->c:Z

    iput-boolean p4, p0, Lcom/caverock/androidsvg/CSSParser$e;->d:Z

    iput-object p5, p0, Lcom/caverock/androidsvg/CSSParser$e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/SVG$j0;)Z
    .locals 6

    iget-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$l0;->n()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->e:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$h0;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$l0;

    check-cast v5, Lcom/caverock/androidsvg/SVG$j0;

    if-ne v5, p2, :cond_2

    move v3, v4

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$l0;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v3, v1

    move v4, v2

    :cond_5
    iget-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->c:Z

    if-eqz p1, :cond_6

    add-int/2addr v3, v2

    goto :goto_2

    :cond_6
    sub-int v3, v4, v3

    :goto_2
    iget p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->a:I

    if-nez p1, :cond_8

    iget p0, p0, Lcom/caverock/androidsvg/CSSParser$e;->b:I

    if-ne v3, p0, :cond_7

    move v1, v2

    :cond_7
    return v1

    :cond_8
    iget p2, p0, Lcom/caverock/androidsvg/CSSParser$e;->b:I

    sub-int v0, v3, p2

    rem-int/2addr v0, p1

    if-nez v0, :cond_a

    sub-int p1, v3, p2

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/caverock/androidsvg/CSSParser$e;->b:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    iget p0, p0, Lcom/caverock/androidsvg/CSSParser$e;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    if-ne p1, p0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "last-"

    :goto_0
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser$e;->d:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$e;->e:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "nth-%schild(%dn%+d of type <%s>)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/caverock/androidsvg/CSSParser$e;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "nth-%schild(%dn%+d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
