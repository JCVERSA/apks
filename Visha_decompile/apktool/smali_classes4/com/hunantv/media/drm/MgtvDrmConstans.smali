.class public Lcom/hunantv/media/drm/MgtvDrmConstans;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHINADRM_UUID:Ljava/util/UUID;

.field public static final CLEARKEY_UUID:Ljava/util/UUID;

.field public static final MARLIN_UUID:Ljava/util/UUID;

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->PLAYREADY_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x3d5e6d359b9a41e8L    # 4.3238798128379746E-13

    const-wide v3, -0x47bc22c3918d3bd4L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x69f908af481646eaL    # 3.065956883719155E202

    const-wide v3, -0x6ef332a23334f5c6L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x1d8e62a7567a4c37L    # -1.6229728350858627E166

    const-wide v3, 0x781ab030af78d30eL    # 3.524813189889319E270

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->CLEARKEY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
