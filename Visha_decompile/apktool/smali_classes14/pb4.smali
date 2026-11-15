.class public final synthetic Lpb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    iget-object p0, p0, Lpb4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->o(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;I)V

    return-void
.end method
