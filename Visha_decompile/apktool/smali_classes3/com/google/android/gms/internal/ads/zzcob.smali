.class public final synthetic Lcom/google/android/gms/internal/ads/zzcob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lwrf;


# direct methods
.method public synthetic constructor <init>(Lwrf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcob;->zza:Lwrf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcob;->zza:Lwrf;

    invoke-static {p0}, Lwrf;->q(Lwrf;)V

    return-void
.end method
