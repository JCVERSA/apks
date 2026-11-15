.class public Lcom/wh/stat/layout/StatLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wh/stat/layout/StatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Landroid/view/View$OnTouchListener;

.field public final synthetic c:Lcom/wh/stat/layout/StatLayout;


# direct methods
.method public constructor <init>(Lcom/wh/stat/layout/StatLayout;Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wh/stat/layout/StatLayout$a;->c:Lcom/wh/stat/layout/StatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/wh/stat/layout/StatLayout$a;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/wh/stat/layout/StatLayout$a;->b:Landroid/view/View$OnTouchListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
