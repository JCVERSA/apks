.class public final Lcom/transsion/room/sub/adapter/likes/b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/adapter/likes/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/transsion/room/sub/adapter/likes/b$a;

    .line 10
    .line 11
    sget v1, Lcom/transsion/room/R$string;->play_hub:I

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "getString(...)"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v3}, Lcom/transsion/room/sub/adapter/likes/b$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/transsion/room/sub/adapter/likes/b$a;

    .line 31
    .line 32
    sget v3, Lcom/transsion/room/R$string;->buzz_box:I

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->Companion:Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/room/sub/adapter/likes/b;->g()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-class v4, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v1, p1, v2}, Lcom/transsion/room/sub/adapter/likes/b$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    new-array p1, p1, [Lcom/transsion/room/sub/adapter/likes/b$a;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    aput-object v0, p1, v2

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    aput-object v1, p1, v0

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/likes/b;->a:Ljava/util/List;

    .line 70
    .line 71
    return-void
.end method

.method private final g()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "source"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/adapter/likes/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsion/room/sub/adapter/likes/b$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/room/sub/adapter/likes/b$a;->a()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/adapter/likes/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/adapter/likes/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsion/room/sub/adapter/likes/b$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/room/sub/adapter/likes/b$a;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
