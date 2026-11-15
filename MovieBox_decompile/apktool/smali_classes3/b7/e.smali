.class public Lb7/e;
.super Lb7/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/e$a;
    }
.end annotation


# instance fields
.field private m:Landroid/view/View;

.field private n:Lcom/cloud/hisavana/sdk/api/listener/g;

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lb7/a;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lb7/e;->q:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lb7/e;->r:Z

    .line 8
    .line 9
    iput-boolean p2, p0, Lb7/e;->s:Z

    .line 10
    .line 11
    iput-object p1, p0, Lb7/e;->o:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic s(Lb7/e;)Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb7/e;->n:Lcom/cloud/hisavana/sdk/api/listener/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb7/a;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb7/e;->m:Landroid/view/View;

    .line 6
    .line 7
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb7/e;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lb7/e;->o:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lb7/e;->p:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v2, p0, Lb7/e;->r:Z

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lc7/b;->o(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lb7/a;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/p3$b;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/p3$b;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->i(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lb7/a;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-boolean v1, p0, Lb7/a;->c:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->r(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lb7/a;->d:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->l(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lb7/a;->e:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->j(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lb7/a;->j:Ld7/b;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->d(Ld7/b;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-boolean v1, p0, Lb7/a;->g:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->o(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v1, p0, Lb7/a;->h:Z

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->v(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lb7/a;->i:Ld7/a;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->c(Ld7/a;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3$b;->g()Lcom/cloud/hisavana/sdk/p3;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/cloud/hisavana/sdk/e1;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/e1;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lb7/e$a;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lb7/e$a;-><init>(Lb7/e;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/F;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->E()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public u(Ljava/lang/String;Z)Lb7/e;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb7/e;->q:Z

    .line 3
    .line 4
    iput-object p1, p0, Lb7/e;->p:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lb7/e;->r:Z

    .line 7
    .line 8
    return-object p0
.end method

.method public v(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb7/e;->m:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public w(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb7/e;->t:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public x(Lcom/cloud/hisavana/sdk/api/listener/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb7/e;->n:Lcom/cloud/hisavana/sdk/api/listener/g;

    .line 2
    .line 3
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/e1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast v0, Lcom/cloud/hisavana/sdk/e1;

    .line 10
    .line 11
    iget-boolean v1, p0, Lb7/e;->s:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e1;->n0(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 17
    .line 18
    check-cast v0, Lcom/cloud/hisavana/sdk/e1;

    .line 19
    .line 20
    iget-object v1, p0, Lb7/e;->t:Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e1;->e0(Ljava/lang/Float;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 26
    .line 27
    check-cast v0, Lcom/cloud/hisavana/sdk/e1;

    .line 28
    .line 29
    iget-object v1, p0, Lb7/e;->m:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e1;->i0(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lb7/a;->l:Landroidx/collection/b;

    .line 35
    .line 36
    iget-object v1, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "TSplash show error: "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v2, "ssp"

    .line 69
    .line 70
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 74
    .line 75
    check-cast v0, Lcom/cloud/hisavana/sdk/e1;

    .line 76
    .line 77
    iget-object v1, p0, Lb7/e;->o:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/e1;->m0(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method
