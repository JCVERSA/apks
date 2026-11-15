.class public final synthetic Lcom/google/android/exoplayer2/audio/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/o;->a:Lcom/google/android/exoplayer2/audio/r$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/o;->b:Ljava/lang/Exception;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/o;->a:Lcom/google/android/exoplayer2/audio/r$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/o;->b:Ljava/lang/Exception;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/r$a;->h(Lcom/google/android/exoplayer2/audio/r$a;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
