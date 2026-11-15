.class public final Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$special$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "kotlinx/coroutines/RunnableKt$Runnable$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$special$$inlined$Runnable$1;->this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$special$$inlined$Runnable$1;->this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->getPopupTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->access$animateVisibility(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;Landroid/view/View;Z)V

    return-void
.end method
