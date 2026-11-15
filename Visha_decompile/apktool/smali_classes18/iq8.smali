.class public final Liq8;
.super Lbq8;
.source "SourceFile"

# interfaces
.implements Ly75;


# instance fields
.field public final a:Lo54;


# direct methods
.method public constructor <init>(Lo54;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbq8;-><init>()V

    iput-object p1, p0, Liq8;->a:Lo54;

    return-void
.end method


# virtual methods
.method public a(Lo54;)Lk65;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Lo54;
    .locals 0

    iget-object p0, p0, Liq8;->a:Lo54;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Liq8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Liq8;->d()Lo54;

    move-result-object p0

    check-cast p1, Liq8;

    invoke-virtual {p1}, Liq8;->d()Lo54;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Liq8;->getAnnotations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    .line 2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Liq8;->d()Lo54;

    move-result-object p0

    invoke-virtual {p0}, Lo54;->hashCode()I

    move-result p0

    return p0
.end method

.method public q(Le74;)Ljava/util/Collection;
    .locals 0

    const-string p0, "nameFilter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public r()Ljava/util/Collection;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Liq8;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Liq8;->d()Lo54;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
