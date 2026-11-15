.class public final enum Lcom/mgmi/e/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgmi/e/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgmi/e/c;

.field public static final enum CONVERTION_TYPE_DOWNLOAD_COMPLETE:Lcom/mgmi/e/c;

.field public static final enum CONVERTION_TYPE_DOWNLOAD_START:Lcom/mgmi/e/c;

.field public static final enum CONVERTION_TYPE_INSTALL_COMPLETE:Lcom/mgmi/e/c;

.field public static final enum CONVERTION_TYPE_START_INSTALL:Lcom/mgmi/e/c;

.field public static final enum CONVERTION_TYPE_USER_CANCEL_DOWNLOAD:Lcom/mgmi/e/c;

.field public static final enum CONVERTION_TYPE_USER_PAUSE_DOWNLOAD:Lcom/mgmi/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mgmi/e/c;

    const-string v1, "CONVERTION_TYPE_USER_CANCEL_DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgmi/e/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_USER_CANCEL_DOWNLOAD:Lcom/mgmi/e/c;

    new-instance v1, Lcom/mgmi/e/c;

    const-string v2, "CONVERTION_TYPE_USER_PAUSE_DOWNLOAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgmi/e/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgmi/e/c;->CONVERTION_TYPE_USER_PAUSE_DOWNLOAD:Lcom/mgmi/e/c;

    new-instance v2, Lcom/mgmi/e/c;

    const-string v3, "CONVERTION_TYPE_DOWNLOAD_START"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgmi/e/c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_START:Lcom/mgmi/e/c;

    new-instance v3, Lcom/mgmi/e/c;

    const-string v4, "CONVERTION_TYPE_DOWNLOAD_COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mgmi/e/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_COMPLETE:Lcom/mgmi/e/c;

    new-instance v4, Lcom/mgmi/e/c;

    const-string v5, "CONVERTION_TYPE_INSTALL_COMPLETE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/mgmi/e/c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mgmi/e/c;->CONVERTION_TYPE_INSTALL_COMPLETE:Lcom/mgmi/e/c;

    new-instance v5, Lcom/mgmi/e/c;

    const-string v6, "CONVERTION_TYPE_START_INSTALL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/mgmi/e/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mgmi/e/c;->CONVERTION_TYPE_START_INSTALL:Lcom/mgmi/e/c;

    filled-new-array/range {v0 .. v5}, [Lcom/mgmi/e/c;

    move-result-object v0

    sput-object v0, Lcom/mgmi/e/c;->$VALUES:[Lcom/mgmi/e/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgmi/e/c;
    .locals 1

    const-class v0, Lcom/mgmi/e/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgmi/e/c;

    return-object p0
.end method

.method public static values()[Lcom/mgmi/e/c;
    .locals 1

    sget-object v0, Lcom/mgmi/e/c;->$VALUES:[Lcom/mgmi/e/c;

    invoke-virtual {v0}, [Lcom/mgmi/e/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgmi/e/c;

    return-object v0
.end method
