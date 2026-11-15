.class public final synthetic Lbxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    iget-object p0, p0, Lbxb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l(Lcom/transsion/magicvideo/player/VideoPlayManager;I)V

    return-void
.end method
