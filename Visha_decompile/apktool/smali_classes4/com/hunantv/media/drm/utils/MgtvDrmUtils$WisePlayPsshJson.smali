.class Lcom/hunantv/media/drm/utils/MgtvDrmUtils$WisePlayPsshJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/utils/MgtvDrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WisePlayPsshJson"
.end annotation


# instance fields
.field public contentID:Ljava/lang/String;

.field public enschema:Ljava/lang/String;

.field public exts:Ljava/lang/String;

.field public kids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public playIndex:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
