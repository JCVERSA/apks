.class public final Lb4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4f;


# instance fields
.field public final synthetic a:Leff;


# direct methods
.method public constructor <init>(Ld4f;Leff;)V
    .locals 0

    iput-object p2, p0, Lb4f;->a:Leff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p0, p0, Lb4f;->a:Leff;

    invoke-virtual {p0, p1}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb4f;->a:Leff;

    invoke-virtual {p0, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
