.class public abstract Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;",
        "",
        "<init>",
        "()V",
        "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;",
        "adSelectionConfig",
        "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
        "selectAds",
        "(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lwh1;)Ljava/lang/Object;",
        "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;",
        "reportImpressionRequest",
        "Lzfb;",
        "reportImpression",
        "(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lwh1;)Ljava/lang/Object;",
        "Companion",
        "Api33Ext4Impl",
        "ads-adservices_release"
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
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "ClassVerificationFailure"
        }
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract reportImpression(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lwh1;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract selectAds(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lwh1;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;",
            "Lwh1<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
