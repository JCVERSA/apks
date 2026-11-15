.class public abstract Lom8;
.super Lmm8;
.source "SourceFile"


# instance fields
.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmm8;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lom8;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
