.class public abstract Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Api33Ext4JavaImpl;,
        Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\'\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\nH\'\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures;",
        "",
        "<init>",
        "()V",
        "Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;",
        "request",
        "Lim5;",
        "Lzfb;",
        "joinCustomAudienceAsync",
        "(Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;)Lim5;",
        "Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;",
        "leaveCustomAudienceAsync",
        "(Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;)Lim5;",
        "Companion",
        "Api33Ext4JavaImpl",
        "ads-adservices-java_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures;
    .locals 1

    sget-object v0, Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion;->from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract joinCustomAudienceAsync(Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;)Lim5;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;",
            ")",
            "Lim5;"
        }
    .end annotation
.end method

.method public abstract leaveCustomAudienceAsync(Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;)Lim5;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;",
            ")",
            "Lim5;"
        }
    .end annotation
.end method
