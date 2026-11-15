.class public final Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;
.super Lzw/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lzw/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 5

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->v0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)Lcom/transsion/ugcvideodetail/adapter/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    move v1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_2
    if-ltz v1, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->v0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;)Lcom/transsion/ugcvideodetail/adapter/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 83
    .line 84
    invoke-static {p2, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->w0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
