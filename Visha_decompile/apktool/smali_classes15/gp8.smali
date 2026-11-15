.class public final synthetic Lgp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgp8;->b:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput p2, p0, Lgp8;->c:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lgp8;->b:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iget p0, p0, Lgp8;->c:I

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->b(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
