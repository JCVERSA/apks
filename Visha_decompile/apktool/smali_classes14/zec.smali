.class public final synthetic Lzec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzec;->a:Lifc;

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lzec;->a:Lifc;

    invoke-static {p0, p1}, Lifc;->T(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;)V

    return-void
.end method
