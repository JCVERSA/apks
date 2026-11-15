.class public final Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$CREATOR;,
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;,
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;,
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;,
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;,
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 02\u00020\u00012\u00020\u00022\u00020\u0003:\u0006012345B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010)\u001a\u00020*H\u0016J\u0006\u0010+\u001a\u00020,J\u0018\u0010-\u001a\u00020.2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010/\u001a\u00020*H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR2\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000b\"\u0004\u0008\u0018\u0010\rR\u001a\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\u001d\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001e\u0018\u0001`\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u00066"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "handleTabBarLoad",
        "",
        "getHandleTabBarLoad",
        "()Ljava/lang/String;",
        "setHandleTabBarLoad",
        "(Ljava/lang/String;)V",
        "iconFile",
        "includeFiles",
        "getIncludeFiles",
        "setIncludeFiles",
        "launchParams",
        "Ljava/util/HashMap;",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
        "Lkotlin/collections/HashMap;",
        "mfah",
        "getMfah",
        "setMfah",
        "pages",
        "",
        "pkgExts",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;",
        "preloadRule",
        "Lcom/cloud/tmc/integration/model/PreloadRuleSubpackage;",
        "subPackages",
        "Lcom/cloud/tmc/integration/model/Subpackage;",
        "tabBar",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "window",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;",
        "getWindow",
        "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;",
        "setWindow",
        "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V",
        "describeContents",
        "",
        "tabBarManual",
        "",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "PagesBean",
        "PkgExtBean",
        "TabBarBean",
        "ThemeBean",
        "WindowBean",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$CREATOR;


# instance fields
.field private handleTabBarLoad:Ljava/lang/String;

.field public iconFile:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private includeFiles:Ljava/lang/String;

.field public launchParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mfah:Ljava/lang/String;

.field public pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public pkgExts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public preloadRule:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/model/PreloadRuleSubpackage;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public subPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/Subpackage;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public tabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$CREATOR;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;-><init>()V

    .line 3
    const-class v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 4
    const-class v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->includeFiles:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/cloud/tmc/integration/model/Subpackage;->CREATOR:Lcom/cloud/tmc/integration/model/Subpackage$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->subPackages:Ljava/util/List;

    .line 8
    const-class v0, Lcom/cloud/tmc/integration/model/PreloadRuleSubpackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/cloud/tmc/integration/model/PreloadRuleSubpackage;

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Lcom/cloud/tmc/integration/model/PreloadRuleSubpackage;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.integration.model.PreloadRuleSubpackage"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v2, v1

    .line 13
    :cond_3
    iput-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->preloadRule:Ljava/util/HashMap;

    .line 14
    const-class v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.integration.model.MiniAppConfigModel.PagesBean"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->launchParams:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->mfah:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->iconFile:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getHandleTabBarLoad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->handleTabBarLoad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIncludeFiles()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->includeFiles:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMfah()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->mfah:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setHandleTabBarLoad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->handleTabBarLoad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIncludeFiles(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->includeFiles:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMfah(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->mfah:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setWindow(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 2
    .line 3
    return-void
.end method

.method public final tabBarManual()Z
    .locals 2

    .line 1
    const-string v0, "manual"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->handleTabBarLoad:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->includeFiles:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->subPackages:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->preloadRule:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->launchParams:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->mfah:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->iconFile:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pkgExts:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
