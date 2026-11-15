.class public final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    sget p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zze:I

    const-string p0, "nas"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
