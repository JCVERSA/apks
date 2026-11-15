.class public final Lcom/transsion/room/widget/RoomsHomeBaseView$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/widget/RoomsHomeBaseView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/widget/RoomsHomeBaseView;


# direct methods
.method constructor <init>(Lcom/transsion/room/widget/RoomsHomeBaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsHomeBaseView$a;->a:Lcom/transsion/room/widget/RoomsHomeBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/room/widget/RoomsHomeBaseView$a;->a:Lcom/transsion/room/widget/RoomsHomeBaseView;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/room/widget/RoomsHomeBaseView;->access$handleExposureEvent(Lcom/transsion/room/widget/RoomsHomeBaseView;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/room/widget/RoomsHomeBaseView$a;->a:Lcom/transsion/room/widget/RoomsHomeBaseView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/room/widget/RoomsHomeBaseView;->access$handleExposureEvent(Lcom/transsion/room/widget/RoomsHomeBaseView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
