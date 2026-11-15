.class public final enum Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MENU"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

.field public static final enum COPY_LINK:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

.field public static final enum OPEN_B:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

.field public static final enum OPEN_F:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;


# direct methods
.method private static synthetic $values()[Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;
    .locals 3

    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_B:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    sget-object v1, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_F:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    sget-object v2, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->COPY_LINK:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    const-string v1, "OPEN_B"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_B:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    new-instance v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    const-string v1, "OPEN_F"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->OPEN_F:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    new-instance v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    const-string v1, "COPY_LINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->COPY_LINK:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    invoke-static {}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->$values()[Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->$VALUES:[Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;
    .locals 1

    const-class v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    return-object p0
.end method

.method public static values()[Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->$VALUES:[Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    invoke-virtual {v0}, [Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback$MENU;

    return-object v0
.end method
