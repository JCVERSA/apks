.class public final synthetic Ljv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    iget-object p0, p0, Ljv6;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->f(Lcom/transsion/audio/player/MusicPlayManager;I)V

    return-void
.end method
