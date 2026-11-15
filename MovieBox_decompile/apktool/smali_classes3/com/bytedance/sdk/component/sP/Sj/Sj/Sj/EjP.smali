.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;
.super Lcom/bytedance/sdk/component/sP/Sj/Ym;
.source "source.java"


# instance fields
.field public Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

.field public uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->sP()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/sP/Sj/EjP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;
    .locals 2

    .line 2
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setting"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->vS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;Lcom/bytedance/sdk/component/sP/Sj/EjP;)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->TKC()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;Lcom/bytedance/sdk/component/sP/Sj/EjP;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->TKC()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
