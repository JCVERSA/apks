.class public final Lypf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkzf;


# instance fields
.field public final b:Lhmh;

.field public final c:Ltef;


# direct methods
.method public constructor <init>(Lhmh;Ltef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lypf;->b:Lhmh;

    iput-object p2, p0, Lypf;->c:Ltef;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lypf;->b:Lhmh;

    iget-boolean v0, v0, Lhmh;->r0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lypf;->c:Ltef;

    invoke-virtual {p0}, Ltef;->j()V

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method
