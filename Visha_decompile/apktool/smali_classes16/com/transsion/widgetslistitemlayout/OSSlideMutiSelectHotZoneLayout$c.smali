.class public Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p()Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->i(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;->b:Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;IZ)V

    :cond_3
    :goto_0
    return v1
.end method
