.class Lcom/warkiz/widget/IndicatorSeekBar$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warkiz/widget/IndicatorSeekBar;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warkiz/widget/IndicatorSeekBar;


# direct methods
.method constructor <init>(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

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
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    const v1, 0x3dcccccd    # 0.1f

    .line 4
    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, 0xb4

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->j(Lcom/warkiz/widget/IndicatorSeekBar;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->i(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$3;->this$0:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->j(Lcom/warkiz/widget/IndicatorSeekBar;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
