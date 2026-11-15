.class public abstract Lxd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lfreemarker/template/Version;

.field public c:Lyw0;

.field public d:Z

.field public e:I

.field public f:Lgc7;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lxd0;-><init>(Lfreemarker/template/Version;Z)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxd0;->d:Z

    .line 3
    iput v0, p0, Lxd0;->e:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lxd0;->f:Lgc7;

    .line 5
    iput-boolean v0, p0, Lxd0;->g:Z

    .line 6
    iput-boolean v0, p0, Lxd0;->h:Z

    .line 7
    invoke-static {p1}, Ld1d;->a(Lfreemarker/template/Version;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lfreemarker/ext/beans/b;->G(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lxd0;->b:Lfreemarker/template/Version;

    .line 10
    new-instance p2, Lyw0;

    invoke-direct {p2, p1}, Lyw0;-><init>(Lfreemarker/template/Version;)V

    iput-object p2, p0, Lxd0;->c:Lyw0;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxd0;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lxd0;->c:Lyw0;

    invoke-virtual {p0}, Lyw0;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyw0;

    iput-object p0, v0, Lxd0;->c:Lyw0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to clone BeansWrapperConfiguration"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lxd0;->e:I

    return p0
.end method

.method public d()Lfreemarker/template/Version;
    .locals 0

    iget-object p0, p0, Lxd0;->b:Lfreemarker/template/Version;

    return-object p0
.end method

.method public e()Lfreemarker/ext/beans/d;
    .locals 0

    iget-object p0, p0, Lxd0;->c:Lyw0;

    invoke-virtual {p0}, Lyw0;->e()Lfreemarker/ext/beans/d;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lxd0;

    iget-object v2, p0, Lxd0;->b:Lfreemarker/template/Version;

    iget-object v3, p1, Lxd0;->b:Lfreemarker/template/Version;

    invoke-virtual {v2, v3}, Lfreemarker/template/Version;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lxd0;->d:Z

    iget-boolean v3, p1, Lxd0;->d:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lxd0;->e:I

    iget v3, p1, Lxd0;->e:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lxd0;->f:Lgc7;

    iget-object v3, p1, Lxd0;->f:Lgc7;

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Lxd0;->g:Z

    iget-boolean v3, p1, Lxd0;->g:Z

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Lxd0;->h:Z

    iget-boolean v3, p1, Lxd0;->h:Z

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lxd0;->c:Lyw0;

    iget-object p1, p1, Lxd0;->c:Lyw0;

    invoke-virtual {p0, p1}, Lyw0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public f()Lgc7;
    .locals 0

    iget-object p0, p0, Lxd0;->f:Lgc7;

    return-object p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lxd0;->h:Z

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lxd0;->d:Z

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lxd0;->b:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lxd0;->d:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lxd0;->e:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lxd0;->f:Lgc7;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lxd0;->g:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lxd0;->h:Z

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lxd0;->c:Lyw0;

    invoke-virtual {p0}, Lyw0;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lxd0;->g:Z

    return p0
.end method

.method public j(Lfreemarker/ext/beans/d;)V
    .locals 0

    iget-object p0, p0, Lxd0;->c:Lyw0;

    invoke-virtual {p0, p1}, Lyw0;->i(Lfreemarker/ext/beans/d;)V

    return-void
.end method
