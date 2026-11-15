.class public final synthetic Ldfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnTimedTextListener;


# instance fields
.field public final synthetic b:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfc;->b:Lifc;

    return-void
.end method


# virtual methods
.method public final onTimedText(Lcom/transsion/tranplayer/IMediaPlayer;Lcom/transsion/tranplayer/ITimedText;)V
    .locals 0

    iget-object p0, p0, Ldfc;->b:Lifc;

    invoke-virtual {p0, p1, p2}, Lifc;->onTimedText(Lcom/transsion/tranplayer/IMediaPlayer;Lcom/transsion/tranplayer/ITimedText;)V

    return-void
.end method
