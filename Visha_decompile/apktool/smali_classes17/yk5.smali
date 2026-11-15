.class public final Lyk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod7;
.implements Lpn9;


# instance fields
.field public final a:Lmc7;


# direct methods
.method public constructor <init>(Lmc7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "observable == null"

    invoke-static {p1, v0}, Lzd8;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lyk5;->a:Lmc7;

    return-void
.end method


# virtual methods
.method public a(Lmc7;)Lld7;
    .locals 0

    iget-object p0, p0, Lyk5;->a:Lmc7;

    invoke-virtual {p1, p0}, Lmc7;->f0(Lld7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public b(Lxm9;)Lmn9;
    .locals 0

    iget-object p0, p0, Lyk5;->a:Lmc7;

    invoke-virtual {p0}, Lmc7;->v()Lxm9;

    move-result-object p0

    invoke-virtual {p1, p0}, Lxm9;->t(Lmn9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lyk5;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyk5;

    iget-object p0, p0, Lyk5;->a:Lmc7;

    iget-object p1, p1, Lyk5;->a:Lmc7;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lyk5;->a:Lmc7;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifecycleTransformer{observable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyk5;->a:Lmc7;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
