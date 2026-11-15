.class public final enum Lcom/hunantv/media/report/ReportParams$SubVideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubVideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/report/ReportParams$SubVideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/report/ReportParams$SubVideoType;

.field public static final enum NONE:Lcom/hunantv/media/report/ReportParams$SubVideoType;

.field public static final enum VOD_NONE:Lcom/hunantv/media/report/ReportParams$SubVideoType;

.field public static final enum VOD_VIP_PROTECT:Lcom/hunantv/media/report/ReportParams$SubVideoType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/hunantv/media/report/ReportParams$SubVideoType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hunantv/media/report/ReportParams$SubVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$SubVideoType;->NONE:Lcom/hunantv/media/report/ReportParams$SubVideoType;

    new-instance v1, Lcom/hunantv/media/report/ReportParams$SubVideoType;

    const/4 v2, 0x1

    const/16 v3, 0xa

    const-string v4, "VOD_NONE"

    invoke-direct {v1, v4, v2, v3}, Lcom/hunantv/media/report/ReportParams$SubVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hunantv/media/report/ReportParams$SubVideoType;->VOD_NONE:Lcom/hunantv/media/report/ReportParams$SubVideoType;

    new-instance v2, Lcom/hunantv/media/report/ReportParams$SubVideoType;

    const/4 v3, 0x2

    const/16 v4, 0xb

    const-string v5, "VOD_VIP_PROTECT"

    invoke-direct {v2, v5, v3, v4}, Lcom/hunantv/media/report/ReportParams$SubVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hunantv/media/report/ReportParams$SubVideoType;->VOD_VIP_PROTECT:Lcom/hunantv/media/report/ReportParams$SubVideoType;

    filled-new-array {v0, v1, v2}, [Lcom/hunantv/media/report/ReportParams$SubVideoType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/report/ReportParams$SubVideoType;->$VALUES:[Lcom/hunantv/media/report/ReportParams$SubVideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hunantv/media/report/ReportParams$SubVideoType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams$SubVideoType;
    .locals 1

    const-class v0, Lcom/hunantv/media/report/ReportParams$SubVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/report/ReportParams$SubVideoType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/report/ReportParams$SubVideoType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$SubVideoType;->$VALUES:[Lcom/hunantv/media/report/ReportParams$SubVideoType;

    invoke-virtual {v0}, [Lcom/hunantv/media/report/ReportParams$SubVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/report/ReportParams$SubVideoType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/report/ReportParams$SubVideoType;->mValue:I

    return p0
.end method
