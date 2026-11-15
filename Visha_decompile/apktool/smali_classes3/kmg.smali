.class public final Lkmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkmg;
    .locals 1

    sget-object v0, Ljmg;->a:Lkmg;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 3

    new-instance p0, Lumg;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzffn;->zzA:Lcom/google/android/gms/internal/ads/zzffn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffn;->zzd:Lcom/google/android/gms/internal/ads/zzffn;

    const-string v2, "t_load_as"

    invoke-direct {p0, v2, v0, v1}, Lumg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffn;Lcom/google/android/gms/internal/ads/zzffn;)V

    return-object p0
.end method
