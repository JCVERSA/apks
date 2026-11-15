.class public abstract Lb32;
.super Lxd0;
.source "SourceFile"


# instance fields
.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 2

    invoke-static {p1}, Lz22;->G(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lxd0;-><init>(Lfreemarker/template/Version;Z)V

    invoke-virtual {p0}, Lxd0;->d()Lfreemarker/template/Version;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Version;->intValue()I

    move-result p1

    sget v1, Ld1d;->e:I

    if-lt p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lb32;->i:Z

    iput-boolean v0, p0, Lb32;->j:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Lxd0;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb32;

    iget-boolean v0, p0, Lb32;->i:Z

    invoke-virtual {p1}, Lb32;->l()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lb32;->j:Z

    iget-boolean p1, p1, Lb32;->j:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Lxd0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb32;->i:Z

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lb32;->j:Z

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lb32;->j:Z

    return p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lb32;->i:Z

    return p0
.end method
