.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-boolean v1, v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq p1, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, v2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->updateUI(Landroid/content/Context;Z)V

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;->c:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
