.class public Lcom/mgmi/model/Clicks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/model/Clicks;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_KEY:Ljava/lang/String; = "[DEFAULT]"


# instance fields
.field private DOWNLOAD:I

.field private ENTERAPP:I

.field public MinigromAppid:Ljava/lang/String;

.field public MinigromPath:Ljava/lang/String;

.field private SEEDETAIL:I

.field private SHOPCAR:I

.field private UN_KNOW:I

.field private action:Ljava/lang/String;

.field private clickDesc:Ljava/lang/String;

.field private clickStyle:Ljava/lang/String;

.field private clickThrough:Ljava/lang/String;

.field public deepLinkReport:Ljava/lang/String;

.field private external:Ljava/lang/String;

.field private hid:Ljava/lang/String;

.field private iconType:I

.field private isSpecialStyle:Z

.field private isTargetSchemeApkNoInstall:Z

.field private isThirdSdkClicks:Z

.field private mClickText:Ljava/lang/CharSequence;

.field private mClickTrackingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDownloadUrl:Ljava/lang/String;

.field public mH5Url:Ljava/lang/String;

.field private mHasDonwload:Z

.field public mSchemeUrl:Ljava/lang/String;

.field public marketUrl:Ljava/lang/String;

.field public minigromUrl:Ljava/lang/String;

.field private pre_load:Ljava/lang/String;

.field private schemeNoticeConfirm:I

.field private vid:Ljava/lang/String;

.field public webViewClickUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/model/Clicks$1;

    invoke-direct {v0}, Lcom/mgmi/model/Clicks$1;-><init>()V

    sput-object v0, Lcom/mgmi/model/Clicks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgmi/model/Clicks;->UN_KNOW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/Clicks;->SEEDETAIL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/model/Clicks;->ENTERAPP:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/mgmi/model/Clicks;->DOWNLOAD:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/mgmi/model/Clicks;->SHOPCAR:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$002(Lcom/mgmi/model/Clicks;I)I
    .locals 0

    iput p1, p0, Lcom/mgmi/model/Clicks;->schemeNoticeConfirm:I

    return p1
.end method

.method public static synthetic access$102(Lcom/mgmi/model/Clicks;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    return-object p1
.end method

.method private analyzingDeepLink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p2}, Lg4d;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_c

    array-length v3, p2

    if-lez v3, :cond_c

    move v3, v0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_4

    aget-object v4, p2, v3

    invoke-static {v4}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v4, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lg4d;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lg4d;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lg4d;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v4, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lcom/mgmi/model/Clicks;->mH5Url:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    if-eqz p2, :cond_8

    const-string v3, "MiniProgram://"

    const-string v4, "?username"

    invoke-static {p2, v3, v4}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    iput-object v2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "://"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_6

    iput-object v2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    const-string v3, "path="

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v4, "username="

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    const-string v5, "&"

    invoke-static {p2, v4, v5}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/Clicks;->MinigromAppid:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    invoke-static {p2, v4}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/Clicks;->MinigromAppid:Ljava/lang/String;

    :goto_2
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    invoke-static {p2, v3}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/Clicks;->MinigromPath:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-static {p1, p2}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iput-object v2, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iput-boolean v1, p0, Lcom/mgmi/model/Clicks;->isTargetSchemeApkNoInstall:Z

    iput-object v2, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    goto :goto_3

    :cond_b
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    if-eqz p2, :cond_c

    invoke-static {p1, p2}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/mgmi/model/Clicks;->marketUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "4"

    iput-object p2, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_enter_mimiprogram:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_4
    iget p1, p0, Lcom/mgmi/model/Clicks;->ENTERAPP:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_e
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, "1"

    if-nez p2, :cond_10

    iput-object v3, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_enter_app:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_5
    iget p1, p0, Lcom/mgmi/model/Clicks;->ENTERAPP:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_10
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v4, "2"

    if-nez p2, :cond_14

    iput-object v4, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p2

    iget-object v2, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lk7d;->j(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    iput-boolean v1, p0, Lcom/mgmi/model/Clicks;->mHasDonwload:Z

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_feed_install_app:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_6
    iget p1, p0, Lcom/mgmi/model/Clicks;->ENTERAPP:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_12
    iput-boolean v0, p0, Lcom/mgmi/model/Clicks;->mHasDonwload:Z

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_13

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_download:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_down_load_app:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_7
    iget p1, p0, Lcom/mgmi/model/Clicks;->DOWNLOAD:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_14
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->mH5Url:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_20

    iput-object v4, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    const-string p2, "5"

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_buy_app:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_8
    iget p1, p0, Lcom/mgmi/model/Clicks;->SHOPCAR:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_16
    const-string p2, "0"

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_player_learn_More:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_9
    iget p1, p0, Lcom/mgmi/model/Clicks;->SEEDETAIL:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_18
    iget-object p2, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_down_load_app:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_a
    iget p1, p0, Lcom/mgmi/model/Clicks;->DOWNLOAD:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto/16 :goto_d

    :cond_1a
    const-string p2, "6"

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_1b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_player_learn_More:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_b
    iget p1, p0, Lcom/mgmi/model/Clicks;->SEEDETAIL:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto :goto_d

    :cond_1c
    const-string p2, "9"

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_call_phone:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :goto_c
    iget p1, p0, Lcom/mgmi/model/Clicks;->SEEDETAIL:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    goto :goto_d

    :cond_1e
    iget p2, p0, Lcom/mgmi/model/Clicks;->SEEDETAIL:I

    iput p2, p0, Lcom/mgmi/model/Clicks;->iconType:I

    iget-boolean p2, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_d

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/mgmi/R$string;->mgmi_player_learn_More:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    goto :goto_d

    :cond_20
    const-string p1, "3"

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    iput-object v2, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    iget p1, p0, Lcom/mgmi/model/Clicks;->UN_KNOW:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    :goto_d
    return-void
.end method

.method private getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "[DEFAULT]"

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public addClickTracking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/Clicks;->getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public existClickTracking()Z
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getClickDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getClickDownload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getClickMiniprogram()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getClickScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getClickStyle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/mgmi/model/Clicks;->isThirdSdkClicks:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_player_learn_More:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getClickThrough()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickThrough:Ljava/lang/String;

    return-object p0
.end method

.method public getClickTracking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/Clicks;->getClickTracking(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClickTracking(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/mgmi/model/Clicks;->getListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->webViewClickUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->webViewClickUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mH5Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mH5Url:Ljava/lang/String;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeepLink(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/mgmi/model/Clicks;->analyzingDeepLink(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/mgmi/model/Clicks;->UN_KNOW:I

    iput p1, p0, Lcom/mgmi/model/Clicks;->iconType:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->mClickText:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    return-object p0
.end method

.method public getDeepLinkReport()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    return-object p0
.end method

.method public getExternal()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->external:Ljava/lang/String;

    return-object p0
.end method

.method public getHid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->hid:Ljava/lang/String;

    return-object p0
.end method

.method public getIconBackground(ZLandroid/content/Context;)I
    .locals 2

    const-string v0, "0"

    iget-object v1, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    :cond_0
    iget p2, p0, Lcom/mgmi/model/Clicks;->iconType:I

    iget v0, p0, Lcom/mgmi/model/Clicks;->SEEDETAIL:I

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickDesc:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    sget p0, Lcom/mgmi/R$drawable;->mgmi_seedetails_v:I

    return p0

    :cond_1
    sget p0, Lcom/mgmi/R$drawable;->mgmi_seedetails_h:I

    return p0

    :cond_2
    iget v0, p0, Lcom/mgmi/model/Clicks;->ENTERAPP:I

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickDesc:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    sget p0, Lcom/mgmi/R$drawable;->mgmi_enter_v:I

    return p0

    :cond_3
    sget p0, Lcom/mgmi/R$drawable;->mgmi_enter_h:I

    return p0

    :cond_4
    iget v0, p0, Lcom/mgmi/model/Clicks;->DOWNLOAD:I

    if-ne p2, v0, :cond_6

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickDesc:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    sget p0, Lcom/mgmi/R$drawable;->mgmi_download_v:I

    return p0

    :cond_5
    sget p0, Lcom/mgmi/R$drawable;->mgmi_download_h:I

    return p0

    :cond_6
    iget v0, p0, Lcom/mgmi/model/Clicks;->SHOPCAR:I

    if-ne p2, v0, :cond_8

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickDesc:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    sget p0, Lcom/mgmi/R$drawable;->mgmi_shopcar_v:I

    return p0

    :cond_7
    sget p0, Lcom/mgmi/R$drawable;->mgmi_shopcar_h:I

    return p0

    :cond_8
    iget p0, p0, Lcom/mgmi/model/Clicks;->UN_KNOW:I

    return p0
.end method

.method public getMinigromAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->MinigromAppid:Ljava/lang/String;

    return-object p0
.end method

.method public getMinigromPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->MinigromPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPre_load()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->pre_load:Ljava/lang/String;

    return-object p0
.end method

.method public getSchemeNoticeConfirm()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/Clicks;->schemeNoticeConfirm:I

    return p0
.end method

.method public getSmallClickText(Landroid/content/Context;Ljava/lang/String;)Lcom/mgmi/model/f;
    .locals 11

    new-instance v0, Lcom/mgmi/model/f;

    invoke-direct {v0}, Lcom/mgmi/model/f;-><init>()V

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickThrough:Ljava/lang/String;

    invoke-static {p0}, Lg4d;->k(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p0, :cond_c

    array-length v4, p0

    if-lez v4, :cond_c

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move v8, v3

    :goto_0
    array-length v9, p0

    if-ge v8, v9, :cond_5

    aget-object v9, p0, v8

    invoke-static {v9}, Lg4d;->n(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v2, v9

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lg4d;->m(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v6, v9

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lg4d;->t(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lg4d;->f()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v9

    goto :goto_1

    :cond_2
    invoke-static {v9}, Lg4d;->r(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v4, v9

    goto :goto_1

    :cond_3
    move-object v7, v9

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "MiniProgram://"

    const-string v5, "?username"

    invoke-static {v2, p0, v5}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    :goto_2
    move-object v2, v1

    goto/16 :goto_5

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const-string p0, "path="

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "username="

    if-eqz v5, :cond_8

    const-string v5, "&"

    invoke-static {v2, v8, v5}, Lg4d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-static {v2, v8}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v2, p0}, Lg4d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v8, 0x1

    if-nez p0, :cond_a

    invoke-static {p1, v4}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {p1, v5}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    goto :goto_4

    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {p1, v5}, Lh2d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    :goto_4
    move-object v4, v5

    :cond_b
    move v3, v8

    goto :goto_5

    :cond_c
    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    :cond_d
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_str_open:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    invoke-static {v4}, Lg4d;->s(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_install_app:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_6

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_str_open:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_6

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_6

    :cond_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p0

    invoke-virtual {p0, v6}, Lk7d;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_str_open:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/mgmi/model/f;->setIsDownloading(I)V

    goto :goto_6

    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_install_app:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_6

    :cond_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/mgmi/R$string;->mgmi_template_detail:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_15
    :goto_6
    invoke-virtual {v0, v6}, Lcom/mgmi/model/f;->setDownloadUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mgmi/model/f;->setDetailText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public getWebViewClickUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->webViewClickUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isDonwloadType(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mDownloadUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isFileDownload(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    :cond_0
    iget-boolean p0, p0, Lcom/mgmi/model/Clicks;->mHasDonwload:Z

    return p0
.end method

.method public isSchemeNull()Z
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->mSchemeUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->minigromUrl:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetSchemeApkNoInstall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/Clicks;->isTargetSchemeApkNoInstall:Z

    return p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->action:Ljava/lang/String;

    return-void
.end method

.method public setClickDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->clickDesc:Ljava/lang/String;

    return-void
.end method

.method public setClickStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->clickStyle:Ljava/lang/String;

    return-void
.end method

.method public setClickTextForThirdSdk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/model/Clicks;->isThirdSdkClicks:Z

    return-void
.end method

.method public setClickThrough(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->clickThrough:Ljava/lang/String;

    const-string p1, "0"

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    return-void
.end method

.method public setDeepLinkReport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->deepLinkReport:Ljava/lang/String;

    return-void
.end method

.method public setExternal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->external:Ljava/lang/String;

    return-void
.end method

.method public setHid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->hid:Ljava/lang/String;

    return-void
.end method

.method public setMinigromAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->MinigromAppid:Ljava/lang/String;

    return-void
.end method

.method public setMinigromPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->MinigromPath:Ljava/lang/String;

    return-void
.end method

.method public setPre_load(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->pre_load:Ljava/lang/String;

    return-void
.end method

.method public setSchemeNoticeConfirm(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/Clicks;->schemeNoticeConfirm:I

    return-void
.end method

.method public setSpecialStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/Clicks;->isSpecialStyle:Z

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->vid:Ljava/lang/String;

    return-void
.end method

.method public setWebViewClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/Clicks;->webViewClickUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoClicks [clickThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->clickThrough:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDeepLink(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/Clicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/mgmi/model/Clicks;->analyzingDeepLink(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/mgmi/model/Clicks;->schemeNoticeConfirm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/mgmi/model/Clicks;->mClickTrackingMap:Ljava/util/Map;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
