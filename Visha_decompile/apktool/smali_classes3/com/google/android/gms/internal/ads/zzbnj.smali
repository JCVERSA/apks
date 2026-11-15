.class public final synthetic Lcom/google/android/gms/internal/ads/zzbnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lp6f;

.field public final synthetic zzb:Ls5f;


# direct methods
.method public synthetic constructor <init>(Lp6f;Ls5f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zza:Lp6f;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzb:Ls5f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbnj;->zzb:Ls5f;

    const-string v0, "/result"

    sget-object v1, Lm3f;->o:Ld4f;

    invoke-interface {p0, v0, v1}, Lr6f;->a(Ljava/lang/String;Ln3f;)V

    invoke-interface {p0}, Ls5f;->zzc()V

    return-void
.end method
