.class Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;->sP:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/RiZ;)Landroid/widget/ImageView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;->Sj:Landroid/view/animation/RotateAnimation;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
