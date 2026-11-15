.class public final enum Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/GlobalDownloadManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

.field public static final enum MOBILE:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

.field public static final enum NO:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

.field public static final enum UNKNOWN:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

.field public static final enum WIFI:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
    .locals 4

    sget-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->NO:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    sget-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->WIFI:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    sget-object v2, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->MOBILE:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    sget-object v3, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->UNKNOWN:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->NO:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    new-instance v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    const-string v1, "WIFI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->WIFI:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    new-instance v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    const-string v1, "MOBILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->MOBILE:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    new-instance v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->UNKNOWN:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->$values()[Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->$VALUES:[Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
    .locals 1

    const-class v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;
    .locals 1

    sget-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->$VALUES:[Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    invoke-virtual {v0}, [Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-object v0
.end method
