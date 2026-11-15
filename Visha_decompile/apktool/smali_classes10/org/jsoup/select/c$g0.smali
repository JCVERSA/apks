.class public final Lorg/jsoup/select/c$g0;
.super Lorg/jsoup/select/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4

    instance-of p0, p2, Lorg/jsoup/nodes/i;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->p1()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/j;

    new-instance v0, Lorg/jsoup/nodes/i;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->l1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltda;->o(Ljava/lang/String;)Ltda;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->j()Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/i;-><init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/g;->U(Lorg/jsoup/nodes/g;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->k0(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ":matchText"

    return-object p0
.end method
