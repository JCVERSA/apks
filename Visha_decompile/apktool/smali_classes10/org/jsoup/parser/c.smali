.class public abstract Lorg/jsoup/parser/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldx7;

.field public b:Lnv0;

.field public c:Lorg/jsoup/parser/b;

.field public d:Lorg/jsoup/nodes/Document;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Lorg/jsoup/parser/Token;

.field public h:Ltw7;

.field public i:Lorg/jsoup/parser/Token$h;

.field public j:Lorg/jsoup/parser/Token$g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/Token$h;

    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/c;->j:Lorg/jsoup/parser/Token$g;

    return-void
.end method


# virtual methods
.method public a()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/c;->a()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract c()Ltw7;
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->a:Ldx7;

    invoke-virtual {v0}, Ldx7;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lsw7;

    iget-object p0, p0, Lorg/jsoup/parser/c;->b:Lnv0;

    invoke-virtual {p0}, Lnv0;->J()I

    move-result p0

    invoke-direct {v1, p0, p1}, Lsw7;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(Ljava/io/Reader;Ljava/lang/String;Ldx7;)V
    .locals 1

    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Ldnb;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Ldnb;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ldnb;->i(Ljava/lang/Object;)V

    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->z1(Ldx7;)Lorg/jsoup/nodes/Document;

    iput-object p3, p0, Lorg/jsoup/parser/c;->a:Ldx7;

    invoke-virtual {p3}, Ldx7;->g()Ltw7;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/c;->h:Ltw7;

    new-instance v0, Lnv0;

    invoke-direct {v0, p1}, Lnv0;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jsoup/parser/c;->b:Lnv0;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    new-instance p1, Lorg/jsoup/parser/b;

    iget-object v0, p0, Lorg/jsoup/parser/c;->b:Lnv0;

    invoke-virtual {p3}, Ldx7;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lorg/jsoup/parser/b;-><init>(Lnv0;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object p1, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/jsoup/parser/c;->f:Ljava/lang/String;

    return-void
.end method

.method public abstract f(Ljava/lang/String;)Z
.end method

.method public g(Ljava/io/Reader;Ljava/lang/String;Ldx7;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/c;->e(Ljava/io/Reader;Ljava/lang/String;Ldx7;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/c;->m()V

    iget-object p1, p0, Lorg/jsoup/parser/c;->b:Lnv0;

    invoke-virtual {p1}, Lnv0;->d()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/c;->b:Lnv0;

    iput-object p1, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    iput-object p1, p0, Lorg/jsoup/parser/c;->e:Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public abstract h(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ldx7;)Ljava/util/List;
.end method

.method public abstract i(Lorg/jsoup/parser/Token;)Z
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/c;->j:Lorg/jsoup/parser/Token$g;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->D(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->G()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->D(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/Token$h;

    iget-object v1, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->D(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$h;->G()Lorg/jsoup/parser/Token$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$i;->D(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method public l(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/Token$h;

    iget-object v1, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->J(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$h;->G()Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$h;->J(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/parser/Token$h;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/b;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/b;->v()Lorg/jsoup/parser/Token;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {v2}, Lorg/jsoup/parser/Token;->m()Lorg/jsoup/parser/Token;

    iget-object v2, v2, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v1, :cond_0

    return-void
.end method
