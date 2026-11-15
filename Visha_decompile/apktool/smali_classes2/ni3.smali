.class public final synthetic Lni3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/j;

.field public final synthetic c:Lcom/google/android/exoplayer2/u;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni3;->b:Lcom/google/android/exoplayer2/j;

    iput-object p2, p0, Lni3;->c:Lcom/google/android/exoplayer2/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lni3;->b:Lcom/google/android/exoplayer2/j;

    iget-object p0, p0, Lni3;->c:Lcom/google/android/exoplayer2/u;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/u;)V

    return-void
.end method
