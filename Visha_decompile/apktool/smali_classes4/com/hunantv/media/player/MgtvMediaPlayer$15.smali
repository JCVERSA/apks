.class Lcom/hunantv/media/player/MgtvMediaPlayer$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$15;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingTimeout(II)Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$15;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12700(Lcom/hunantv/media/player/MgtvMediaPlayer;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method
