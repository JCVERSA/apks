.class final enum Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostChromePhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ACTIVE",
        "USER_PAUSED",
        "HOST_LEFT",
        "RECLAIMING",
        "onlinevideo_release"
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
.field public static final enum ACTIVE:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

.field public static final enum HOST_LEFT:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

.field public static final enum RECLAIMING:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

.field public static final enum USER_PAUSED:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

.field public static final synthetic b:[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

.field public static final synthetic c:Ldb3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->ACTIVE:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    const-string v1, "USER_PAUSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->USER_PAUSED:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    const-string v1, "HOST_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->HOST_LEFT:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    const-string v1, "RECLAIMING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->RECLAIMING:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->a()[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->b:[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->c:Ldb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;
    .locals 4

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->ACTIVE:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    sget-object v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->USER_PAUSED:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    sget-object v2, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->HOST_LEFT:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    sget-object v3, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->RECLAIMING:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

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

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->c:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;
    .locals 1

    const-class v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    return-object p0
.end method

.method public static values()[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;->b:[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$HostChromePhase;

    return-object v0
.end method
