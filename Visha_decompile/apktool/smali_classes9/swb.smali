.class public final synthetic Lswb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/adapter/PlayListAdapter$a;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lswb;->a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    iget-object p0, p0, Lswb;->a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method
