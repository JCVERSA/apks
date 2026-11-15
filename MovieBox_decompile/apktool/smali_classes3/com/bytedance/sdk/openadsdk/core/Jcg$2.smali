.class Lcom/bytedance/sdk/openadsdk/core/Jcg$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Jcg;->Sj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/ViewTreeObserver;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Jcg;Landroid/view/ViewTreeObserver;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->Sj:Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->sP:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->Sj:Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->sP:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
