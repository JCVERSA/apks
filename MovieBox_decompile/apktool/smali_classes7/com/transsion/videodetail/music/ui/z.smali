.class public final synthetic Lcom/transsion/videodetail/music/ui/z;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/z;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/z;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->C0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lcom/transsion/videodetail/bean/VideoDetailStreamList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
