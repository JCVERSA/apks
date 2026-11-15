.class public final synthetic Lku/y0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$m;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lku/y0;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 5
    .line 6
    iput-object p2, p0, Lku/y0;->b:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    .line 7
    .line 8
    iput-boolean p3, p0, Lku/y0;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lku/y0;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    .line 3
    iget-object v1, p0, Lku/y0;->b:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    .line 4
    .line 5
    iget-boolean v2, p0, Lku/y0;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;->t(Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
