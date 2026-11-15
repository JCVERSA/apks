.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbr;

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbn;->zzb:Ljava/lang/String;

    invoke-static {v0, p0}, Lusf;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
