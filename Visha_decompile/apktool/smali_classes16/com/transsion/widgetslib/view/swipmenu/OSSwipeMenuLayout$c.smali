.class public Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$g;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$c;->b:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$c;->b:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
