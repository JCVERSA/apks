.class public Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->startShimmerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;->b:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;->b:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;->b:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->b(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;->b:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;->b:Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->startShimmerAnimation()V

    const/4 p0, 0x1

    return p0
.end method
