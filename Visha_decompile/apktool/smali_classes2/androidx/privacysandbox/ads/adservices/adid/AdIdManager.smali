.class public abstract Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl;,
        Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u00072\u00020\u0001:\u0002\u0008\u0007B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0005\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;",
        "",
        "<init>",
        "()V",
        "Landroidx/privacysandbox/ads/adservices/adid/AdId;",
        "getAdId",
        "(Lwh1;)Ljava/lang/Object;",
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
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;->Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "ClassVerificationFailure"
        }
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;->Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAdId(Lwh1;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_AD_ID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adid/AdId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
