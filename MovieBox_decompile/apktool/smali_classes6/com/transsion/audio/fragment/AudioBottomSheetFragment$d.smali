.class public final Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->G0(Lcom/transsnet/downloader/bean/DownloadListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 15
    .line 16
    new-instance v0, Lcom/transsion/audio/fragment/RecentListFragment;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/audio/fragment/RecentListFragment;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->A0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;Lcom/transsion/audio/fragment/RecentListFragment;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->u0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/transsion/audio/fragment/RecentListFragment;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 35
    .line 36
    sget-object v0, Lcom/transsion/audio/fragment/SubjectListFragment;->q:Lcom/transsion/audio/fragment/SubjectListFragment$a;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/audio/fragment/SubjectListFragment$a;->b(Ljava/lang/String;)Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->B0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;Lcom/transsion/audio/fragment/SubjectListFragment;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->v0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/transsion/audio/fragment/SubjectListFragment;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$d;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
