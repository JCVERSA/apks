.class public final Lqtf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/i4;

.field public final b:Lj5g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/i4;Lj5g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqtf;->a:Lcom/google/android/gms/internal/ads/i4;

    iput-object p2, p0, Lqtf;->b:Lj5g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/i4;
    .locals 0

    iget-object p0, p0, Lqtf;->a:Lcom/google/android/gms/internal/ads/i4;

    return-object p0
.end method

.method public final b()Lj5g;
    .locals 0

    iget-object p0, p0, Lqtf;->b:Lj5g;

    return-object p0
.end method

.method public final c()Li8g;
    .locals 2

    iget-object v0, p0, Lqtf;->b:Lj5g;

    if-eqz v0, :cond_0

    new-instance p0, Li8g;

    sget-object v1, Lzef;->g:Lg8i;

    invoke-direct {p0, v0, v1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object p0

    :cond_0
    new-instance v0, Li8g;

    new-instance v1, Lptf;

    invoke-direct {v1, p0}, Lptf;-><init>(Lqtf;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-direct {v0, v1, p0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
