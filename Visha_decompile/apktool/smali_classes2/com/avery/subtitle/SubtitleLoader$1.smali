.class Lcom/avery/subtitle/SubtitleLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/SubtitleLoader;->g(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avery/subtitle/SubtitleLoader$a;

.field final synthetic val$remoteSubtitlePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/avery/subtitle/SubtitleLoader$1;->val$remoteSubtitlePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/avery/subtitle/SubtitleLoader$1;->val$callback:Lcom/avery/subtitle/SubtitleLoader$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/avery/subtitle/SubtitleLoader$1;->val$remoteSubtitlePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avery/subtitle/SubtitleLoader;->a(Ljava/lang/String;)Lzna;

    move-result-object v0

    iget-object v1, p0, Lcom/avery/subtitle/SubtitleLoader$1;->val$callback:Lcom/avery/subtitle/SubtitleLoader$a;

    if-eqz v1, :cond_0

    invoke-static {}, Lgf;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/avery/subtitle/SubtitleLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/avery/subtitle/SubtitleLoader$1$1;-><init>(Lcom/avery/subtitle/SubtitleLoader$1;Lzna;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/avery/subtitle/SubtitleLoader$1;->val$callback:Lcom/avery/subtitle/SubtitleLoader$a;

    if-eqz v1, :cond_0

    invoke-static {}, Lgf;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/avery/subtitle/SubtitleLoader$1$2;

    invoke-direct {v2, p0, v0}, Lcom/avery/subtitle/SubtitleLoader$1$2;-><init>(Lcom/avery/subtitle/SubtitleLoader$1;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method
