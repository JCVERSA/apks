.class public final Ln4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2g;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ln4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 0

    iget-object p0, p0, Ln4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 1

    new-instance v0, Lm4h;

    invoke-direct {v0, p1}, Lm4h;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    iget-object p0, p0, Ln4h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method
