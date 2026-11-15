.class public Lb7/c;
.super Lb7/a;
.source "source.java"


# instance fields
.field private m:Z

.field private n:I

.field private o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


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

.method private w(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/util/List;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/hisavana/sdk/x2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->v()Lcom/cloud/hisavana/sdk/F0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {v0, p2, p1, p3}, Lcom/cloud/hisavana/sdk/z;->a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p3, "NativeApi"

    .line 33
    .line 34
    const-string v0, "onOmidRegister"

    .line 35
    .line 36
    invoke-virtual {p2, p3, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method private y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb7/c;->o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb7/c;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public B(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lc7/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lb7/c;->o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    :catchall_0
    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 11
    .line 12
    invoke-virtual {v1, v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->E(Lcom/cloud/hisavana/sdk/p3;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 22
    .line 23
    invoke-virtual {v1, v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->I(Lcom/cloud/hisavana/sdk/p3;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "NativeApi"

    .line 32
    .line 33
    const-string v1, "infos is empty, return"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :catchall_0
    :goto_1
    return-void
.end method

.method public s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/cloud/hisavana/sdk/x2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/hisavana/sdk/x2;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/x2;->F(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "NativeApi"

    .line 28
    .line 29
    const-string v1, "getAdChoicesView"

    .line 30
    .line 31
    invoke-virtual {p2, v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public t(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/a;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/x2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/x2;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/x2;->G(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    instance-of v1, v1, Lcom/cloud/hisavana/sdk/x2;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/cloud/hisavana/sdk/x2;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/x2;->V(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ""

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "s_err_code"

    .line 50
    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_OUTER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 55
    .line 56
    invoke-virtual {p0, p1, v1}, Lb7/a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return v0
.end method

.method public v()V
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
    iget-boolean v1, p0, Lb7/c;->m:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->i(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lb7/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lb7/a;->c:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->r(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lb7/a;->d:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->l(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lb7/a;->e:Z

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->j(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lb7/a;->j:Ld7/b;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->d(Ld7/b;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v1, p0, Lb7/c;->n:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->a(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-boolean v1, p0, Lb7/a;->g:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->o(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lb7/a;->h:Z

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->v(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lb7/c;->o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->b(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lb7/a;->i:Ld7/a;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->c(Ld7/a;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3$b;->g()Lcom/cloud/hisavana/sdk/p3;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p0}, Lb7/c;->y()V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/cloud/hisavana/sdk/x2;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/x2;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lb7/a$a;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lb7/a$a;-><init>(Lb7/a;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/F;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->E()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public x(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/cloud/hisavana/sdk/x2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lb7/a;->l:Landroidx/collection/b;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/hisavana/sdk/x2;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :catchall_0
    :try_start_2
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/cloud/hisavana/sdk/x2;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/x2;->Q(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->getMarkViews(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lb7/c;->w(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :catchall_1
    :cond_1
    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lb7/c;->n:I

    .line 12
    .line 13
    return-void
.end method
