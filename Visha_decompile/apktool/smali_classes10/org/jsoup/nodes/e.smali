.class public Lorg/jsoup/nodes/e;
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

    const-string p0, "#data"

    return-object p0
.end method

.method public I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

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

    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->g0()Lorg/jsoup/nodes/e;

    move-result-object p0

    return-object p0
.end method

.method public g0()Lorg/jsoup/nodes/e;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/g;->s()Lorg/jsoup/nodes/g;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/e;

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

    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->g0()Lorg/jsoup/nodes/e;

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
