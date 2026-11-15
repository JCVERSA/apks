.class public Lorg/jsoup/nodes/h;
.super Lorg/jsoup/nodes/Element;
.source "source.java"


# instance fields
.field private final j:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/jsoup/nodes/h;->j:Lorg/jsoup/select/Elements;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected N(Lorg/jsoup/nodes/j;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/j;->N(Lorg/jsoup/nodes/j;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/h;->j:Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d1(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/h;->j:Lorg/jsoup/select/Elements;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
