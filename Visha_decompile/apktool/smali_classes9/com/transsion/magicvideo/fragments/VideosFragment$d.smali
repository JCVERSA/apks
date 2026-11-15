.class public Lcom/transsion/magicvideo/fragments/VideosFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosFragment;->S2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/16 p1, 0x485

    const/16 v0, 0x10

    const/16 v1, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->E2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget v4, p2, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-eq v4, v3, :cond_2

    if-eq v4, v1, :cond_2

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->showShuffleBtn()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_END:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->B2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p1, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->F2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->G2(Lcom/transsion/magicvideo/fragments/VideosFragment;)V

    goto :goto_5

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p2, v2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->E2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$d;->c:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-eq p2, v3, :cond_5

    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideShuffleBtn()V

    goto :goto_5

    :cond_5
    :goto_3
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget p2, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_START:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method
