.class public final Lcom/transsion/publish/view/operation/OperationVerticalBarView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/operation/OperationVerticalBarView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$b;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$b;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->onTouchEvents(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
