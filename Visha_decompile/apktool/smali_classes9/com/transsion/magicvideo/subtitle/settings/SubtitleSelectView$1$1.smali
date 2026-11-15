.class Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;

.field final synthetic val$finalSelectIndex:I


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->this$1:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;

    iput p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->val$finalSelectIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->this$1:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;

    iget-object v0, v0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/utils/CustomLinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->val$finalSelectIndex:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->this$1:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;

    iget-object v1, v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {v1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/utils/CustomLinearLayoutManager;

    move-result-object v1

    iget v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->val$finalSelectIndex:I

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1$1;->this$1:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;->a:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->e(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    invoke-virtual {v1, v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method
