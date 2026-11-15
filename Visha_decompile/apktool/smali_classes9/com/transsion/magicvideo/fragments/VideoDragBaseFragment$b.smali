.class public Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->I1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->E1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->E1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->E1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment$b;->b:Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;->E1(Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
