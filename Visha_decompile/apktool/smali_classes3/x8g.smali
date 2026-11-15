.class public final Lx8g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lwth;

.field public final c:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field public d:Z


# direct methods
.method public constructor <init>(Lhmh;Lwth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhmh;->p:Ljava/util/List;

    iput-object v0, p0, Lx8g;->a:Ljava/util/List;

    iput-object p2, p0, Lx8g;->b:Lwth;

    iget-object p1, p1, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iput-object p1, p0, Lx8g;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lx8g;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lx8g;->b:Lwth;

    iget-object v1, p0, Lx8g;->a:Ljava/util/List;

    iget-object v2, p0, Lx8g;->c:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {v0, v1, v2}, Lwth;->e(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx8g;->d:Z

    :cond_0
    return-void
.end method
