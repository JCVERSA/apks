.class Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->resetPressedView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;

.field final synthetic val$pressedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener$1;->this$1:Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;

    iput-object p2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener$1;->val$pressedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener$1;->val$pressedView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method
