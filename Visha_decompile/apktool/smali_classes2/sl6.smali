.class public final synthetic Lsl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/source/j$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/j;

.field public final synthetic d:Lih6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lih6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl6;->b:Lcom/google/android/exoplayer2/source/j$a;

    iput-object p2, p0, Lsl6;->c:Lcom/google/android/exoplayer2/source/j;

    iput-object p3, p0, Lsl6;->d:Lih6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lsl6;->b:Lcom/google/android/exoplayer2/source/j$a;

    iget-object v1, p0, Lsl6;->c:Lcom/google/android/exoplayer2/source/j;

    iget-object p0, p0, Lsl6;->d:Lih6;

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/source/j$a;->d(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lih6;)V

    return-void
.end method
