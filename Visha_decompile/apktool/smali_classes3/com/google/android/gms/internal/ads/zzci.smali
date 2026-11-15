.class public final synthetic Lcom/google/android/gms/internal/ads/zzci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Loeg;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Loeg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzci;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzci;->zzb:Loeg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zza:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzb:Loeg;

    invoke-static {v0, p0}, Lfnf;->d(Landroid/content/Context;Loeg;)V

    return-void
.end method
