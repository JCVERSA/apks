.class public final synthetic Lyec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyec;->a:Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lyec;->a:Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;

    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-static {p0, p1}, Lifc;->S(Lcom/transsion/tranplayer/MediaPlayer$TrackDescription;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z

    move-result p0

    return p0
.end method
