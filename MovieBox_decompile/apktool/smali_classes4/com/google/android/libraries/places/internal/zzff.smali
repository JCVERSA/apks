.class final Lcom/google/android/libraries/places/internal/zzff;
.super Lcom/android/volley/toolbox/i;
.source "source.java"


# instance fields
.field final synthetic zza:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzfg;Ljava/lang/String;Lcom/android/volley/i$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/i$a;Ljava/util/Map;)V
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    move-object/from16 v0, p9

    .line 3
    .line 4
    iput-object v0, v8, Lcom/google/android/libraries/places/internal/zzff;->zza:Ljava/util/Map;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p2

    .line 10
    move-object v2, p3

    .line 11
    move-object v5, p6

    .line 12
    move-object/from16 v6, p7

    .line 13
    .line 14
    move-object/from16 v7, p8

    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/i;-><init>(Ljava/lang/String;Lcom/android/volley/i$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/i$a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzff;->zza:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
