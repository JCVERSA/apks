.class public final Ljsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llsg;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lg8i;

.field public final c:Lj2g;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lg8i;Lj2g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljsg;->a:Ljava/util/Map;

    iput-object p2, p0, Ljsg;->b:Lg8i;

    iput-object p3, p0, Ljsg;->c:Lj2g;

    return-void
.end method

.method public static bridge synthetic b(Ljsg;)Lj2g;
    .locals 0

    iget-object p0, p0, Ljsg;->c:Lj2g;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 7

    iget-object v0, p0, Ljsg;->c:Lj2g;

    invoke-virtual {v0, p1}, Lj2g;->g(Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object v0

    sget-object v1, Lcye;->o8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Ljsg;->a:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvyi;

    if-eqz v4, :cond_0

    new-instance v5, Lhsg;

    invoke-direct {v5, v4, p1}, Lhsg;-><init>(Lvyi;Lcom/google/android/gms/internal/ads/zzbuy;)V

    iget-object v4, p0, Ljsg;->b:Lg8i;

    const-class v6, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-static {v0, v6, v5, v4}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lisg;

    invoke-direct {p1, p0}, Lisg;-><init>(Ljsg;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
