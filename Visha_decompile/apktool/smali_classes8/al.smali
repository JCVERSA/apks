.class public Lal;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lv0;


# instance fields
.field public b:Lx0;

.field public c:Lp1;


# direct methods
.method public constructor <init>(Lld4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lal;->b:Lx0;

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    iput-object p1, p0, Lal;->c:Lp1;

    return-void
.end method

.method public constructor <init>(Lmmb;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lal;->b:Lx0;

    new-instance v0, Ldq1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Ldq1;-><init>(ZILx0;)V

    iput-object v0, p0, Lal;->c:Lp1;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lal;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Lal;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lmmb;

    if-eqz v0, :cond_1

    new-instance v0, Lal;

    invoke-static {p0}, Lmmb;->n(Ljava/lang/Object;)Lmmb;

    move-result-object p0

    invoke-direct {v0, p0}, Lal;-><init>(Lmmb;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lld4;

    if-eqz v0, :cond_2

    new-instance v0, Lal;

    check-cast p0, Lld4;

    invoke-direct {v0, p0}, Lal;-><init>(Lld4;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ly1;

    if-eqz v0, :cond_3

    new-instance v0, Lal;

    check-cast p0, Ly1;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmmb;->m(Ly1;Z)Lmmb;

    move-result-object p0

    invoke-direct {v0, p0}, Lal;-><init>(Lmmb;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ls1;

    if-eqz v0, :cond_4

    new-instance v0, Lal;

    invoke-static {p0}, Lld4;->o(Ljava/lang/Object;)Lld4;

    move-result-object p0

    invoke-direct {v0, p0}, Lal;-><init>(Lld4;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    check-cast p0, Lal;

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lal;->c:Lp1;

    return-object p0
.end method

.method public n()Lx0;
    .locals 0

    iget-object p0, p0, Lal;->b:Lx0;

    return-object p0
.end method
