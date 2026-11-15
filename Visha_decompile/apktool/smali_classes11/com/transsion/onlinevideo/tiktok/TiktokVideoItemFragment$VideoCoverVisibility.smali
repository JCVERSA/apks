.class final enum Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCoverVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "COVER",
        "VIDEO",
        "FADE_OUT",
        "GONE_FOR_ERROR",
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
.field public static final enum COVER:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

.field public static final enum FADE_OUT:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

.field public static final enum GONE_FOR_ERROR:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

.field public static final enum VIDEO:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

.field public static final synthetic b:[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

.field public static final synthetic c:Ldb3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    const-string v1, "COVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->COVER:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->VIDEO:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    const-string v1, "FADE_OUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->FADE_OUT:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    const-string v1, "GONE_FOR_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->GONE_FOR_ERROR:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    invoke-static {}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->a()[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->b:[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->c:Ldb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;
    .locals 4

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->COVER:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    sget-object v1, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->VIDEO:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    sget-object v2, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->FADE_OUT:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    sget-object v3, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->GONE_FOR_ERROR:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

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

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->c:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;
    .locals 1

    const-class v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    return-object p0
.end method

.method public static values()[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;->b:[Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;

    return-object v0
.end method
