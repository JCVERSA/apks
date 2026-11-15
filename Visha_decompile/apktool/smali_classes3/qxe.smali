.class public abstract Lqxe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lpxe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lqxe;->a:I

    iput-object p2, p0, Lqxe;->b:Ljava/lang/String;

    iput-object p3, p0, Lqxe;->c:Ljava/lang/Object;

    iput-object p4, p0, Lqxe;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Luxe;

    move-result-object p1

    invoke-virtual {p1, p0}, Luxe;->d(Lqxe;)V

    return-void
.end method

.method public static f(ILjava/lang/String;FF)Lqxe;
    .locals 1

    new-instance p0, Lnxe;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lnxe;-><init>(ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object p0
.end method

.method public static g(ILjava/lang/String;II)Lqxe;
    .locals 1

    new-instance p0, Llxe;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Llxe;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static h(ILjava/lang/String;JJ)Lqxe;
    .locals 0

    new-instance p0, Lmxe;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lmxe;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static i(ILjava/lang/String;)Lqxe;
    .locals 2

    new-instance p0, Loxe;

    const/4 p1, 0x1

    const-string v0, "gads:sdk_core_constants:experiment_id"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Loxe;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Luxe;

    move-result-object p1

    invoke-virtual {p1, p0}, Luxe;->c(Lqxe;)V

    return-object p0
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Ljava/lang/Object;
.end method

.method public abstract b(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract c(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public abstract d(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lqxe;->a:I

    return p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0}, Laye;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lqxe;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lqxe;->c:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqxe;->b:Ljava/lang/String;

    return-object p0
.end method
