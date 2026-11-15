.class public final enum Lcom/mgadplus/Imagework/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/Imagework/n$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/Imagework/n$a;

.field public static final enum ALL:Lcom/mgadplus/Imagework/n$a;

.field public static final enum BOTTOM:Lcom/mgadplus/Imagework/n$a;

.field public static final enum BOTTOM_LEFT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum BOTTOM_RIGHT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum LEFT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum OTHER_BOTTOM_LEFT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum OTHER_BOTTOM_RIGHT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum OTHER_TOP_LEFT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum OTHER_TOP_RIGHT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum RIGHT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum TOP:Lcom/mgadplus/Imagework/n$a;

.field public static final enum TOP_LEFT:Lcom/mgadplus/Imagework/n$a;

.field public static final enum TOP_RIGHT:Lcom/mgadplus/Imagework/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/mgadplus/Imagework/n$a;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgadplus/Imagework/n$a;->ALL:Lcom/mgadplus/Imagework/n$a;

    new-instance v1, Lcom/mgadplus/Imagework/n$a;

    const-string v2, "TOP_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgadplus/Imagework/n$a;->TOP_LEFT:Lcom/mgadplus/Imagework/n$a;

    new-instance v2, Lcom/mgadplus/Imagework/n$a;

    const-string v3, "TOP_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgadplus/Imagework/n$a;->TOP_RIGHT:Lcom/mgadplus/Imagework/n$a;

    new-instance v3, Lcom/mgadplus/Imagework/n$a;

    const-string v4, "BOTTOM_LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mgadplus/Imagework/n$a;->BOTTOM_LEFT:Lcom/mgadplus/Imagework/n$a;

    new-instance v4, Lcom/mgadplus/Imagework/n$a;

    const-string v5, "BOTTOM_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mgadplus/Imagework/n$a;->BOTTOM_RIGHT:Lcom/mgadplus/Imagework/n$a;

    new-instance v5, Lcom/mgadplus/Imagework/n$a;

    const-string v6, "TOP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mgadplus/Imagework/n$a;->TOP:Lcom/mgadplus/Imagework/n$a;

    new-instance v6, Lcom/mgadplus/Imagework/n$a;

    const-string v7, "BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mgadplus/Imagework/n$a;->BOTTOM:Lcom/mgadplus/Imagework/n$a;

    new-instance v7, Lcom/mgadplus/Imagework/n$a;

    const-string v8, "LEFT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mgadplus/Imagework/n$a;->LEFT:Lcom/mgadplus/Imagework/n$a;

    new-instance v8, Lcom/mgadplus/Imagework/n$a;

    const-string v9, "RIGHT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mgadplus/Imagework/n$a;->RIGHT:Lcom/mgadplus/Imagework/n$a;

    new-instance v9, Lcom/mgadplus/Imagework/n$a;

    const-string v10, "OTHER_TOP_LEFT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mgadplus/Imagework/n$a;->OTHER_TOP_LEFT:Lcom/mgadplus/Imagework/n$a;

    new-instance v10, Lcom/mgadplus/Imagework/n$a;

    const-string v11, "OTHER_TOP_RIGHT"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mgadplus/Imagework/n$a;->OTHER_TOP_RIGHT:Lcom/mgadplus/Imagework/n$a;

    new-instance v11, Lcom/mgadplus/Imagework/n$a;

    const-string v12, "OTHER_BOTTOM_LEFT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mgadplus/Imagework/n$a;->OTHER_BOTTOM_LEFT:Lcom/mgadplus/Imagework/n$a;

    new-instance v12, Lcom/mgadplus/Imagework/n$a;

    const-string v13, "OTHER_BOTTOM_RIGHT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mgadplus/Imagework/n$a;->OTHER_BOTTOM_RIGHT:Lcom/mgadplus/Imagework/n$a;

    new-instance v13, Lcom/mgadplus/Imagework/n$a;

    const-string v14, "DIAGONAL_FROM_TOP_LEFT"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mgadplus/Imagework/n$a;->DIAGONAL_FROM_TOP_LEFT:Lcom/mgadplus/Imagework/n$a;

    new-instance v14, Lcom/mgadplus/Imagework/n$a;

    const-string v15, "DIAGONAL_FROM_TOP_RIGHT"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/mgadplus/Imagework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mgadplus/Imagework/n$a;->DIAGONAL_FROM_TOP_RIGHT:Lcom/mgadplus/Imagework/n$a;

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Lcom/mgadplus/Imagework/n$a;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/Imagework/n$a;->$VALUES:[Lcom/mgadplus/Imagework/n$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/Imagework/n$a;
    .locals 1

    const-class v0, Lcom/mgadplus/Imagework/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/Imagework/n$a;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/Imagework/n$a;
    .locals 1

    sget-object v0, Lcom/mgadplus/Imagework/n$a;->$VALUES:[Lcom/mgadplus/Imagework/n$a;

    invoke-virtual {v0}, [Lcom/mgadplus/Imagework/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/Imagework/n$a;

    return-object v0
.end method
