.class public Lorg/jsoup/nodes/d;
.super Lrj5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lrj5;-><init>()V

    iput-object p1, p0, Lrj5;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public E()Ljava/lang/String;
    .locals 0

    const-string p0, "#comment"

    return-object p0
.end method

.method public I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->Z()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/g;->b:Lorg/jsoup/nodes/g;

    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v0

    invoke-virtual {v0}, Ltda;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/g;->B(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string p2, "<!--"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    const-string p1, "-->"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

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

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->g0()Lorg/jsoup/nodes/d;

    move-result-object p0

    return-object p0
.end method

.method public g0()Lorg/jsoup/nodes/d;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/g;->s()Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/d;

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

    invoke-virtual {p0}, Lorg/jsoup/nodes/d;->g0()Lorg/jsoup/nodes/d;

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
