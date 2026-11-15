.class Lcom/hunantv/media/player/subtitle/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/subtitle/d;->a(Lcom/hunantv/media/player/subtitle/d$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/d;

.field final synthetic b:J

.field final synthetic c:Lcom/hunantv/media/player/subtitle/d;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/d;J)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d$1;->c:Lcom/hunantv/media/player/subtitle/d;

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/d$1;->a:Lcom/hunantv/media/player/subtitle/d;

    iput-wide p3, p0, Lcom/hunantv/media/player/subtitle/d$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$1;->a:Lcom/hunantv/media/player/subtitle/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$1;->c:Lcom/hunantv/media/player/subtitle/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hunantv/media/player/subtitle/d;->a(Lcom/hunantv/media/player/subtitle/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$1;->c:Lcom/hunantv/media/player/subtitle/d;

    iget-wide v2, p0, Lcom/hunantv/media/player/subtitle/d$1;->b:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Lcom/hunantv/media/player/subtitle/d;->a(ZJ)V

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$1;->c:Lcom/hunantv/media/player/subtitle/d;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d;->d:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Lcom/hunantv/media/player/subtitle/d;->a(Ljava/util/Vector;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
