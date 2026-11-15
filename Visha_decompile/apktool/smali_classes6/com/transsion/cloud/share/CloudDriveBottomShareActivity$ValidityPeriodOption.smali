.class final enum Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidityPeriodOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;",
        "",
        "days",
        "",
        "stringResId",
        "<init>",
        "(Ljava/lang/String;III)V",
        "getDays",
        "()I",
        "getStringResId",
        "ONE_WEEK",
        "ONE_MONTH",
        "PERMANENT",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum ONE_MONTH:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

.field public static final enum ONE_WEEK:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

.field public static final enum PERMANENT:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

.field public static final synthetic b:[Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

.field public static final synthetic c:Ldb3;


# instance fields
.field private final days:I

.field private final stringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    const/4 v1, 0x7

    sget v2, Lcom/transsion/netdisk/R$string;->visha_one_week:I

    const-string v3, "ONE_WEEK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->ONE_WEEK:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    new-instance v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    const/16 v1, 0x1e

    sget v2, Lcom/transsion/netdisk/R$string;->visha_one_month:I

    const-string v3, "ONE_MONTH"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->ONE_MONTH:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    new-instance v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    const/4 v1, 0x2

    sget v2, Lcom/transsion/netdisk/R$string;->visha_permanent_valid:I

    const-string v3, "PERMANENT"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->PERMANENT:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-static {}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->a()[Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->b:[Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->c:Ldb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->days:I

    iput p4, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->stringResId:I

    return-void
.end method

.method public static final synthetic a()[Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;
    .locals 3

    sget-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->ONE_WEEK:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    sget-object v1, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->ONE_MONTH:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    sget-object v2, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->PERMANENT:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    move-result-object v0

    return-object v0
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->c:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;
    .locals 1

    const-class v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    return-object p0
.end method

.method public static values()[Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;
    .locals 1

    sget-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->b:[Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    return-object v0
.end method


# virtual methods
.method public final getDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->days:I

    return p0
.end method

.method public final getStringResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->stringResId:I

    return p0
.end method
