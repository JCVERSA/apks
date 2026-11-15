.class public final synthetic Lcom/google/android/gms/internal/ads/zzeyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lckh;


# direct methods
.method public synthetic constructor <init>(Lckh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lckh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lckh;

    iget-object p0, p0, Lckh;->e:Ldkh;

    invoke-static {p0}, Ldkh;->c(Ldkh;)Lhlh;

    move-result-object p0

    invoke-virtual {p0}, Lhlh;->zzt()V

    return-void
.end method
