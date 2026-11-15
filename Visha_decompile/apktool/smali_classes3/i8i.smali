.class public final synthetic Li8i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/x7;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8i;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Li8i;->c:Lcom/google/android/gms/internal/ads/x7;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Li8i;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Li8i;->c:Lcom/google/android/gms/internal/ads/x7;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/m8;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;Ljava/lang/Runnable;)V

    return-void
.end method
