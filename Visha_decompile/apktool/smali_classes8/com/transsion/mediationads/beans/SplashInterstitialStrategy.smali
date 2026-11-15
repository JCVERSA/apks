.class public final Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/beans/SplashInterstitialStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;",
        "",
        "<init>",
        "()V",
        "positionType",
        "",
        "getPositionType",
        "()I",
        "setPositionType",
        "(I)V",
        "protectDays",
        "getProtectDays",
        "setProtectDays",
        "toString",
        "",
        "Companion",
        "mediationads-api_release"
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
.field public static final Companion:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy$Companion;

.field public static final POSITION_TYPE_INTERSTITIAL:I = 0x2

.field public static final POSITION_TYPE_SPLASH:I = 0x1


# instance fields
.field private positionType:I

.field private protectDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->Companion:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPositionType()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->positionType:I

    return p0
.end method

.method public final getProtectDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->protectDays:I

    return p0
.end method

.method public final setPositionType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->positionType:I

    return-void
.end method

.method public final setProtectDays(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->protectDays:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->positionType:I

    iget p0, p0, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->protectDays:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashInterstitialStrategy(positionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", protectDays="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
