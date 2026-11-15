.class public final synthetic Llnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Lt8g;

.field public final synthetic b:Lwpf;

.field public final synthetic c:Lwth;

.field public final synthetic d:Ldwg;


# direct methods
.method public synthetic constructor <init>(Lt8g;Lwpf;Lwth;Ldwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnh;->a:Lt8g;

    iput-object p2, p0, Llnh;->b:Lwpf;

    iput-object p3, p0, Llnh;->c:Lwth;

    iput-object p4, p0, Llnh;->d:Ldwg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Llnh;->a:Lt8g;

    check-cast p1, Lejf;

    invoke-static {p2, v0}, Lm3f;->c(Ljava/util/Map;Lt8g;)V

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "URL missing from click GMSG."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Llnh;->d:Ldwg;

    iget-object v1, p0, Llnh;->c:Lwth;

    iget-object p0, p0, Llnh;->b:Lwpf;

    invoke-static {p1, p2}, Lm3f;->a(Lejf;Ljava/lang/String;)Lim5;

    move-result-object p2

    new-instance v2, Lnnh;

    invoke-direct {v2, p1, p0, v1, v0}, Lnnh;-><init>(Lejf;Lwpf;Lwth;Ldwg;)V

    sget-object p0, Lzef;->a:Lg8i;

    invoke-static {p2, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method
