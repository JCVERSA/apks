.class public final Lcom/vungle/ads/internal/model/AdPayload$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/AdPayload$c$b;,
        Lcom/vungle/ads/internal/model/AdPayload$c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/AdPayload$c$b;


# instance fields
.field private final adLoadOptimizationEnabled:Ljava/lang/Boolean;

.field private final adMarketId:Ljava/lang/String;

.field private final adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

.field private final adSource:Ljava/lang/String;

.field private final adType:Ljava/lang/String;

.field private final advAppId:Ljava/lang/String;

.field private final clickCoordinatesEnabled:Ljava/lang/Boolean;

.field private final creativeId:Ljava/lang/String;

.field private final deeplinkUrl:Ljava/lang/String;

.field private final errorCode:Ljava/lang/Integer;

.field private final expiry:Ljava/lang/Integer;

.field private final id:Ljava/lang/String;

.field private final info:Ljava/lang/String;

.field private final isCacheableAssetsRequired:Ljava/lang/Boolean;

.field private final loadAdUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mediationName:Ljava/lang/String;

.field private final notification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final showClose:Ljava/lang/Integer;

.field private final showCloseIncentivized:Ljava/lang/Integer;

.field private final sleep:Ljava/lang/Integer;

.field private final templateHeartbeatCheck:Ljava/lang/Boolean;

.field private final templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

.field private final templateType:Ljava/lang/String;

.field private final templateURL:Ljava/lang/String;

.field private final tpat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

.field private final vmURL:Ljava/lang/String;

.field private final vmVersion:Ljava/lang/String;

.field private final webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$c$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/AdPayload$c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$c;->Companion:Lcom/vungle/ads/internal/model/AdPayload$c$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    const v30, 0x1fffffff

    const/16 v31, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v31}, Lcom/vungle/ads/internal/model/AdPayload$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;Lkotlinx/serialization/internal/w1;)V
    .locals 5
    .param p14    # Ljava/util/Map;
        .annotation runtime Lkotlinx/serialization/f;
            with = Lcom/vungle/ads/internal/model/AdPayload$h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p2

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p3

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, p4

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v2, p5

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_4

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v2, p6

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_5

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object v2, p7

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_6

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object v2, p8

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_7

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object v2, p9

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_8

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v2, p10

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_9

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_a

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_b

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_c

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_d

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_e

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_f

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_10

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    :goto_10
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    :goto_11
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-nez v2, :cond_12

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    goto :goto_12

    :cond_12
    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    :goto_12
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-nez v2, :cond_13

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-nez v2, :cond_14

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    :goto_14
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-nez v2, :cond_15

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    goto :goto_15

    :cond_15
    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    :goto_15
    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    if-nez v2, :cond_16

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    :goto_16
    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    if-nez v2, :cond_17

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    :goto_17
    const/high16 v2, 0x1000000

    and-int/2addr v2, v1

    const/4 v4, 0x0

    if-nez v2, :cond_18

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    :goto_18
    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    goto :goto_19

    :cond_18
    move-object/from16 v2, p26

    goto :goto_18

    :goto_19
    const/high16 v2, 0x2000000

    and-int/2addr v2, v1

    if-nez v2, :cond_19

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    :goto_1a
    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    goto :goto_1b

    :cond_19
    move-object/from16 v2, p27

    goto :goto_1a

    :goto_1b
    const/high16 v2, 0x4000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1a

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    goto :goto_1c

    :cond_1a
    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    :goto_1c
    const/high16 v2, 0x8000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1b

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1b
    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    :goto_1d
    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_1c

    iput-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    goto :goto_1e

    :cond_1c
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    :goto_1e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vungle/ads/internal/model/AdPayload$i;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/vungle/ads/internal/model/AdPayload$b;",
            "Ljava/lang/Boolean;",
            "Lcom/vungle/ads/internal/model/AdPayload$k;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 8
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    move-object v1, p3

    .line 10
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    move-object v1, p4

    .line 11
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    move-object v1, p5

    .line 12
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    move-object v1, p6

    .line 13
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    move-object v1, p7

    .line 14
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    move-object v1, p8

    .line 15
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    move-object v1, p9

    .line 16
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    move-object v1, p10

    .line 17
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    move-object v1, p11

    .line 18
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    move-object v1, p12

    .line 19
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    move-object v1, p13

    .line 20
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    move-object/from16 v1, p14

    .line 21
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 22
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 23
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 24
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    move-object/from16 v1, p18

    .line 25
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    move-object/from16 v1, p19

    .line 26
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    move-object/from16 v1, p20

    .line 27
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 28
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 29
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    move-object/from16 v1, p23

    .line 30
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 31
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 32
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    move-object/from16 v1, p26

    .line 33
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    move-object/from16 v1, p27

    .line 34
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    move-object/from16 v1, p28

    .line 35
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    move-object/from16 v1, p29

    .line 36
    iput-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    const/16 v26, 0x0

    if-eqz v25, :cond_18

    .line 37
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    .line 38
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_19

    :cond_19
    move-object/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v0, v0, v29

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v0, p29

    :goto_1c
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v0

    .line 39
    invoke-direct/range {p1 .. p30}, Lcom/vungle/ads/internal/model/AdPayload$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/AdPayload$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/AdPayload$c;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p28, v15

    move-object/from16 p29, v1

    invoke-virtual/range {p0 .. p29}, Lcom/vungle/ads/internal/model/AdPayload$c;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;)Lcom/vungle/ads/internal/model/AdPayload$c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAdLoadOptimizationEnabled$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getAdMarketId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getAdSizeInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getAdSource$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getAdType$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getAdvAppId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getClickCoordinatesEnabled$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getCreativeId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getDeeplinkUrl$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getErrorCode$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getExpiry$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getLoadAdUrls$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMediationName$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getNotification$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getShowClose$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getShowCloseIncentivized$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getSleep$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTemplateHeartbeatCheck$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTemplateSettings$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTemplateType$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTemplateURL$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTpat$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/f;
        with = Lcom/vungle/ads/internal/model/AdPayload$h;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getViewAbility$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getVmURL$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getVmVersion$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getWebViewSettings$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isCacheableAssetsRequired$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/AdPayload$c;Lsy/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "self"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "output"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serialDesc"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const/4 v0, 0x2

    .line 55
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    const/4 v0, 0x3

    .line 74
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    const/4 v0, 0x4

    .line 93
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_9
    const/4 v0, 0x5

    .line 112
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 120
    .line 121
    if-eqz v1, :cond_b

    .line 122
    .line 123
    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_b
    const/4 v0, 0x6

    .line 131
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_c

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 139
    .line 140
    if-eqz v1, :cond_d

    .line 141
    .line 142
    :goto_6
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_d
    const/4 v0, 0x7

    .line 150
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_e

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 158
    .line 159
    if-eqz v1, :cond_f

    .line 160
    .line 161
    :goto_7
    sget-object v1, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_f
    const/16 v0, 0x8

    .line 169
    .line 170
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_10

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_10
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v1, :cond_11

    .line 180
    .line 181
    :goto_8
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_11
    const/16 v0, 0x9

    .line 189
    .line 190
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_12

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_12
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v1, :cond_13

    .line 200
    .line 201
    :goto_9
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 202
    .line 203
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_13
    const/16 v0, 0xa

    .line 209
    .line 210
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_14

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_14
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 218
    .line 219
    if-eqz v1, :cond_15

    .line 220
    .line 221
    :goto_a
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 222
    .line 223
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_15
    const/16 v0, 0xb

    .line 229
    .line 230
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_16

    .line 235
    .line 236
    goto :goto_b

    .line 237
    :cond_16
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 238
    .line 239
    if-eqz v1, :cond_17

    .line 240
    .line 241
    :goto_b
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 242
    .line 243
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_17
    const/16 v0, 0xc

    .line 249
    .line 250
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_18

    .line 255
    .line 256
    goto :goto_c

    .line 257
    :cond_18
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 258
    .line 259
    if-eqz v1, :cond_19

    .line 260
    .line 261
    :goto_c
    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$h;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$h;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 264
    .line 265
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_19
    const/16 v0, 0xd

    .line 269
    .line 270
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_1a

    .line 275
    .line 276
    goto :goto_d

    .line 277
    :cond_1a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 278
    .line 279
    if-eqz v1, :cond_1b

    .line 280
    .line 281
    :goto_d
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 282
    .line 283
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 284
    .line 285
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_1b
    const/16 v0, 0xe

    .line 289
    .line 290
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_1c

    .line 295
    .line 296
    goto :goto_e

    .line 297
    :cond_1c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 298
    .line 299
    if-eqz v1, :cond_1d

    .line 300
    .line 301
    :goto_e
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 302
    .line 303
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 304
    .line 305
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_1d
    const/16 v0, 0xf

    .line 309
    .line 310
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_1e

    .line 315
    .line 316
    goto :goto_f

    .line 317
    :cond_1e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 318
    .line 319
    if-eqz v1, :cond_1f

    .line 320
    .line 321
    :goto_f
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 322
    .line 323
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 324
    .line 325
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    :cond_1f
    const/16 v0, 0x10

    .line 329
    .line 330
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_20

    .line 335
    .line 336
    goto :goto_10

    .line 337
    :cond_20
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 338
    .line 339
    if-eqz v1, :cond_21

    .line 340
    .line 341
    :goto_10
    new-instance v1, Lkotlinx/serialization/internal/f;

    .line 342
    .line 343
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 344
    .line 345
    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 346
    .line 347
    .line 348
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 349
    .line 350
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_21
    const/16 v0, 0x11

    .line 354
    .line 355
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_22

    .line 360
    .line 361
    goto :goto_11

    .line 362
    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 363
    .line 364
    if-eqz v1, :cond_23

    .line 365
    .line 366
    :goto_11
    new-instance v1, Lkotlinx/serialization/internal/f;

    .line 367
    .line 368
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 369
    .line 370
    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 371
    .line 372
    .line 373
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 374
    .line 375
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_23
    const/16 v0, 0x12

    .line 379
    .line 380
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_24

    .line 385
    .line 386
    goto :goto_12

    .line 387
    :cond_24
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 388
    .line 389
    if-eqz v1, :cond_25

    .line 390
    .line 391
    :goto_12
    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$i$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$i$a;

    .line 392
    .line 393
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 394
    .line 395
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    :cond_25
    const/16 v0, 0x13

    .line 399
    .line 400
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_26

    .line 405
    .line 406
    goto :goto_13

    .line 407
    :cond_26
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 408
    .line 409
    if-eqz v1, :cond_27

    .line 410
    .line 411
    :goto_13
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 412
    .line 413
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 414
    .line 415
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_27
    const/16 v0, 0x14

    .line 419
    .line 420
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_28

    .line 425
    .line 426
    goto :goto_14

    .line 427
    :cond_28
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 428
    .line 429
    if-eqz v1, :cond_29

    .line 430
    .line 431
    :goto_14
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 432
    .line 433
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 434
    .line 435
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_29
    const/16 v0, 0x15

    .line 439
    .line 440
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_2a

    .line 445
    .line 446
    goto :goto_15

    .line 447
    :cond_2a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 448
    .line 449
    if-eqz v1, :cond_2b

    .line 450
    .line 451
    :goto_15
    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$g$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$g$a;

    .line 452
    .line 453
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 454
    .line 455
    invoke-interface {p1, p2, v0, v1, v2}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_2b
    const/16 v0, 0x16

    .line 459
    .line 460
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_2c

    .line 465
    .line 466
    goto :goto_16

    .line 467
    :cond_2c
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 468
    .line 469
    if-eqz v0, :cond_2d

    .line 470
    .line 471
    :goto_16
    sget-object v0, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 472
    .line 473
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 474
    .line 475
    const/16 v2, 0x16

    .line 476
    .line 477
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    :cond_2d
    const/16 v0, 0x17

    .line 481
    .line 482
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_2e

    .line 487
    .line 488
    goto :goto_17

    .line 489
    :cond_2e
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 490
    .line 491
    if-eqz v0, :cond_2f

    .line 492
    .line 493
    :goto_17
    sget-object v0, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 494
    .line 495
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 496
    .line 497
    const/16 v2, 0x17

    .line 498
    .line 499
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    :cond_2f
    const/16 v0, 0x18

    .line 503
    .line 504
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eqz v0, :cond_30

    .line 509
    .line 510
    goto :goto_18

    .line 511
    :cond_30
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 512
    .line 513
    if-nez v0, :cond_31

    .line 514
    .line 515
    goto :goto_18

    .line 516
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_32

    .line 521
    .line 522
    :goto_18
    sget-object v0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 523
    .line 524
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 525
    .line 526
    const/16 v2, 0x18

    .line 527
    .line 528
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    :cond_32
    const/16 v0, 0x19

    .line 532
    .line 533
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_33

    .line 538
    .line 539
    goto :goto_19

    .line 540
    :cond_33
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 541
    .line 542
    if-nez v0, :cond_34

    .line 543
    .line 544
    goto :goto_19

    .line 545
    :cond_34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_35

    .line 550
    .line 551
    :goto_19
    sget-object v0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 552
    .line 553
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 554
    .line 555
    const/16 v2, 0x19

    .line 556
    .line 557
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    :cond_35
    const/16 v0, 0x1a

    .line 561
    .line 562
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-eqz v0, :cond_36

    .line 567
    .line 568
    goto :goto_1a

    .line 569
    :cond_36
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 570
    .line 571
    if-eqz v0, :cond_37

    .line 572
    .line 573
    :goto_1a
    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$b$a;

    .line 574
    .line 575
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 576
    .line 577
    const/16 v2, 0x1a

    .line 578
    .line 579
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    :cond_37
    const/16 v0, 0x1b

    .line 583
    .line 584
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-eqz v0, :cond_38

    .line 589
    .line 590
    goto :goto_1b

    .line 591
    :cond_38
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 592
    .line 593
    if-eqz v0, :cond_39

    .line 594
    .line 595
    :goto_1b
    sget-object v0, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 596
    .line 597
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 598
    .line 599
    const/16 v2, 0x1b

    .line 600
    .line 601
    invoke-interface {p1, p2, v2, v0, v1}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :cond_39
    const/16 v0, 0x1c

    .line 605
    .line 606
    invoke-interface {p1, p2, v0}, Lsy/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_3a

    .line 611
    .line 612
    goto :goto_1c

    .line 613
    :cond_3a
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 614
    .line 615
    if-eqz v0, :cond_3b

    .line 616
    .line 617
    :goto_1c
    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$k$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$k$a;

    .line 618
    .line 619
    iget-object p0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 620
    .line 621
    const/16 v1, 0x1c

    .line 622
    .line 623
    invoke-interface {p1, p2, v1, v0, p0}, Lsy/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    :cond_3b
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Lcom/vungle/ads/internal/model/AdPayload$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Lcom/vungle/ads/internal/model/AdPayload$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component26()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component27()Lcom/vungle/ads/internal/model/AdPayload$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component28()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Lcom/vungle/ads/internal/model/AdPayload$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;)Lcom/vungle/ads/internal/model/AdPayload$c;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vungle/ads/internal/model/AdPayload$i;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/model/AdPayload$g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/vungle/ads/internal/model/AdPayload$b;",
            "Ljava/lang/Boolean;",
            "Lcom/vungle/ads/internal/model/AdPayload$k;",
            ")",
            "Lcom/vungle/ads/internal/model/AdPayload$c;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    new-instance v30, Lcom/vungle/ads/internal/model/AdPayload$c;

    move-object/from16 v0, v30

    invoke-direct/range {v0 .. v29}, Lcom/vungle/ads/internal/model/AdPayload$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload$i;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/AdPayload$b;Ljava/lang/Boolean;Lcom/vungle/ads/internal/model/AdPayload$k;)V

    return-object v30
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/AdPayload$c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload$c;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 190
    .line 191
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 201
    .line 202
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 212
    .line 213
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 245
    .line 246
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 247
    .line 248
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_17

    .line 253
    .line 254
    return v2

    .line 255
    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    return v2

    .line 266
    :cond_18
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 267
    .line 268
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_19

    .line 275
    .line 276
    return v2

    .line 277
    :cond_19
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 278
    .line 279
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_1a

    .line 286
    .line 287
    return v2

    .line 288
    :cond_1a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 289
    .line 290
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_1b

    .line 297
    .line 298
    return v2

    .line 299
    :cond_1b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 300
    .line 301
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 302
    .line 303
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_1c

    .line 308
    .line 309
    return v2

    .line 310
    :cond_1c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 311
    .line 312
    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_1d

    .line 319
    .line 320
    return v2

    .line 321
    :cond_1d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 322
    .line 323
    iget-object p1, p1, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 324
    .line 325
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_1e

    .line 330
    .line 331
    return v2

    .line 332
    :cond_1e
    return v0
.end method

.method public final getAdLoadOptimizationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdMarketId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdSizeInfo()Lcom/vungle/ads/internal/model/AdPayload$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdvAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClickCoordinatesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpiry()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadAdUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMediationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowClose()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowCloseIncentivized()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSleep()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateHeartbeatCheck()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateSettings()Lcom/vungle/ads/internal/model/AdPayload$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTpat()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewAbility()Lcom/vungle/ads/internal/model/AdPayload$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVmURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVmVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWebViewSettings()Lcom/vungle/ads/internal/model/AdPayload$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    move v2, v1

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    move v2, v1

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    move v2, v1

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload$i;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    move v2, v1

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    move v2, v1

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 275
    .line 276
    if-nez v2, :cond_15

    .line 277
    .line 278
    move v2, v1

    .line 279
    goto :goto_15

    .line 280
    :cond_15
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload$g;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_15
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 288
    .line 289
    if-nez v2, :cond_16

    .line 290
    .line 291
    move v2, v1

    .line 292
    goto :goto_16

    .line 293
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_16
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 301
    .line 302
    if-nez v2, :cond_17

    .line 303
    .line 304
    move v2, v1

    .line 305
    goto :goto_17

    .line 306
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_17
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 314
    .line 315
    if-nez v2, :cond_18

    .line 316
    .line 317
    move v2, v1

    .line 318
    goto :goto_18

    .line 319
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_18
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    .line 325
    .line 326
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 327
    .line 328
    if-nez v2, :cond_19

    .line 329
    .line 330
    move v2, v1

    .line 331
    goto :goto_19

    .line 332
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_19
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    .line 338
    .line 339
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 340
    .line 341
    if-nez v2, :cond_1a

    .line 342
    .line 343
    move v2, v1

    .line 344
    goto :goto_1a

    .line 345
    :cond_1a
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload$b;->hashCode()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :goto_1a
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    .line 352
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 353
    .line 354
    if-nez v2, :cond_1b

    .line 355
    .line 356
    move v2, v1

    .line 357
    goto :goto_1b

    .line 358
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_1b
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    .line 365
    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 366
    .line 367
    if-nez v2, :cond_1c

    .line 368
    .line 369
    goto :goto_1c

    .line 370
    :cond_1c
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload$k;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    :goto_1c
    add-int/2addr v0, v1

    .line 375
    return v0
.end method

.method public final isCacheableAssetsRequired()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AdUnit(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->id:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", adType="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adType:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", adSource="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSource:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", expiry="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->expiry:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", deeplinkUrl="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->deeplinkUrl:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", clickCoordinatesEnabled="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->clickCoordinatesEnabled:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", adLoadOptimizationEnabled="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adLoadOptimizationEnabled:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", templateHeartbeatCheck="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateHeartbeatCheck:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", mediationName="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->mediationName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", info="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->info:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", sleep="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->sleep:Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", errorCode="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->errorCode:Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", tpat="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->tpat:Ljava/util/Map;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", vmURL="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmURL:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", vmVersion="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->vmVersion:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", adMarketId="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adMarketId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", notification="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->notification:Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", loadAdUrls="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->loadAdUrls:Ljava/util/List;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", viewAbility="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->viewAbility:Lcom/vungle/ads/internal/model/AdPayload$i;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", templateURL="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateURL:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", templateType="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateType:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", templateSettings="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->templateSettings:Lcom/vungle/ads/internal/model/AdPayload$g;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", creativeId="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->creativeId:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", advAppId="

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->advAppId:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, ", showClose="

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showClose:Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", showCloseIncentivized="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->showCloseIncentivized:Ljava/lang/Integer;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ", adSizeInfo="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->adSizeInfo:Lcom/vungle/ads/internal/model/AdPayload$b;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ", isCacheableAssetsRequired="

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->isCacheableAssetsRequired:Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, ", webViewSettings="

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$c;->webViewSettings:Lcom/vungle/ads/internal/model/AdPayload$k;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const/16 v1, 0x29

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0
.end method
