.class public final synthetic Lq7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgff;


# instance fields
.field public final synthetic a:Leff;


# direct methods
.method public synthetic constructor <init>(Leff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7f;->a:Leff;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnp;

    const-string v1, "Cannot get Javascript Engine"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lq7f;->a:Leff;

    invoke-virtual {p0, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
