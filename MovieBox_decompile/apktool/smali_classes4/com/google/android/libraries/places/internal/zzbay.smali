.class public final Lcom/google/android/libraries/places/internal/zzbay;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, "internal:health-check-consumer-listener"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbay;->zza:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbay;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/libraries/places/internal/zzbay;

    .line 2
    .line 3
    const-string v0, "internal:health-check-consumer-listener"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbay;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbay;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
