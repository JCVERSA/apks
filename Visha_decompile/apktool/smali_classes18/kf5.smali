.class public final Lkf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lff5;


# instance fields
.field public final b:Lff5;


# direct methods
.method public constructor <init>(Lff5;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkf5;->b:Lff5;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lkf5;->b:Lff5;

    instance-of v2, p1, Lkf5;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lkf5;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v2, Lkf5;->b:Lff5;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lkf5;->j()Lhe5;

    move-result-object p0

    instance-of v1, p0, Lde5;

    if-eqz v1, :cond_7

    instance-of v1, p1, Lff5;

    if-eqz v1, :cond_4

    check-cast p1, Lff5;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lff5;->j()Lhe5;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_7

    instance-of p1, v3, Lde5;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    check-cast p0, Lde5;

    invoke-static {p0}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object p0

    check-cast v3, Lde5;

    invoke-static {v3}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_3
    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkf5;->b:Lff5;

    invoke-interface {p0}, Lzd5;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lkf5;->b:Lff5;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public j()Lhe5;
    .locals 0

    iget-object p0, p0, Lkf5;->b:Lff5;

    invoke-interface {p0}, Lff5;->j()Lhe5;

    move-result-object p0

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lkf5;->b:Lff5;

    invoke-interface {p0}, Lff5;->k()Z

    move-result p0

    return p0
.end method

.method public l()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkf5;->b:Lff5;

    invoke-interface {p0}, Lff5;->l()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KTypeWrapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkf5;->b:Lff5;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
