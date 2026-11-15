.class public final Lb7/b;
.super Lb7/a;
.source "source.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb7/a;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb7/a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/p3$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/p3$b;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->i(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lb7/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lb7/a;->c:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->r(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lb7/a;->d:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->l(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v1, p0, Lb7/a;->e:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->j(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lb7/a;->j:Ld7/b;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->d(Ld7/b;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-boolean v1, p0, Lb7/a;->g:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->o(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-boolean v1, p0, Lb7/a;->h:Z

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->v(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lb7/a;->i:Ld7/a;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->c(Ld7/a;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3$b;->g()Lcom/cloud/hisavana/sdk/p3;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/cloud/hisavana/sdk/v2;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/v2;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lb7/a$a;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lb7/a$a;-><init>(Lb7/a;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/F;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->E()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/v2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lb7/a;->l:Landroidx/collection/b;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 13
    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/v2;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/v2;->M()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
