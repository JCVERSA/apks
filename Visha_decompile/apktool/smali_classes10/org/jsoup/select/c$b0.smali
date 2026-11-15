.class public Lorg/jsoup/select/c$b0;
.super Lorg/jsoup/select/c$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/c$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->t0()Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->A0()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltda;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "nth-last-of-type"

    return-object p0
.end method
