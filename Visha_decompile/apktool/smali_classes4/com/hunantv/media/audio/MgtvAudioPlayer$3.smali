.class Lcom/hunantv/media/audio/MgtvAudioPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/audio/MgtvAudioPlayer;->openPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/audio/MgtvAudioPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/audio/MgtvAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer$3;->this$0:Lcom/hunantv/media/audio/MgtvAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/audio/MgtvAudioPlayer$3;->this$0:Lcom/hunantv/media/audio/MgtvAudioPlayer;

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/audio/MgtvAudioPlayer;->access$200(Lcom/hunantv/media/audio/MgtvAudioPlayer;II)V

    return-void
.end method
