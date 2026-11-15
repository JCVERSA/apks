.class Lcom/avery/subtitle/SubtitleLoader$LocalTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avery/subtitle/SubtitleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTask"
.end annotation


# instance fields
.field mCallback:Lcom/avery/subtitle/SubtitleLoader$a;

.field mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mCallback:Lcom/avery/subtitle/SubtitleLoader$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avery/subtitle/SubtitleLoader;->b(Ljava/lang/String;)Lzna;

    move-result-object v0

    iget-object v1, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mCallback:Lcom/avery/subtitle/SubtitleLoader$a;

    if-eqz v1, :cond_0

    invoke-static {}, Lgf;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;

    invoke-direct {v2, p0, v0}, Lcom/avery/subtitle/SubtitleLoader$LocalTask$1;-><init>(Lcom/avery/subtitle/SubtitleLoader$LocalTask;Lzna;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/avery/subtitle/SubtitleLoader$LocalTask;->mCallback:Lcom/avery/subtitle/SubtitleLoader$a;

    if-eqz v1, :cond_0

    invoke-static {}, Lgf;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;

    invoke-direct {v2, p0, v0}, Lcom/avery/subtitle/SubtitleLoader$LocalTask$2;-><init>(Lcom/avery/subtitle/SubtitleLoader$LocalTask;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method
