.class Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzh8;


# direct methods
.method public constructor <init>(Lzh8;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelWork()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lzh8;->a(Lzh8;)Lcq0;

    move-result-object p0

    invoke-virtual {p0}, Lcq0;->b()V

    return-void
.end method

.method public bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->doWork()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doWork()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lzh8;->a(Lzh8;)Lcq0;

    move-result-object v0

    invoke-virtual {v0}, Lcq0;->a()V

    return-object p0
.end method
