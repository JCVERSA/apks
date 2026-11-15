.class public final synthetic Lcom/transsion/player/orplayer/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnStateChangedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/player/orplayer/q;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/orplayer/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/player/orplayer/m;->a:Lcom/transsion/player/orplayer/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/orplayer/m;->a:Lcom/transsion/player/orplayer/q;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/player/orplayer/q;->j(Lcom/transsion/player/orplayer/q;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
