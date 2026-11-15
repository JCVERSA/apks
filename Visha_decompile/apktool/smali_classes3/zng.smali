.class public final Lzng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzng;->a:Lqyi;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzbki;)Lyng;
    .locals 1

    new-instance v0, Lyng;

    invoke-direct {v0, p0}, Lyng;-><init>(Lcom/google/android/gms/internal/ads/zzbki;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lyng;
    .locals 1

    iget-object p0, p0, Lzng;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbki;

    new-instance v0, Lyng;

    invoke-direct {v0, p0}, Lyng;-><init>(Lcom/google/android/gms/internal/ads/zzbki;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lzng;->a()Lyng;

    move-result-object p0

    return-object p0
.end method
