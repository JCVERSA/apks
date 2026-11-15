.class public final Lcom/google/android/gms/location/b;
.super Lbme;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/d;

.field public final synthetic c:Lcom/google/android/gms/location/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/common/api/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/b;->c:Lcom/google/android/gms/location/a;

    iput-object p2, p0, Lcom/google/android/gms/location/b;->b:Lcom/google/android/gms/common/api/internal/d;

    invoke-direct {p0}, Lbme;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lzue;

    check-cast p2, Lzda;

    invoke-virtual {p0}, Lbme;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/b;->c:Lcom/google/android/gms/location/a;

    new-instance v1, Lcom/google/android/gms/location/zzal;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/location/zzal;-><init>(Lcom/google/android/gms/location/a;Lzda;)V

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/location/b;->b:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->b()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0, v1}, Lzue;->N(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/internal/location/zzai;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p2, p0}, Lzda;->d(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
