.class public Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic d:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/ViewGroup$LayoutParams;ILcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->d:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->b:I

    iput-object p4, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->c:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->b:I

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$c;->c:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
