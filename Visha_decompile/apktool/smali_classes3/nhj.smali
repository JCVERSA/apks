.class public final Lnhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzu;)V
    .locals 0

    iput-object p1, p0, Lnhj;->b:Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lnhj;->b:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzm(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzc(Lcom/google/android/gms/ads/internal/zzu;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lere;->I:I

    new-instance v1, Lcre;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcre;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0, v1}, Lere;->o(Landroid/content/Context;Lcre;)Lere;

    move-result-object p0

    new-instance v0, Lfre;

    invoke-direct {v0, p0}, Lfre;-><init>(Lare;)V

    return-object v0
.end method
