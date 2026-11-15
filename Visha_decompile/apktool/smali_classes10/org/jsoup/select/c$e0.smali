.class public final Lorg/jsoup/select/c$e0;
.super Lorg/jsoup/select/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->Y0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->t0()Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, p1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->k1()Ltda;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltda;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne v0, p0, :cond_3

    move p1, p0

    :cond_3
    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ":only-of-type"

    return-object p0
.end method
