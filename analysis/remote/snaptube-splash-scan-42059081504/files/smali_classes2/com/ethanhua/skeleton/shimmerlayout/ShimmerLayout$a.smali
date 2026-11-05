.class public Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;


# direct methods
.method public constructor <init>(Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout$a;->a:Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout$a;->a:Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout$a;->a:Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Lcom/ethanhua/skeleton/shimmerlayout/ShimmerLayout;->o()V

    const/4 v0, 0x1

    return v0
.end method
