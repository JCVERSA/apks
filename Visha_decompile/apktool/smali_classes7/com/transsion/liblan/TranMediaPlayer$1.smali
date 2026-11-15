.class Lcom/transsion/liblan/TranMediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/TranWindow$SurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/TranMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfacesCreated(Lcom/transsion/liblan/TranWindow;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-static {v0}, Lcom/transsion/liblan/TranMediaPlayer;->b(Lcom/transsion/liblan/TranMediaPlayer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-static {v0}, Lcom/transsion/liblan/TranMediaPlayer;->a(Lcom/transsion/liblan/TranMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-static {v0}, Lcom/transsion/liblan/TranMediaPlayer;->c(Lcom/transsion/liblan/TranMediaPlayer;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->play()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfacesDestroyed(Lcom/transsion/liblan/TranWindow;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-static {v0}, Lcom/transsion/liblan/TranMediaPlayer;->c(Lcom/transsion/liblan/TranMediaPlayer;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer$1;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0, v1}, Lcom/transsion/liblan/TranMediaPlayer;->setVideoTrackEnabled(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
