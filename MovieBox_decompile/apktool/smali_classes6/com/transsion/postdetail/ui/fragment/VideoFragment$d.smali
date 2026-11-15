.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;
.super Lcom/transsion/postdetail/control/VideoPagerChangeControl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;ZLcom/transsion/postdetail/ui/adapter/d;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;-><init>(Landroidx/fragment/app/Fragment;ZLcom/transsion/postdetail/ui/adapter/d;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public f(IZLandroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f(IZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$isFromDownloaded$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_3

    .line 11
    .line 12
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getDownloadedShortsList$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x0

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p2, p3

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getStartDownloadedIndex$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getStartDownloadedIndex$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr p2, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move p2, p3

    .line 44
    :goto_1
    if-lez p2, :cond_2

    .line 45
    .line 46
    if-lt p1, p2, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    invoke-static {p1, p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$setHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Z)V

    .line 60
    .line 61
    .line 62
    sget p1, Lcom/transsion/postdetail/R$string;->shorts_view_online_content:I

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/baseui/util/m;->a(I)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 68
    .line 69
    const-string p2, "postdetail_video"

    .line 70
    .line 71
    const-string p3, "online"

    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/helper/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 78
    .line 79
    invoke-static {p1, p3}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$setHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Z)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_2
    return-void
.end method
