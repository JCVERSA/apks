.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$QuirksMode;,
        Lorg/jsoup/nodes/Document$OutputSettings;
    }
.end annotation


# instance fields
.field private j:Lorg/jsoup/nodes/Document$OutputSettings;

.field private k:Lorg/jsoup/nodes/Document$QuirksMode;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "#root"

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/d;->c:Lorg/jsoup/parser/d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/jsoup/nodes/Document;->j:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 18
    .line 19
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/jsoup/nodes/Document;->k:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->m:Z

    .line 25
    .line 26
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->l:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method private f1(Ljava/lang/String;Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/j;->B()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/j;->n()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/j;->m(I)Lorg/jsoup/nodes/j;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {p0, p1, v2}, Lorg/jsoup/nodes/Document;->f1(Ljava/lang/String;Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "#document"

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->B0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public X0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->d1()Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->X0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->e1()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d1()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-direct {p0, v0, p0}, Lorg/jsoup/nodes/Document;->f1(Ljava/lang/String;Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e1()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->s0()Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->j:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->e()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lorg/jsoup/nodes/Document;->j:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 14
    .line 15
    return-object v0
.end method

.method public g1()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->j:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public h1()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->k:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public i1(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->k:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public j1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->y0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->W0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lorg/jsoup/helper/c;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, ""

    .line 27
    .line 28
    :goto_0
    return-object v0
.end method

.method public bridge synthetic q()Lorg/jsoup/nodes/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->e1()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic s0()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->e1()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
