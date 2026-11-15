.class public abstract Lrj5;
.super Lorg/jsoup/nodes/g;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lrj5;->f0()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrj5;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e0(Lorg/jsoup/nodes/g;)Lrj5;
    .locals 1

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p1

    check-cast p1, Lrj5;

    invoke-virtual {p0}, Lrj5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrj5;->e:Ljava/lang/Object;

    check-cast p0, Lorg/jsoup/nodes/b;

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->o()Lorg/jsoup/nodes/b;

    move-result-object p0

    iput-object p0, p1, Lrj5;->e:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final f0()V
    .locals 2

    invoke-virtual {p0}, Lrj5;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrj5;->e:Ljava/lang/Object;

    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v1, p0, Lrj5;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->E()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lrj5;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lrj5;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 1

    invoke-virtual {p0}, Lrj5;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lrj5;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrj5;->f0()V

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/g;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    :goto_0
    return-object p0
.end method

.method public final j()Lorg/jsoup/nodes/b;
    .locals 0

    invoke-virtual {p0}, Lrj5;->f0()V

    iget-object p0, p0, Lrj5;->e:Ljava/lang/Object;

    check-cast p0, Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->L()Lorg/jsoup/nodes/g;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->l()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public p()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic t(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0, p1}, Lrj5;->e0(Lorg/jsoup/nodes/g;)Lrj5;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public v()Lorg/jsoup/nodes/g;
    .locals 0

    return-object p0
.end method

.method public w()Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/jsoup/nodes/g;->d:Ljava/util/List;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-object p0, p0, Lrj5;->e:Ljava/lang/Object;

    instance-of p0, p0, Lorg/jsoup/nodes/b;

    return p0
.end method
