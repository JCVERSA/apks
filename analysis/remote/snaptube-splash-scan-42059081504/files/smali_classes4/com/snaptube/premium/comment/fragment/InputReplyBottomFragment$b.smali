.class public final Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;->R2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;


# direct methods
.method public constructor <init>(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment$b;->a:Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment$b;->b(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)V

    return-void
.end method

.method public static final b(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;->P2(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment$b;->a:Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;

    invoke-static {v0}, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;->M2(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment$b;->a:Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment$b;->a:Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;

    new-instance v2, Lo/pn3;

    invoke-direct {v2, v1}, Lo/pn3;-><init>(Lcom/snaptube/premium/comment/fragment/InputReplyBottomFragment;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
