.class Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/TKC/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sj"
.end annotation


# instance fields
.field private Sj:Ljava/lang/String;

.field private sP:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;->Sj:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;->sP:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/sP/TKC/TKC/uA$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;-><init>()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;->sP:F

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method Sj(Ljava/lang/String;F)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;->Sj:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/uA$Sj;->sP:F

    return-void
.end method
