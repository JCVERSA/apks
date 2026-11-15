.class public Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

.field public static final TAG:Ljava/lang/String; = "AppBrandProfileActivity"


# instance fields
.field private appDesc:Ljava/lang/String;

.field private appDeveloper:Ljava/lang/String;

.field private appLogoUrl:Ljava/lang/String;

.field private appModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private appName:Ljava/lang/String;

.field private appRegisterType:Ljava/lang/String;

.field private appReleaseTime:J

.field private appVersion:Ljava/lang/String;

.field private final ivLogo$delegate:Lkotlin/Lazy;

.field private final mLayoutTitle$delegate:Lkotlin/Lazy;

.field private final sbAccountType$delegate:Lkotlin/Lazy;

.field private final sbDeveloperName$delegate:Lkotlin/Lazy;

.field private final sbUpdate$delegate:Lkotlin/Lazy;

.field private final sbVersion$delegate:Lkotlin/Lazy;

.field private final tvDesc$delegate:Lkotlin/Lazy;

.field private final tvName$delegate:Lkotlin/Lazy;

.field private final tvPrivacyPolicy$delegate:Lkotlin/Lazy;

.field private final tvUserAgreement$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$mLayoutTitle$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$mLayoutTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$ivLogo$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$ivLogo$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->ivLogo$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvName$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvName$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvName$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvDesc$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvDesc$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvDesc$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbDeveloperName$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbDeveloperName$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbVersion$2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbVersion$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbVersion$delegate:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbUpdate$2;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbUpdate$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbUpdate$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbAccountType$2;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$sbAccountType$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbAccountType$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvPrivacyPolicy$2;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvPrivacyPolicy$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvPrivacyPolicy$delegate:Lkotlin/Lazy;

    .line 102
    .line 103
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvUserAgreement$2;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$tvUserAgreement$2;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvUserAgreement$delegate:Lkotlin/Lazy;

    .line 113
    .line 114
    const-string v0, ""

    .line 115
    .line 116
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    .line 127
    .line 128
    return-void
.end method

.method private final getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->ivLogo$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbAccountType$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbDeveloperName$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbUpdate$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSbVersion()Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->sbVersion$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvDesc()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvDesc$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvName()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvName$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvPrivacyPolicy()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvPrivacyPolicy$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvUserAgreement()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->tvUserAgreement$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final launch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final toDate(J)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "ar"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    cmp-long v1, p1, v1

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 33
    .line 34
    const-string v1, "dd MMM yyyy"

    .line 35
    .line 36
    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 55
    .line 56
    const-string v1, "yyyy.MM.dd"

    .line 57
    .line 58
    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v3, Ljava/util/Locale;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const-string v3, "dd MMM, yyyy"

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    new-instance v4, Ljava/util/Locale;

    .line 82
    .line 83
    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    .line 88
    .line 89
    move-object v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 92
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "millis2String(releaseTime, formatter)"

    .line 105
    .line 106
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    :goto_1
    const-string p2, "Tmc"

    .line 111
    .line 112
    const-string v0, "appModel is null"

    .line 113
    .line 114
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    return-object v2
.end method


# virtual methods
.method public final getAppDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppRegisterType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppReleaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_app_brand_profile:I

    .line 2
    .line 3
    return v0
.end method

.method public hideStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method

.method public initData()V
    .locals 10

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    const-string v1, "AppBrandProfileActivity"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    :try_start_0
    const-string v3, "initData"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "miniAppName"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_5

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-lez v4, :cond_5

    .line 25
    .line 26
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "version"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    move-object v0, v2

    .line 37
    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "appinfoDesc"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    move-object v0, v2

    .line 48
    :cond_1
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "appinfoLogo"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    move-object v0, v2

    .line 59
    :cond_2
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "appinfoRegisterType"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    move-object v0, v2

    .line 70
    :cond_3
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "appinfoDeveloper"

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    move-object v0, v2

    .line 81
    :cond_4
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    .line 82
    .line 83
    const-string v0, "appinfoReleaseTime"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    iput-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_5
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    const-class v4, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 103
    .line 104
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v4, v5, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModelFromUsed(Landroid/content/Context;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_0

    .line 119
    :cond_6
    const/4 v3, 0x0

    .line 120
    :goto_0
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    const-string v4, "appModel is null"

    .line 123
    .line 124
    if-nez v3, :cond_9

    .line 125
    .line 126
    :try_start_1
    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v5, "appId is "

    .line 139
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 163
    .line 164
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-object v5, Lcom/cloud/tmc/kernel/constants/TmcConstants;->INSTANCE:Lcom/cloud/tmc/kernel/constants/TmcConstants;

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/cloud/tmc/kernel/constants/TmcConstants;->getKEY_MINIAPP_INFO_ADD_HOME()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-interface {v3, p0, v0, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v5, "addHomeInfo -> "

    .line 190
    .line 191
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v3, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 205
    .line 206
    const-class v5, Lcom/cloud/tmc/integration/model/AppModel;

    .line 207
    .line 208
    invoke-virtual {v3, v0, v5}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lcom/cloud/tmc/integration/model/AppModel;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 224
    .line 225
    if-eqz v0, :cond_10

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-nez v3, :cond_a

    .line 232
    .line 233
    move-object v3, v2

    .line 234
    :cond_a
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    .line 235
    .line 236
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 237
    .line 238
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 239
    .line 240
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    if-nez v3, :cond_b

    .line 245
    .line 246
    move-object v3, v2

    .line 247
    :cond_b
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-nez v3, :cond_c

    .line 254
    .line 255
    move-object v3, v2

    .line 256
    :cond_c
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    if-nez v3, :cond_d

    .line 263
    .line 264
    move-object v3, v2

    .line 265
    :cond_d
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getRegisterType()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-nez v3, :cond_e

    .line 272
    .line 273
    move-object v3, v2

    .line 274
    :cond_e
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    if-nez v3, :cond_f

    .line 281
    .line 282
    move-object v3, v2

    .line 283
    :cond_f
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getReleaseTime()J

    .line 286
    .line 287
    .line 288
    move-result-wide v5

    .line 289
    iput-wide v5, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :goto_3
    :try_start_2
    invoke-static {v1, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :goto_4
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    :cond_10
    :goto_5
    :try_start_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    if-eqz v6, :cond_11

    .line 304
    .line 305
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    move-object v3, v0

    .line 312
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 313
    .line 314
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    .line 315
    .line 316
    const/high16 v0, 0x41400000    # 12.0f

    .line 317
    .line 318
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    sget v9, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    .line 323
    .line 324
    move-object v4, p0

    .line 325
    move v8, v9

    .line 326
    invoke-interface/range {v3 .. v9}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    .line 327
    .line 328
    .line 329
    :cond_11
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvName()Landroid/widget/TextView;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-nez v0, :cond_12

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_12
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    :goto_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 342
    .line 343
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-lez v0, :cond_13

    .line 348
    .line 349
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvDesc()Landroid/widget/TextView;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz v0, :cond_13

    .line 354
    .line 355
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v0, v3}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->setMultilingualText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    :cond_13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    .line 361
    .line 362
    const-string v3, "1"

    .line 363
    .line 364
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    const/4 v4, 0x0

    .line 369
    const/16 v5, 0x8

    .line 370
    .line 371
    if-eqz v3, :cond_15

    .line 372
    .line 373
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    if-nez v0, :cond_14

    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_14
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    :goto_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-eqz v0, :cond_1a

    .line 388
    .line 389
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_brand_individual:I

    .line 390
    .line 391
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 396
    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_15
    const-string v3, "2"

    .line 402
    .line 403
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_18

    .line 408
    .line 409
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-nez v0, :cond_16

    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_16
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    :goto_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbDeveloperName()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-eqz v0, :cond_17

    .line 424
    .line 425
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    .line 426
    .line 427
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 428
    .line 429
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    .line 432
    :cond_17
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    if-eqz v0, :cond_1a

    .line 437
    .line 438
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_brand_business:I

    .line 439
    .line 440
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 445
    .line 446
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbAccountType()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-nez v0, :cond_19

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    :cond_1a
    :goto_9
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbVersion()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    if-eqz v0, :cond_1b

    .line 465
    .line 466
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    .line 467
    .line 468
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 469
    .line 470
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    .line 472
    .line 473
    :cond_1b
    iget-wide v6, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    .line 474
    .line 475
    const-wide/16 v8, 0x0

    .line 476
    .line 477
    cmp-long v0, v6, v8

    .line 478
    .line 479
    if-nez v0, :cond_1d

    .line 480
    .line 481
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    if-nez v0, :cond_1c

    .line 486
    .line 487
    goto :goto_b

    .line 488
    :cond_1c
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    goto :goto_b

    .line 492
    :cond_1d
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-nez v0, :cond_1e

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_1e
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    :goto_a
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getSbUpdate()Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-eqz v0, :cond_1f

    .line 507
    .line 508
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    .line 509
    .line 510
    invoke-direct {p0, v3, v4}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->toDate(J)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 517
    .line 518
    .line 519
    goto :goto_b

    .line 520
    :catchall_2
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    :cond_1f
    :goto_b
    return-void
.end method

.method public initView()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$initView$1;-><init>(Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setonBackClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitleLineHeight(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvPrivacyPolicy()Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvUserAgreement()Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x3

    .line 38
    new-array v4, v4, [Landroid/view/View;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v1, v4, v5

    .line 42
    .line 43
    aput-object v2, v4, v0

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    aput-object v3, v4, v0

    .line 47
    .line 48
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setOnClickListener([Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvPrivacyPolicy()Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    .line 24
    .line 25
    const-string p1, "https://h5.dlight-app.com/outside/privacy-policy?lang="

    .line 26
    .line 27
    invoke-static {p1, p0}, Lcom/cloud/tmc/integration/net/UrlKt;->appendCommonParamUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/16 v6, 0xc

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v2, p0

    .line 37
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch$default(Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getTvUserAgreement()Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    .line 52
    .line 53
    const-string p1, "https://h5.dlight-app.com/outside/user-agreement?lang="

    .line 54
    .line 55
    invoke-static {p1, p0}, Lcom/cloud/tmc/integration/net/UrlKt;->appendCommonParamUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v6, 0xc

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v2, p0

    .line 65
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch$default(Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->getIvLogo()Landroidx/appcompat/widget/AppCompatImageView;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    sget-object p1, Lcom/cloud/tmc/miniapp/FwDevDownloadUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/FwDevDownloadUtils;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lcom/cloud/tmc/miniapp/FwDevDownloadUtils;->init(Lcom/cloud/tmc/miniapp/base/BaseActivity;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "AppBrandProfileActivity"

    .line 5
    .line 6
    const-string v0, "onCreate"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AppBrandProfileActivity"

    .line 5
    .line 6
    const-string v1, "onDestroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "AppBrandProfileActivity"

    .line 5
    .line 6
    const-string v0, "onNewIntent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->initData()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AppBrandProfileActivity"

    .line 5
    .line 6
    const-string v1, "onStart"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AppBrandProfileActivity"

    .line 5
    .line 6
    const-string v1, "onStop"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAppDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDesc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppDeveloper(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appDeveloper:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppLogoUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appLogoUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppRegisterType(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appRegisterType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppReleaseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appReleaseTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->appVersion:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method
