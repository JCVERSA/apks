.class public Lcom/transsion/playercommon/stack/AudioStackLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/stack/AudioStackLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/stack/AudioStackLayoutManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/stack/AudioStackLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager$a;->b:Lcom/transsion/playercommon/stack/AudioStackLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager$a;->b:Lcom/transsion/playercommon/stack/AudioStackLayoutManager;

    invoke-static {v0}, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->h(Lcom/transsion/playercommon/stack/AudioStackLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/stack/AudioStackLayoutManager$a;->b:Lcom/transsion/playercommon/stack/AudioStackLayoutManager;

    invoke-static {p0}, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;->g(Lcom/transsion/playercommon/stack/AudioStackLayoutManager;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
