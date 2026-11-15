.class public Lx34;
.super Lorg/jsoup/nodes/Element;
.source "SourceFile"


# instance fields
.field public final l:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Ltda;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    new-instance p1, Lorg/jsoup/select/Elements;

    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object p1, p0, Lx34;->l:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public R(Lorg/jsoup/nodes/g;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/g;->R(Lorg/jsoup/nodes/g;)V

    iget-object p0, p0, Lx34;->l:Lorg/jsoup/select/Elements;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lx34;->v1()Lx34;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic s()Lorg/jsoup/nodes/g;
    .locals 0

    invoke-virtual {p0}, Lx34;->v1()Lx34;

    move-result-object p0

    return-object p0
.end method

.method public u1(Lorg/jsoup/nodes/Element;)Lx34;
    .locals 1

    iget-object v0, p0, Lx34;->l:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public v1()Lx34;
    .locals 0

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->x0()Lorg/jsoup/nodes/Element;

    move-result-object p0

    check-cast p0, Lx34;

    return-object p0
.end method

.method public bridge synthetic x0()Lorg/jsoup/nodes/Element;
    .locals 0

    invoke-virtual {p0}, Lx34;->v1()Lx34;

    move-result-object p0

    return-object p0
.end method
