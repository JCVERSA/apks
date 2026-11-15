.class public final synthetic Lafc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/IMediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafc;->a:Lifc;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/transsion/tranplayer/IMediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Lafc;->a:Lifc;

    invoke-static {p0, p1, p2, p3}, Lifc;->V(Lifc;Lcom/transsion/tranplayer/IMediaPlayer;II)Z

    move-result p0

    return p0
.end method
