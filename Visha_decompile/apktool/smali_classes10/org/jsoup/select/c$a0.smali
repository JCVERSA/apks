.class public final Lorg/jsoup/select/c$a0;
.super Lorg/jsoup/select/c$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a0"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/c$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->t0()Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->A0()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "nth-last-child"

    return-object p0
.end method
