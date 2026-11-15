.class public Lorg/jsoup/nodes/j;
.super Lrj5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lrj5;-><init>()V

    iput-object p1, p0, Lrj5;->e:Ljava/lang/Object;

    return-void
.end method

.method public static j0(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public E()Ljava/lang/String;
    .locals 0

    const-string p0, "#text"

    return-object p0
.end method

.method public I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 9

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->Z()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v1

    invoke-virtual {v1}, Ltda;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i0()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->a0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->i0()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/g;->B(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    invoke-static {v2}, Lorg/jsoup/nodes/Element;->b1(Lorg/jsoup/nodes/g;)Z

    move-result v2

    if-nez v2, :cond_3

    move v7, v1

    goto :goto_0

    :cond_3
    move v7, p2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_4

    move v8, v1

    goto :goto_1

    :cond_4
    move v8, p2

    :goto_1
    invoke-virtual {p0}, Lrj5;->d0()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lorg/jsoup/nodes/Entities;->g(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    return-void
.end method

.method public J(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lrj5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->g0()Lorg/jsoup/nodes/j;

    move-result-object p0

    return-object p0
.end method

.method public g0()Lorg/jsoup/nodes/j;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/g;->s()Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/j;

    return-object p0
.end method

.method public bridge synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lrj5;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h0()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lrj5;->d0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i0()Z
    .locals 0

    invoke-virtual {p0}, Lrj5;->d0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lm0a;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lrj5;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic p()I
    .locals 0

    invoke-super {p0}, Lrj5;->p()I

    move-result p0

    return p0
.end method

.method public bridge synthetic s()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->g0()Lorg/jsoup/nodes/j;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->G()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic v()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0}, Lrj5;->v()Lorg/jsoup/nodes/g;

    move-result-object p0

    return-object p0
.end method
