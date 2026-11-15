.class public final Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/adapter/CommunityRoomsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecommendRoomsItemVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lfp/v;",
        "viewBinding",
        "<init>",
        "(Lfp/v;)V",
        "a",
        "Lfp/v;",
        "f",
        "()Lfp/v;",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lfp/v;


# direct methods
.method public constructor <init>(Lfp/v;)V
    .locals 2

    .line 1
    const-string v0, "viewBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfp/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->a:Lfp/v;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f()Lfp/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/adapter/CommunityRoomsAdapter$RecommendRoomsItemVH;->a:Lfp/v;

    .line 2
    .line 3
    return-object v0
.end method
