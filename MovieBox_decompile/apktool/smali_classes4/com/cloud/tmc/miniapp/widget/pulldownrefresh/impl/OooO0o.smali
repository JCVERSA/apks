.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public OooO00o:Landroid/graphics/PointF;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

.field public OooO0OO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public OooO0O0(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o:Landroid/graphics/PointF;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method
