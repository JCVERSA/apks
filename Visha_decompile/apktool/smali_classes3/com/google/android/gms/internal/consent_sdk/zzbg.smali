.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ldf1;


# direct methods
.method public synthetic constructor <init>(Ldf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v0, 0x3

    const-string v1, "Privacy options form is being loading. Please try again later."

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Ly34;

    const/4 p0, 0x0

    throw p0
.end method
