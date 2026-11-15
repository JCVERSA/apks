.class public final Lv3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/google/android/gms/ads/internal/client/zza;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lz3f;


# direct methods
.method public constructor <init>(Lz3f;Ljava/util/Map;Lcom/google/android/gms/ads/internal/client/zza;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lv3f;->a:Ljava/util/Map;

    iput-object p3, p0, Lv3f;->b:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p4, p0, Lv3f;->c:Ljava/lang/String;

    iput-object p1, p0, Lv3f;->d:Lz3f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "OpenGmsgHandler.attributionReportingManager"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcye;->ha:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3f;->a:Ljava/util/Map;

    const-string v1, "u"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lv3f;->d:Lz3f;

    iget-object v1, p0, Lv3f;->b:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object v2, p0, Lv3f;->a:Ljava/util/Map;

    iget-object p0, p0, Lv3f;->c:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p0}, Lz3f;->e(Lz3f;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
