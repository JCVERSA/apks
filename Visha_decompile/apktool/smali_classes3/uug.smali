.class public final synthetic Luug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/y4;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/v0;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/y4;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/v0;Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luug;->a:Lcom/google/android/gms/internal/ads/y4;

    iput-boolean p2, p0, Luug;->b:Z

    iput-object p3, p0, Luug;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Luug;->d:Lcom/google/android/gms/internal/ads/v0;

    iput-object p5, p0, Luug;->e:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Luug;->a:Lcom/google/android/gms/internal/ads/y4;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/y4;->b:Lcom/google/android/gms/internal/ads/z4;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lvug;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Luug;->e:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    iget-object v2, p0, Luug;->d:Lcom/google/android/gms/internal/ads/v0;

    iget-object v3, p0, Luug;->c:Ljava/util/ArrayList;

    iget-boolean p0, p0, Luug;->b:Z

    invoke-static {v0, p0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/z4;->f(Lcom/google/android/gms/internal/ads/z4;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/v0;Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/internal/ads/a5;->f(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z4;->d(Lcom/google/android/gms/internal/ads/z4;)Lpug;

    move-result-object p0

    invoke-virtual {p0}, Lpug;->d()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/a5;->c(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
