.class public Lcom/hisavana/common/utils/AdLogUtil;
.super Lcom/cloud/sdk/commonutil/util/c;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ADSDK_M"

.field private static final adLogUtil:Lcom/hisavana/common/utils/AdLogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/common/utils/AdLogUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hisavana/common/utils/AdLogUtil;->adLogUtil:Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/sdk/commonutil/util/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Log()Lcom/hisavana/common/utils/AdLogUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/common/utils/AdLogUtil;->adLogUtil:Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getGlobalTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ADSDK_M"

    .line 2
    .line 3
    return-object v0
.end method
