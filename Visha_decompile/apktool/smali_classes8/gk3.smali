.class public Lgk3;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/Hashtable;

.field public c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgk3;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk3;->p(Ljava/lang/Object;)Lbk3;

    move-result-object v0

    iget-object v1, p0, Lgk3;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lbk3;->n()Ll1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "org.bouncycastle.x509.ignore_repeated_extensions"

    invoke-static {v1}, Lqi8;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repeated extension found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lbk3;->n()Ll1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    iget-object v1, p0, Lgk3;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lbk3;->n()Ll1;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Lbk3;->n()Ll1;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty extension sequence found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lbk3;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgk3;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgk3;->c:Ljava/util/Vector;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Lbk3;->n()Ll1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lgk3;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lbk3;->n()Ll1;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extension array cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Lgk3;Ll1;)Lx0;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lgk3;->q(Ll1;)Lx0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static s(Ly1;Z)Lgk3;
    .locals 0

    invoke-static {p0, p1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-static {p0}, Lgk3;->t(Ljava/lang/Object;)Lgk3;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Lgk3;
    .locals 1

    instance-of v0, p0, Lgk3;

    if-eqz v0, :cond_0

    check-cast p0, Lgk3;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgk3;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lgk3;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    iget-object v1, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1;

    iget-object v3, p0, Lgk3;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbk3;

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    goto :goto_0

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()[Ll1;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgk3;->p(Z)[Ll1;

    move-result-object p0

    return-object p0
.end method

.method public n(Ll1;)Lbk3;
    .locals 0

    iget-object p0, p0, Lgk3;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbk3;

    return-object p0
.end method

.method public o()[Ll1;
    .locals 1

    iget-object v0, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lgk3;->w(Ljava/util/Vector;)[Ll1;

    move-result-object p0

    return-object p0
.end method

.method public final p(Z)[Ll1;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgk3;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbk3;

    invoke-virtual {v3}, Lbk3;->r()Z

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lgk3;->w(Ljava/util/Vector;)[Ll1;

    move-result-object p0

    return-object p0
.end method

.method public q(Ll1;)Lx0;
    .locals 0

    invoke-virtual {p0, p1}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbk3;->q()Lx0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public u()[Ll1;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgk3;->p(Z)[Ll1;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lgk3;->c:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public final w(Ljava/util/Vector;)[Ll1;
    .locals 3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    new-array v0, p0, [Ll1;

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
