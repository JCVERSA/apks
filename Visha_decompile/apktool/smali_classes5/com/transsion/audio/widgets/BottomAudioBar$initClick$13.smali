.class public final Lcom/transsion/audio/widgets/BottomAudioBar$initClick$13;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/BottomAudioBar;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/transsion/audio/widgets/BottomAudioBar$initClick$13",
        "Lux0;",
        "Landroid/view/View;",
        "v",
        "Lzfb;",
        "onNoDoubleClick",
        "(Landroid/view/View;)V",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/BottomAudioBar;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$13;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lux0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$13;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    const-string p0, "audio_play_next"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
