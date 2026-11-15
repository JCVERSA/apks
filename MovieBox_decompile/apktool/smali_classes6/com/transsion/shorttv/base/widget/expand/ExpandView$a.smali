.class Lcom/transsion/shorttv/base/widget/expand/ExpandView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/base/widget/expand/ExpandView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/base/widget/expand/ExpandView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/widget/expand/ExpandView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/expand/ExpandView$a;->a:Lcom/transsion/shorttv/base/widget/expand/ExpandView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/expand/ExpandView$a;->a:Lcom/transsion/shorttv/base/widget/expand/ExpandView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/expand/ExpandView$a;->a:Lcom/transsion/shorttv/base/widget/expand/ExpandView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->f(Lcom/transsion/shorttv/base/widget/expand/ExpandView;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/expand/ExpandView$a;->a:Lcom/transsion/shorttv/base/widget/expand/ExpandView;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->g(Lcom/transsion/shorttv/base/widget/expand/ExpandView;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
