.class public final Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger$smoothScrollToPosition$linearSmoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "com/transsion/playercommon/widgets/banner/provider/ScrollDurationManger$smoothScrollToPosition$linearSmoothScroller$1",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "calculateTimeForDeceleration",
        "",
        "dx",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger$smoothScrollToPosition$linearSmoothScroller$1;->a:Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateTimeForDeceleration(I)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger$smoothScrollToPosition$linearSmoothScroller$1;->a:Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;->g(Lcom/transsion/playercommon/widgets/banner/provider/ScrollDurationManger;)I

    move-result p0

    return p0
.end method
