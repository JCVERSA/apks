.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sP"
.end annotation


# instance fields
.field Sj:Z

.field TKC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;",
            ">;"
        }
    .end annotation
.end field

.field sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V
    .locals 1

    .line 1
    const-string v0, "ReportWindowFocusChangedAdShow"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->Sj:Z

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->TKC:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->TKC:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->TKC:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->Sj:Z

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
