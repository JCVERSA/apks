.class public final Lcom/transsion/room/fragment/RoomListMainFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomListMainFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomListMainFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/room/fragment/RoomMyListFragment;->o:Lcom/transsion/room/fragment/RoomMyListFragment$a;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->c0(Lcom/transsion/room/fragment/RoomListMainFragment;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/transsion/room/fragment/RoomMyListFragment$a;->a(ZLjava/lang/String;)Lcom/transsion/room/fragment/RoomMyListFragment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/transsion/room/fragment/RoomFilterListFragment;->f:Lcom/transsion/room/fragment/RoomFilterListFragment$a;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->c0(Lcom/transsion/room/fragment/RoomListMainFragment;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/transsion/room/fragment/RoomFilterListFragment$a;->a(Z)Lcom/transsion/room/fragment/RoomFilterListFragment;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$d;->a:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    return v0
.end method
