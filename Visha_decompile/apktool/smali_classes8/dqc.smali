.class public Ldqc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Leqc;

.field public b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Leqc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldqc;->b:Ljava/util/Vector;

    iput-object p1, p0, Ldqc;->a:Leqc;

    return-void
.end method


# virtual methods
.method public a([Ll1;[Lx0;)Ldqc;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lnl;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v2, Lnl;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lnl;-><init>(Ll1;Lx0;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ldqc;->c([Lnl;)Ldqc;

    move-result-object p0

    return-object p0
.end method

.method public b([Ll1;[Ljava/lang/String;)Ldqc;
    .locals 6

    array-length v0, p2

    new-array v1, v0, [Lx0;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Ldqc;->a:Leqc;

    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-interface {v3, v4, v5}, Leqc;->a(Ll1;Ljava/lang/String;)Lx0;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Ldqc;->a([Ll1;[Lx0;)Ldqc;

    move-result-object p0

    return-object p0
.end method

.method public c([Lnl;)Ldqc;
    .locals 2

    iget-object v0, p0, Ldqc;->b:Ljava/util/Vector;

    new-instance v1, Lwm8;

    invoke-direct {v1, p1}, Lwm8;-><init>([Lnl;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public d(Ll1;Lx0;)Ldqc;
    .locals 2

    iget-object v0, p0, Ldqc;->b:Ljava/util/Vector;

    new-instance v1, Lwm8;

    invoke-direct {v1, p1, p2}, Lwm8;-><init>(Ll1;Lx0;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public e(Ll1;Ljava/lang/String;)Ldqc;
    .locals 1

    iget-object v0, p0, Ldqc;->a:Leqc;

    invoke-interface {v0, p1, p2}, Leqc;->a(Ll1;Ljava/lang/String;)Lx0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ldqc;->d(Ll1;Lx0;)Ldqc;

    return-object p0
.end method

.method public f()Lcqc;
    .locals 4

    iget-object v0, p0, Ldqc;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lwm8;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Ldqc;->b:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwm8;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcqc;

    iget-object p0, p0, Ldqc;->a:Leqc;

    invoke-direct {v0, p0, v1}, Lcqc;-><init>(Leqc;[Lwm8;)V

    return-object v0
.end method
