.class public Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->f(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Z)V

    return v0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->c(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->h(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->f(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Z)V

    :cond_1
    return-void
.end method
