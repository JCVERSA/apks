.class Lcom/hunantv/media/player/MgtvMediaPlayer$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$17;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordVideoErr(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$17;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13000(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V

    return-void
.end method

.method public onRecordVideoInfo(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$17;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12900(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V

    return-void
.end method
