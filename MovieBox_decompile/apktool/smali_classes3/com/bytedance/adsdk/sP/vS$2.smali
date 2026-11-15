.class Lcom/bytedance/adsdk/sP/vS$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->sP(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/bytedance/adsdk/sP/aa<",
        "Lcom/bytedance/adsdk/sP/Jcg;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$2;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/adsdk/sP/vS$2;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/sP/aa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$2;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sef(Lcom/bytedance/adsdk/sP/vS;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$2;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$2;->Sj:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/adsdk/sP/Dq;->TKC(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$2;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$2;->Sj:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/sP/Dq;->TKC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS$2;->Sj()Lcom/bytedance/adsdk/sP/aa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
