.class public final synthetic Lffc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic a:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffc;->a:Lifc;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Lcom/transsion/tranplayer/IMediaPlayer;IIII)V
    .locals 6

    iget-object v0, p0, Lffc;->a:Lifc;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lifc;->U(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;IIII)V

    return-void
.end method
