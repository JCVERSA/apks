.class public final enum Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/glidetransformation/RoundedCornersTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum ALL:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum TOP:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

.field public static final enum TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;
    .locals 15

    sget-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->ALL:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v1, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v2, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v3, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->BOTTOM_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v4, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->BOTTOM_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v5, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->TOP:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v6, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->BOTTOM:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v7, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v8, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v9, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v10, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v11, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v12, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v13, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    sget-object v14, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    filled-new-array/range {v0 .. v14}, [Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->ALL:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->BOTTOM_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->BOTTOM_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->TOP:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->BOTTOM:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "LEFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_TOP_LEFT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_TOP_RIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_BOTTOM_LEFT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "OTHER_BOTTOM_RIGHT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "DIAGONAL_FROM_TOP_LEFT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    new-instance v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    const-string v1, "DIAGONAL_FROM_TOP_RIGHT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    invoke-static {}, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->$values()[Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    move-result-object v0

    sput-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->$VALUES:[Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;
    .locals 1

    const-class v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;
    .locals 1

    sget-object v0, Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->$VALUES:[Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    invoke-virtual {v0}, [Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/glidetransformation/RoundedCornersTransformation$CornerType;

    return-object v0
.end method
