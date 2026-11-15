.class public final Lcom/transsion/home/activity/MovieFilterActivity$a;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/activity/MovieFilterActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/activity/MovieFilterActivity;


# direct methods
.method constructor <init>(Lcom/transsion/home/activity/MovieFilterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/transsion/home/activity/MovieFilterActivity;->a:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsion/home/activity/MovieFilterActivity;->d0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/home/bean/HomeTabItem;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/home/bean/HomeTabItem;->getTabId()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v1, v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/transsion/home/activity/MovieFilterActivity;->d:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 34
    :goto_1
    sget-object v1, Lcom/transsion/home/fragment/tab/MovieFragment;->z:Lcom/transsion/home/fragment/tab/MovieFragment$a;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/transsion/home/activity/MovieFilterActivity;->d0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/transsion/home/bean/HomeTabItem;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/home/bean/HomeTabItem;->getTabId()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v2, 0x2

    .line 60
    :goto_2
    iget-object v3, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/transsion/home/activity/MovieFilterActivity;->d0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/transsion/home/bean/HomeTabItem;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/transsion/home/fragment/tab/MovieFragment$a;->a(IZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/home/activity/MovieFilterActivity;->d0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
