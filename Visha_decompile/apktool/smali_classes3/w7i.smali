.class public final Lw7i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzfww;Lx7i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw7i;->a:Z

    iput-object p2, p0, Lw7i;->b:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/h8;

    iget-object v1, p0, Lw7i;->b:Lcom/google/android/gms/internal/ads/zzfww;

    iget-boolean p0, p0, Lw7i;->a:Z

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/h8;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
