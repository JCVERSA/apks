.class public final Lv7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lim5;


# direct methods
.method public constructor <init>(Lim5;Ljava/lang/String;Lw6f;Lv6f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7f;->b:Lim5;

    const-string p1, "google.afma.activeView.handleUpdate"

    iput-object p1, p0, Lv7f;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lv7f;Ljava/lang/Object;Lr6f;)Lim5;
    .locals 4

    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lm3f;->o:Ld4f;

    new-instance v3, Lu7f;

    invoke-direct {v3, p0, v0}, Lu7f;-><init>(Lv7f;Leff;)V

    invoke-virtual {v2, v1, v3}, Ld4f;->c(Ljava/lang/String;Lc4f;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "args"

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lv7f;->a:Ljava/lang/String;

    invoke-interface {p2, p0, v2}, Lx5f;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lim5;
    .locals 1

    new-instance v0, Lt7f;

    invoke-direct {v0, p0, p1}, Lt7f;-><init>(Lv7f;Ljava/lang/Object;)V

    iget-object p0, p0, Lv7f;->b:Lim5;

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    invoke-virtual {p0, p1}, Lv7f;->b(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
