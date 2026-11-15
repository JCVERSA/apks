.class public final Lcom/transsion/room/fragment/RoomBaseFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomBaseFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomBaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomBaseFragment$c;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$c;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/room/fragment/RoomBaseFragment;->m0(I)Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/transsion/baseui/fragment/EmptyFragment;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$c;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->y0()Ljava/util/List;

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
