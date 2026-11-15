.class public final Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;->b:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;->c:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;->b:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;->b:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;->c:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method
