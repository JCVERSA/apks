.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(II)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method
