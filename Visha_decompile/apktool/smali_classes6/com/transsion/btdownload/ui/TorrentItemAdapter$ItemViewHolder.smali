.class public Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/ui/TorrentItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public A:Landroid/content/Context;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/ProgressBar;

.field public z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->A:Landroid/content/Context;

    sget v0, Lcom/transsion/bt_download/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->p:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/bt_download/R$id;->ll_speed_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->q:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->r:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->t:Landroid/widget/TextView;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->u:Landroid/widget/TextView;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->v:Landroid/widget/TextView;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->w:Landroid/widget/TextView;

    sget v0, Lcom/transsion/bt_download/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->y:Landroid/widget/ProgressBar;

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->z:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/bt_download/R$id;->iv_start:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->s:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/bt_download/R$id;->tv_start:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->x:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Ljava/util/HashSet;ZILcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Ljava/util/HashSet;ZILcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V

    return-void
.end method

.method public final b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Ljava/util/HashSet;ZILcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->y:Landroid/widget/ProgressBar;

    iget v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->downloadSpeed:J

    invoke-static {v0, v1, v2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->v:Landroid/widget/TextView;

    const-string v2, "%s/s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->totalBytes:J

    invoke-static {v0, v1, v2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->w:Landroid/widget/TextView;

    const-string v2, "%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->z:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->z:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-static {p2}, Lpx9;->b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)Z

    move-result p2

    iget-object p3, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->r:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$a;-><init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Z)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->r:Landroid/widget/ImageView;

    new-instance p3, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$b;

    invoke-direct {p3, p0, p5, p4}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$b;-><init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->y:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p2, p3, :cond_7

    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p2, p3, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v0, ""

    const-string v2, "/"

    if-eq p2, p3, :cond_6

    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p2, p3, :cond_3

    goto :goto_2

    :cond_3
    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p2, p3, :cond_5

    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->CHECKING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-eq p2, p3, :cond_5

    sget-object p3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING_METADATA:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    if-ne p2, p3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->u:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$string;->download_failed:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_5
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->getFinishFileCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->getWantFileCount()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->u:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->s:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/bt_download/R$drawable;->ic_bt_pause:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->x:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$string;->mv_download:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->getFinishFileCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->getWantFileCount()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->u:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->s:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/bt_download/R$drawable;->ic_bt_start:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->x:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$string;->paused:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->getWantFileCount()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->A:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_8

    sget p3, Lcom/transsion/bt_download/R$string;->video_num_a:I

    goto :goto_4

    :cond_8
    sget p3, Lcom/transsion/bt_download/R$string;->videos_num_a:I

    :goto_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->v:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->y:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->p:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$c;

    invoke-direct {p2, p0, p5, p4}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$c;-><init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->p:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;

    invoke-direct {p2, p0, p5, p4}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;-><init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->z:Landroid/widget/CheckBox;

    new-instance p2, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$e;

    invoke-direct {p2, p0, p5, p4}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$e;-><init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
