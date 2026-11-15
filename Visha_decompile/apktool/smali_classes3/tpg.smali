.class public final Ltpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzdva;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Ltpg;->a:Ljava/lang/String;

    iput-object p1, p0, Ltpg;->b:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lqog;

    invoke-virtual {p1}, Lqog;->c()V

    iget-object p1, p0, Ltpg;->b:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzb(Lcom/google/android/gms/internal/ads/zzdva;)Ljpg;

    move-result-object p1

    iget-object p0, p0, Ltpg;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljpg;->e(Ljava/lang/String;)V

    return-void
.end method
