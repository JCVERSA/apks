.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$g;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/2addr p1, p2

    .line 15
    if-gtz p1, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_1
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 19
    .line 20
    iput-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oO:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oo:Z

    .line 23
    .line 24
    return-void
.end method
