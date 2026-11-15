.class Lcom/bytedance/adsdk/sP/uA$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/uA;->sP(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/vS/TKC;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->vS()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->Sj(F)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
