.class public final synthetic Lhaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/player/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/player/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhaa;->b:Lcom/transsion/playercommon/player/c;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Lhaa;->b:Lcom/transsion/playercommon/player/c;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/player/c;->W(Lcom/transsion/playercommon/player/c;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
