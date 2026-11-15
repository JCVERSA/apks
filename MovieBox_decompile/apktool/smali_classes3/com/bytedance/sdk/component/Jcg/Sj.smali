.class public Lcom/bytedance/sdk/component/Jcg/Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>()V

    iget v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->TKC:I

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP:I

    int-to-long v1, v1

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->EjP:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->EjP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/sP/Sj/Dq;

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Landroid/os/Bundle;

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Ljava/util/Set;

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;Lcom/bytedance/sdk/component/Jcg/Sj$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Jcg/Sj;-><init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)V

    return-void
.end method

.method public static Sj()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/Jcg/sP/Sj;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/component/sP/Sj/Ym;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 2
    .line 3
    return-object v0
.end method

.method public TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP/sP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
