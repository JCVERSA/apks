.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0"
.end annotation


# instance fields
.field public final OooO00o:Landroid/widget/OverScroller;

.field public OooO0O0:I

.field public OooO0OO:I

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/widget/OverScroller;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    .line 33
    .line 34
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0O0:I

    .line 35
    .line 36
    sub-int/2addr v3, v0

    .line 37
    int-to-float v3, v3

    .line 38
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0OO:I

    .line 39
    .line 40
    sub-int/2addr v4, v1

    .line 41
    int-to-float v4, v4

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    .line 48
    .line 49
    .line 50
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0O0:I

    .line 51
    .line 52
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0OO:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
