.class public Lorg/jsoup/nodes/f;
.super Lrj5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lrj5;-><init>()V

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-static {p2}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-static {p3}, Ldnb;->i(Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/f;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    const-string p1, "publicId"

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/f;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    const-string p1, "systemId"

    invoke-virtual {p0, p1, p3}, Lorg/jsoup/nodes/f;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->i0()V

    return-void
.end method


# virtual methods
.method public E()Ljava/lang/String;
    .locals 0

    const-string p0, "#doctype"

    return-object p0
.end method

.method public I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->k()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    const-string p2, "name"

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    const-string p2, "pubSysKey"

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    const/16 p0, 0x3e

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

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

.method public final g0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lm0a;->f(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lrj5;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "pubSysKey"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/f;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    :cond_0
    return-void
.end method

.method public bridge synthetic i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0, p1, p2}, Lrj5;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p0

    return-object p0
.end method

.method public final i0()V
    .locals 2

    const-string v0, "publicId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "pubSysKey"

    if-eqz v0, :cond_0

    const-string v0, "PUBLIC"

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/f;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    const-string v0, "systemId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/f;->g0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SYSTEM"

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/f;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/g;

    :cond_1
    :goto_0
    return-void
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

.method public bridge synthetic v()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-super {p0}, Lrj5;->v()Lorg/jsoup/nodes/g;

    move-result-object p0

    return-object p0
.end method
