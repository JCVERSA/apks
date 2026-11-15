.class public final Lcom/transsion/videodetail/music/ui/MusicDetailFragment$d;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$d;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$d;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->N0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$d;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->T0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lkn/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$d;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->T0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lkn/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Lkn/a;->onBackPressed()Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$d;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method
