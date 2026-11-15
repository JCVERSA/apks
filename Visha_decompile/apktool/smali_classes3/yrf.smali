.class public final synthetic Lyrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final synthetic d:Lhmh;

.field public final synthetic e:Lenh;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lenh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyrf;->b:Landroid/content/Context;

    iput-object p2, p0, Lyrf;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lyrf;->d:Lhmh;

    iput-object p4, p0, Lyrf;->e:Lenh;

    return-void
.end method


# virtual methods
.method public final zzt()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    iget-object v1, p0, Lyrf;->b:Landroid/content/Context;

    iget-object v2, p0, Lyrf;->e:Lenh;

    iget-object v3, p0, Lyrf;->d:Lhmh;

    iget-object v3, v3, Lhmh;->C:Lorg/json/JSONObject;

    iget-object p0, p0, Lyrf;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lenh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzay;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
