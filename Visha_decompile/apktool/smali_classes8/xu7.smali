.class public Lxu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwu7;


# instance fields
.field public b:Ljava/util/Hashtable;

.field public c:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v1}, Lxu7;-><init>(Ljava/util/Hashtable;Ljava/util/Vector;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxu7;->b:Ljava/util/Hashtable;

    iput-object p2, p0, Lxu7;->c:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lxu7;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    iput-object p1, p0, Lxu7;->c:Ljava/util/Vector;

    goto :goto_1

    :cond_0
    new-instance p1, Lf1;

    check-cast v0, [B

    invoke-direct {p1, v0}, Lf1;-><init>([B)V

    :goto_0
    invoke-virtual {p1}, Lf1;->D()Lp1;

    move-result-object v0

    check-cast v0, Ll1;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lf1;->D()Lp1;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxu7;->setBagAttribute(Ll1;Lx0;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Ljava/io/ObjectOutputStream;)V
    .locals 5

    iget-object v0, p0, Lxu7;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lo1;->a(Ljava/io/OutputStream;)Lo1;

    move-result-object v1

    invoke-virtual {p0}, Lxu7;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo1;->v(Lp1;)V

    iget-object v4, p0, Lxu7;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx0;

    invoke-virtual {v1, v3}, Lo1;->u(Lx0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public getBagAttribute(Ll1;)Lx0;
    .locals 0

    iget-object p0, p0, Lxu7;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx0;

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lxu7;->c:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public setBagAttribute(Ll1;Lx0;)V
    .locals 1

    iget-object v0, p0, Lxu7;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxu7;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxu7;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lxu7;->c:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
