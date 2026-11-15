.class public final Lhxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lixh;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/t;->B0()Looe;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Looe;->v0(Ljava/lang/String;)Looe;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/t;

    sput-object v0, Lhxh;->a:Lcom/google/android/gms/internal/ads/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/t;
    .locals 0

    sget-object p0, Lhxh;->a:Lcom/google/android/gms/internal/ads/t;

    return-object p0
.end method
