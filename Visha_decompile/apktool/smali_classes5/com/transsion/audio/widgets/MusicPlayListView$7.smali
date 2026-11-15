.class Lcom/transsion/audio/widgets/MusicPlayListView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/MusicPlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$7;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iput-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView$7;->val$context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$7;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-boolean v1, v0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

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
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1, v2}, Lcom/transsion/audio/widgets/MusicPlayListView;->updateUI(Landroid/content/Context;Z)V

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$7;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
