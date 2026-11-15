.class public final synthetic Lcom/transsion/videodetail/music/ui/w;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

.field public final synthetic b:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/w;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/videodetail/music/ui/w;->b:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/w;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/w;->b:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->u0(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Z)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
