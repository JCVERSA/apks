.class public final synthetic Lfae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las8;


# instance fields
.field public final a:Lcom/google/android/gms/location/a;

.field public final b:Lbme;

.field public final c:Lio5;

.field public final d:Lfke;

.field public final e:Lcom/google/android/gms/internal/location/zzba;

.field public final f:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/a;Lbme;Lio5;Lfke;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfae;->a:Lcom/google/android/gms/location/a;

    iput-object p2, p0, Lfae;->b:Lbme;

    iput-object p3, p0, Lfae;->c:Lio5;

    iput-object p4, p0, Lfae;->d:Lfke;

    iput-object p5, p0, Lfae;->e:Lcom/google/android/gms/internal/location/zzba;

    iput-object p6, p0, Lfae;->f:Lcom/google/android/gms/common/api/internal/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lfae;->a:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lfae;->b:Lbme;

    iget-object v2, p0, Lfae;->c:Lio5;

    iget-object v3, p0, Lfae;->d:Lfke;

    iget-object v4, p0, Lfae;->e:Lcom/google/android/gms/internal/location/zzba;

    iget-object v5, p0, Lfae;->f:Lcom/google/android/gms/common/api/internal/d;

    move-object v6, p1

    check-cast v6, Lzue;

    move-object v7, p2

    check-cast v7, Lzda;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/location/a;->y(Lbme;Lio5;Lfke;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/d;Lzue;Lzda;)V

    return-void
.end method
