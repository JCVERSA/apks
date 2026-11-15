.class public final synthetic Lcom/google/android/gms/internal/ads/zzekl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Le5h;


# direct methods
.method public synthetic constructor <init>(Le5h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekl;->zza:Le5h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzekl;->zza:Le5h;

    iget-object p0, p0, Le5h;->e:Lf5h;

    invoke-static {p0}, Lf5h;->c(Lf5h;)Lz4h;

    move-result-object p0

    invoke-virtual {p0}, Lz4h;->b()Lb1g;

    move-result-object p0

    invoke-interface {p0}, Lb1g;->zzt()V

    return-void
.end method
