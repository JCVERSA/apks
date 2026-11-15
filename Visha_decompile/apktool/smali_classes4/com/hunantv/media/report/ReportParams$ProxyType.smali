.class public final enum Lcom/hunantv/media/report/ReportParams$ProxyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/report/ReportParams$ProxyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum LOCAL_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum NOPROXY_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum ONLY_UNICOM:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

.field public static final enum UNICOM_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v1, "NO_PROXY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    new-instance v1, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v2, "ONLY_P2P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    new-instance v2, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v3, "ONLY_UNICOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_UNICOM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    new-instance v3, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v4, "NOPROXY_DRM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/report/ReportParams$ProxyType;->NOPROXY_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    new-instance v4, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v5, "P2P_DRM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/hunantv/media/report/ReportParams$ProxyType;->P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    new-instance v5, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v6, "UNICOM_DRM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hunantv/media/report/ReportParams$ProxyType;->UNICOM_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    new-instance v6, Lcom/hunantv/media/report/ReportParams$ProxyType;

    const-string v7, "LOCAL_PROXY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/hunantv/media/report/ReportParams$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/hunantv/media/report/ReportParams$ProxyType;->LOCAL_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    filled-new-array/range {v0 .. v6}, [Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->$VALUES:[Lcom/hunantv/media/report/ReportParams$ProxyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams$ProxyType;
    .locals 1

    const-class v0, Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/report/ReportParams$ProxyType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/report/ReportParams$ProxyType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->$VALUES:[Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v0}, [Lcom/hunantv/media/report/ReportParams$ProxyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/report/ReportParams$ProxyType;

    return-object v0
.end method
