.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lzn/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 2

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->y3(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->a1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/transsion/postdetail/util/t;->c(Lcom/transsion/postdetail/layer/local/LocalUiType;)Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->O(Lcom/transsion/subtitle/helper/LocalVideoUiType;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->T0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/util/LocalVideoAdHelper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->W0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/player/orplayer/f;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->x2(Lcom/transsion/postdetail/layer/local/LocalUiType;Lcom/transsion/player/orplayer/f;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->k(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->g()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->a()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->n()V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->B1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public d(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->N1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$c;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/c0;->c(Lcom/transsion/postdetail/layer/local/c0;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
