.class public Lcom/transsion/liblan/util/Dumper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/util/Dumper$Listener;
    }
.end annotation


# instance fields
.field private final mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

.field private final mListener:Lcom/transsion/liblan/util/Dumper$Listener;

.field private final mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/transsion/liblan/util/Dumper$Listener;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/transsion/liblan/util/Dumper;->mListener:Lcom/transsion/liblan/util/Dumper$Listener;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "--demux"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "dump2,none"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "--demuxdump-file"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "--no-video"

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "--no-audio"

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "--no-spu"

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "-vv"

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/transsion/liblan/TranLibLAN;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3}, Lcom/transsion/liblan/TranLibLAN;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/transsion/liblan/util/Dumper;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    new-instance p3, Lcom/transsion/liblan/TranMedia;

    invoke-direct {p3, p2, p1}, Lcom/transsion/liblan/TranMedia;-><init>(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)V

    new-instance p1, Lcom/transsion/liblan/TranMediaPlayer;

    invoke-direct {p1, p3}, Lcom/transsion/liblan/TranMediaPlayer;-><init>(Lcom/transsion/liblan/interfaces/ITranMedia;)V

    iput-object p1, p0, Lcom/transsion/liblan/util/Dumper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    new-instance p2, Lcom/transsion/liblan/util/Dumper$1;

    invoke-direct {p2, p0}, Lcom/transsion/liblan/util/Dumper$1;-><init>(Lcom/transsion/liblan/util/Dumper;)V

    invoke-virtual {p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->setEventListener(Lcom/transsion/liblan/TranMediaPlayer$EventListener;)V

    invoke-interface {p3}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arguments shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/util/Dumper;)Lcom/transsion/liblan/util/Dumper$Listener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/Dumper;->mListener:Lcom/transsion/liblan/util/Dumper$Listener;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/transsion/liblan/util/Dumper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaPlayer;->stop()V

    iget-object v0, p0, Lcom/transsion/liblan/util/Dumper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranMediaPlayer;->release()V

    iget-object p0, p0, Lcom/transsion/liblan/util/Dumper;->mITranLibLAN:Lcom/transsion/liblan/interfaces/ITranLibLAN;

    invoke-interface {p0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/util/Dumper;->mTranMediaPlayer:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->play()V

    return-void
.end method
