.class public final synthetic Liaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/player/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/player/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liaa;->b:Lcom/transsion/playercommon/player/c;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Liaa;->b:Lcom/transsion/playercommon/player/c;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/player/c;->S(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;)V

    return-void
.end method
