.class public abstract Lcom/google/android/gms/internal/ads/g8;
.super Lcom/google/android/gms/internal/ads/w7;
.source "SourceFile"


# static fields
.field public static final d:Lf7i;

.field public static final e:Le8i;


# instance fields
.field public volatile b:Ljava/util/Set;

.field public volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Le8i;

    const-class v1, Lcom/google/android/gms/internal/ads/g8;

    invoke-direct {v0, v1}, Le8i;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/g8;->e:Le8i;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lg7i;

    invoke-direct {v1, v0}, Lg7i;-><init>(Li7i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lh7i;

    invoke-direct {v2, v0}, Lh7i;-><init>(Li7i;)V

    move-object v8, v1

    move-object v1, v2

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/g8;->d:Lf7i;

    if-eqz v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/g8;->e:Le8i;

    invoke-virtual {v0}, Le8i;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/w7;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g8;->b:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/g8;->c:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/android/gms/internal/ads/g8;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/g8;->c:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/google/android/gms/internal/ads/g8;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g8;->b:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/google/android/gms/internal/ads/g8;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/g8;->c:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/android/gms/internal/ads/g8;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g8;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract h(Ljava/util/Set;)V
.end method

.method public final j()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g8;->d:Lf7i;

    invoke-virtual {v0, p0}, Lf7i;->a(Lcom/google/android/gms/internal/ads/g8;)I

    move-result p0

    return p0
.end method

.method public final l()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g8;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/g8;->h(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/g8;->d:Lf7i;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lf7i;->b(Lcom/google/android/gms/internal/ads/g8;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g8;->b:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g8;->b:Ljava/util/Set;

    return-void
.end method
