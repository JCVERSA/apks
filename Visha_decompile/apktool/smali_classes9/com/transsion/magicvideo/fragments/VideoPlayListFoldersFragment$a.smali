.class public Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$a;
.super Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$a;->f:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    invoke-direct {p0, p2, p3}, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p4, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$a;->f:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    iget-boolean p4, p4, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->e0:Z

    if-nez p4, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    const/16 p4, 0x111

    if-ne p4, p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;->a(Landroid/graphics/Rect;I)V

    return-void
.end method
