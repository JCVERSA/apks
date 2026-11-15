.class public final Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u00083\n\u0002\u0010\u0008\n\u0002\u0008+\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 }2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001}B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010s\u001a\u00020OH\u0016J\u0008\u0010t\u001a\u0004\u0018\u00010\tJ\u0008\u0010u\u001a\u0004\u0018\u00010\tJ\u0006\u0010v\u001a\u00020\u001bJ\u0006\u0010w\u001a\u00020\u001bJ\u0006\u0010x\u001a\u00020\u001bJ\u0006\u0010y\u001a\u00020\u001bJ\u0018\u0010z\u001a\u00020{2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010|\u001a\u00020OH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000b\"\u0004\u0008\u0019\u0010\rR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001e\u0010!\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001e\u0010$\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008%\u0010\u001d\"\u0004\u0008&\u0010\u001fR\u001e\u0010\'\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008(\u0010\u001d\"\u0004\u0008)\u0010\u001fR\u001e\u0010*\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008+\u0010\u001d\"\u0004\u0008,\u0010\u001fR\u001e\u0010-\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008.\u0010\u001d\"\u0004\u0008/\u0010\u001fR\u001c\u00100\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000b\"\u0004\u00082\u0010\rR\u001e\u00103\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u00084\u0010\u001d\"\u0004\u00085\u0010\u001fR\u001c\u00106\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000b\"\u0004\u00088\u0010\rR\u001c\u00109\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u000b\"\u0004\u0008;\u0010\rR\u001c\u0010<\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u000b\"\u0004\u0008>\u0010\rR\u001c\u0010?\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u000b\"\u0004\u0008A\u0010\rR\u001c\u0010B\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u000b\"\u0004\u0008D\u0010\rR\u001c\u0010E\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u000b\"\u0004\u0008G\u0010\rR\u001c\u0010H\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u000b\"\u0004\u0008J\u0010\rR\u001c\u0010K\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\u000b\"\u0004\u0008M\u0010\rR\u001e\u0010N\u001a\u0004\u0018\u00010OX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010T\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u001c\u0010U\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010\u000b\"\u0004\u0008W\u0010\rR\u001c\u0010X\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u000b\"\u0004\u0008Z\u0010\rR\u001c\u0010[\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010\u000b\"\u0004\u0008]\u0010\rR\u001c\u0010^\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010\u000b\"\u0004\u0008`\u0010\rR\u001c\u0010a\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u000b\"\u0004\u0008c\u0010\rR\u001c\u0010d\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010\u000b\"\u0004\u0008f\u0010\rR\u001e\u0010g\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008h\u0010\u001d\"\u0004\u0008i\u0010\u001fR\u001e\u0010j\u001a\u0004\u0018\u00010OX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010T\u001a\u0004\u0008k\u0010Q\"\u0004\u0008l\u0010SR\u001c\u0010m\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010\u000b\"\u0004\u0008o\u0010\rR\u001e\u0010p\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008q\u0010\u001d\"\u0004\u0008r\u0010\u001f\u00a8\u0006~"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "contentBackgroundColor",
        "",
        "getContentBackgroundColor",
        "()Ljava/lang/String;",
        "setContentBackgroundColor",
        "(Ljava/lang/String;)V",
        "darkModeContentBackgroundColor",
        "getDarkModeContentBackgroundColor",
        "setDarkModeContentBackgroundColor",
        "darkModeNavigationBarBackgroundColor",
        "getDarkModeNavigationBarBackgroundColor",
        "setDarkModeNavigationBarBackgroundColor",
        "darkModeNavigationBarIconStyle",
        "getDarkModeNavigationBarIconStyle",
        "setDarkModeNavigationBarIconStyle",
        "darkModeNavigationBarTextStyle",
        "getDarkModeNavigationBarTextStyle",
        "setDarkModeNavigationBarTextStyle",
        "enableNavigationBarLoading",
        "",
        "getEnableNavigationBarLoading",
        "()Ljava/lang/Boolean;",
        "setEnableNavigationBarLoading",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "enablePageLoading",
        "getEnablePageLoading",
        "setEnablePageLoading",
        "enablePullDownRefresh",
        "getEnablePullDownRefresh",
        "setEnablePullDownRefresh",
        "enablePullUpRefresh",
        "getEnablePullUpRefresh",
        "setEnablePullUpRefresh",
        "enableTabBarAdjustPan",
        "getEnableTabBarAdjustPan",
        "setEnableTabBarAdjustPan",
        "enableTransparentStatusBar",
        "getEnableTransparentStatusBar",
        "setEnableTransparentStatusBar",
        "handleWebviewPreload",
        "getHandleWebviewPreload",
        "setHandleWebviewPreload",
        "limitTextZoom",
        "getLimitTextZoom",
        "setLimitTextZoom",
        "navigationBarBackgroundColor",
        "getNavigationBarBackgroundColor",
        "setNavigationBarBackgroundColor",
        "navigationBarHomeAction",
        "getNavigationBarHomeAction",
        "setNavigationBarHomeAction",
        "navigationBarIconStyle",
        "getNavigationBarIconStyle",
        "setNavigationBarIconStyle",
        "navigationBarTextStyle",
        "getNavigationBarTextStyle",
        "setNavigationBarTextStyle",
        "navigationBarTitleText",
        "getNavigationBarTitleText",
        "setNavigationBarTitleText",
        "navigationStyle",
        "getNavigationStyle",
        "setNavigationStyle",
        "refreshFooterAccentColor",
        "getRefreshFooterAccentColor",
        "setRefreshFooterAccentColor",
        "refreshFooterBackgroundColor",
        "getRefreshFooterBackgroundColor",
        "setRefreshFooterBackgroundColor",
        "refreshFooterDelayed",
        "",
        "getRefreshFooterDelayed",
        "()Ljava/lang/Integer;",
        "setRefreshFooterDelayed",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "refreshHeaderAccentColor",
        "getRefreshHeaderAccentColor",
        "setRefreshHeaderAccentColor",
        "refreshHeaderBackgroundColor",
        "getRefreshHeaderBackgroundColor",
        "setRefreshHeaderBackgroundColor",
        "refreshHeaderCustomLoading",
        "getRefreshHeaderCustomLoading",
        "setRefreshHeaderCustomLoading",
        "refreshHeaderCustomLoadingGif",
        "getRefreshHeaderCustomLoadingGif",
        "setRefreshHeaderCustomLoadingGif",
        "refreshHeaderCustomSuccess",
        "getRefreshHeaderCustomSuccess",
        "setRefreshHeaderCustomSuccess",
        "refreshHeaderCustomSuccessGif",
        "getRefreshHeaderCustomSuccessGif",
        "setRefreshHeaderCustomSuccessGif",
        "refreshHeaderCustomTextEnable",
        "getRefreshHeaderCustomTextEnable",
        "setRefreshHeaderCustomTextEnable",
        "refreshHeaderDelayed",
        "getRefreshHeaderDelayed",
        "setRefreshHeaderDelayed",
        "refreshHeaderStyle",
        "getRefreshHeaderStyle",
        "setRefreshHeaderStyle",
        "refreshHeaderTranslationContent",
        "getRefreshHeaderTranslationContent",
        "setRefreshHeaderTranslationContent",
        "describeContents",
        "getContentBgColor",
        "getNavigationBgColor",
        "navigationBarIconStyleIsWhite",
        "navigationBarTextStyleIsWhite",
        "navigationStyleIsCustom",
        "navigationStyleIsHide",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
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


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean$CREATOR;


# instance fields
.field private contentBackgroundColor:Ljava/lang/String;

.field private darkModeContentBackgroundColor:Ljava/lang/String;

.field private darkModeNavigationBarBackgroundColor:Ljava/lang/String;

.field private darkModeNavigationBarIconStyle:Ljava/lang/String;

.field private darkModeNavigationBarTextStyle:Ljava/lang/String;

.field private enableNavigationBarLoading:Ljava/lang/Boolean;

.field private enablePageLoading:Ljava/lang/Boolean;

.field private enablePullDownRefresh:Ljava/lang/Boolean;

.field private enablePullUpRefresh:Ljava/lang/Boolean;

.field private enableTabBarAdjustPan:Ljava/lang/Boolean;

.field private enableTransparentStatusBar:Ljava/lang/Boolean;

.field private handleWebviewPreload:Ljava/lang/String;

.field private limitTextZoom:Ljava/lang/Boolean;

.field private navigationBarBackgroundColor:Ljava/lang/String;

.field private navigationBarHomeAction:Ljava/lang/String;

.field private navigationBarIconStyle:Ljava/lang/String;

.field private navigationBarTextStyle:Ljava/lang/String;

.field private navigationBarTitleText:Ljava/lang/String;

.field private navigationStyle:Ljava/lang/String;

.field private refreshFooterAccentColor:Ljava/lang/String;

.field private refreshFooterBackgroundColor:Ljava/lang/String;

.field private refreshFooterDelayed:Ljava/lang/Integer;

.field private refreshHeaderAccentColor:Ljava/lang/String;

.field private refreshHeaderBackgroundColor:Ljava/lang/String;

.field private refreshHeaderCustomLoading:Ljava/lang/String;

.field private refreshHeaderCustomLoadingGif:Ljava/lang/String;

.field private refreshHeaderCustomSuccess:Ljava/lang/String;

.field private refreshHeaderCustomSuccessGif:Ljava/lang/String;

.field private refreshHeaderCustomTextEnable:Ljava/lang/Boolean;

.field private refreshHeaderDelayed:Ljava/lang/Integer;

.field private refreshHeaderStyle:Ljava/lang/String;

.field private refreshHeaderTranslationContent:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean$CREATOR;

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
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;-><init>()V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullDownRefresh:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullUpRefresh:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 6
    :goto_2
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTransparentStatusBar:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v1, v3

    .line 8
    :goto_3
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableNavigationBarLoading:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTitleText:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyle:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarBackgroundColor:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyle:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyle:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarHomeAction:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderStyle:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v1, v3

    .line 17
    :goto_4
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomTextEnable:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoading:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoadingGif:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccess:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccessGif:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object v1, v3

    .line 23
    :goto_5
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderTranslationContent:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderAccentColor:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderBackgroundColor:Ljava/lang/String;

    .line 26
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    check-cast v2, Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    iput-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderDelayed:Ljava/lang/Integer;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterAccentColor:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterBackgroundColor:Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object v1, v3

    :goto_7
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterDelayed:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->contentBackgroundColor:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->handleWebviewPreload:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object v1, v3

    :goto_8
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePageLoading:Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object v1, v3

    :goto_9
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTabBarAdjustPan:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarBackgroundColor:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarTextStyle:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarIconStyle:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeContentBackgroundColor:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    :cond_a
    iput-object v3, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->limitTextZoom:Ljava/lang/Boolean;

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

.method public final getContentBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->contentBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentBgColor()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeContentBackgroundColor:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeContentBackgroundColor:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->contentBackgroundColor:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_0
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->contentBackgroundColor:Ljava/lang/String;

    .line 41
    .line 42
    :goto_1
    return-object v0
.end method

.method public final getDarkModeContentBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeContentBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDarkModeNavigationBarBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDarkModeNavigationBarIconStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarIconStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDarkModeNavigationBarTextStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarTextStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableNavigationBarLoading()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableNavigationBarLoading:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnablePageLoading()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePageLoading:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnablePullDownRefresh()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullDownRefresh:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnablePullUpRefresh()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullUpRefresh:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableTabBarAdjustPan()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTabBarAdjustPan:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableTransparentStatusBar()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTransparentStatusBar:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHandleWebviewPreload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->handleWebviewPreload:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLimitTextZoom()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->limitTextZoom:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNavigationBarBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNavigationBarHomeAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarHomeAction:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNavigationBarIconStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNavigationBarTextStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNavigationBarTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTitleText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNavigationBgColor()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarBackgroundColor:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarBackgroundColor:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarBackgroundColor:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_0
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarBackgroundColor:Ljava/lang/String;

    .line 41
    .line 42
    :goto_1
    return-object v0
.end method

.method public final getNavigationStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshFooterAccentColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterAccentColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshFooterBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshFooterDelayed()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterDelayed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderAccentColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderAccentColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderCustomLoading()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoading:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderCustomLoadingGif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoadingGif:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderCustomSuccess()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccess:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderCustomSuccessGif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccessGif:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderCustomTextEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomTextEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderDelayed()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderDelayed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRefreshHeaderTranslationContent()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderTranslationContent:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final navigationBarIconStyleIsWhite()Z
    .locals 3

    .line 1
    const-string v0, "white"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarIconStyle:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarIconStyle:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyle:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_1

    .line 45
    :goto_0
    const-string v2, ""

    .line 46
    .line 47
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyle:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_1
    return v0
.end method

.method public final navigationBarTextStyleIsWhite()Z
    .locals 3

    .line 1
    const-string v0, "white"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/env/IApplicationContextGetter;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarTextStyle:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarTextStyle:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyle:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_1

    .line 45
    :goto_0
    const-string v2, ""

    .line 46
    .line 47
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyle:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_1
    return v0
.end method

.method public final navigationStyleIsCustom()Z
    .locals 2

    .line 1
    const-string v0, "custom"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyle:Ljava/lang/String;

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

.method public final navigationStyleIsHide()Z
    .locals 2

    .line 1
    const-string v0, "hide"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyle:Ljava/lang/String;

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

.method public final setContentBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->contentBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDarkModeContentBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeContentBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDarkModeNavigationBarBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDarkModeNavigationBarIconStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarIconStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDarkModeNavigationBarTextStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarTextStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableNavigationBarLoading(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableNavigationBarLoading:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnablePageLoading(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePageLoading:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnablePullDownRefresh(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullDownRefresh:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnablePullUpRefresh(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullUpRefresh:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableTabBarAdjustPan(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTabBarAdjustPan:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableTransparentStatusBar(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTransparentStatusBar:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHandleWebviewPreload(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->handleWebviewPreload:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLimitTextZoom(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->limitTextZoom:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarHomeAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarHomeAction:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarIconStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarTextStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarTitleText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTitleText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshFooterAccentColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterAccentColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshFooterBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshFooterDelayed(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterDelayed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderAccentColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderAccentColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderCustomLoading(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoading:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderCustomLoadingGif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoadingGif:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderCustomSuccess(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccess:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderCustomSuccessGif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccessGif:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderCustomTextEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomTextEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderDelayed(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderDelayed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshHeaderTranslationContent(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderTranslationContent:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const-string p2, "parcel"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullDownRefresh:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePullUpRefresh:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTransparentStatusBar:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableNavigationBarLoading:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTitleText:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyle:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarBackgroundColor:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyle:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyle:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarHomeAction:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderStyle:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomTextEnable:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoading:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomLoadingGif:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccess:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderCustomSuccessGif:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderTranslationContent:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderAccentColor:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderBackgroundColor:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshHeaderDelayed:Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterAccentColor:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterBackgroundColor:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->refreshFooterDelayed:Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->contentBackgroundColor:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->handleWebviewPreload:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enablePageLoading:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->enableTabBarAdjustPan:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarBackgroundColor:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarTextStyle:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeNavigationBarIconStyle:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->darkModeContentBackgroundColor:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->limitTextZoom:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
