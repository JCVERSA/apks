.class public Lorg/jsoup/nodes/c;
.super Lorg/jsoup/nodes/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public E()Ljava/lang/String;
    .locals 0

    const-string p0, "#cdata"

    return-object p0
.end method

.method public I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    const-string p2, "<![CDATA["

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/j;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public J(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    :try_start_0
    const-string p0, "]]>"

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/jsoup/UncheckedIOException;

    invoke-direct {p1, p0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->k0()Lorg/jsoup/nodes/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g0()Lorg/jsoup/nodes/j;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->k0()Lorg/jsoup/nodes/c;

    move-result-object p0

    return-object p0
.end method

.method public k0()Lorg/jsoup/nodes/c;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/j;->g0()Lorg/jsoup/nodes/j;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/c;

    return-object p0
.end method

.method public bridge synthetic s()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/c;->k0()Lorg/jsoup/nodes/c;

    move-result-object p0

    return-object p0
.end method
