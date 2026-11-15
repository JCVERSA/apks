.class public final synthetic Lwec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwec;->a:Lifc;

    return-void
.end method


# virtual methods
.method public final onCompletion(Lcom/transsion/tranplayer/IMediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lwec;->a:Lifc;

    invoke-static {p0, p1}, Lifc;->a0(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;)V

    return-void
.end method
