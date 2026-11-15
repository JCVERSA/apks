.class public final Lorg/jsoup/select/c$x;
.super Lorg/jsoup/select/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->A0()I

    move-result p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->t0()Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ":last-child"

    return-object p0
.end method
