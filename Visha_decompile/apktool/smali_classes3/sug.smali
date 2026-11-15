.class public final synthetic Lsug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpqh;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/x4;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/x4;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsug;->a:Lcom/google/android/gms/internal/ads/x4;

    iput-wide p2, p0, Lsug;->b:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsug;->a:Lcom/google/android/gms/internal/ads/x4;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lvug;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lsug;->b:J

    invoke-static {}, Lcom/google/android/gms/internal/ads/y0;->E0()Lcom/google/android/gms/internal/ads/z0;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/z0;->G(J)Lcom/google/android/gms/internal/ads/z0;

    invoke-virtual {p0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/y0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2}, Lcom/google/android/gms/internal/ads/a5;->f(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/a5;->c(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
