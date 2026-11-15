.class Lcom/transsion/audio/player/MusicPlayManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/player/MusicPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$2;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager$2;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {v0}, Lcom/transsion/audio/player/MusicPlayManager;->u(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager$2;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {v1}, Lcom/transsion/audio/player/MusicPlayManager;->v(Lcom/transsion/audio/player/MusicPlayManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager$2;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p0}, Lcom/transsion/audio/player/MusicPlayManager;->x(Lcom/transsion/audio/player/MusicPlayManager;)V

    return-void
.end method
