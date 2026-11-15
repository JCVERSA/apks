.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ldue;


# direct methods
.method public synthetic constructor <init>(Ldue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v0, 0x4

    const-string v1, "Web view timed out."

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
