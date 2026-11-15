.class public final Lbnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;


# instance fields
.field public final a:Lzlf;

.field public b:Lryf;

.field public c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbnf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lryf;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 0

    iput-object p1, p0, Lbnf;->b:Lryf;

    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 0

    iput-object p1, p0, Lbnf;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
    .locals 11

    iget-object v0, p0, Lbnf;->b:Lryf;

    const-class v1, Lryf;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lbnf;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/e4;

    iget-object v4, p0, Lbnf;->c:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    new-instance v5, Livf;

    invoke-direct {v5}, Livf;-><init>()V

    new-instance v6, Lqxf;

    invoke-direct {v6}, Lqxf;-><init>()V

    new-instance v7, Lfng;

    invoke-direct {v7}, Lfng;-><init>()V

    iget-object v8, p0, Lbnf;->b:Lryf;

    iget-object v3, p0, Lbnf;->a:Lzlf;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/e4;-><init>(Lzlf;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;Livf;Lqxf;Lfng;Lryf;Lakh;Lajh;)V

    return-object v0
.end method
