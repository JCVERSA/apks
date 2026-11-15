.class public Lcom/transsion/xuanniao/account/model/data/LoginThird;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FACEBOOK_TYPE:I = 0x1

.field public static final GOOGLE_TYPE:I = 0x2

.field public static final INFINIX_TYPE:I = 0x5

.field public static final ITEL_TYPE:I = 0x6

.field public static final LINE_TYPE:I = 0x7

.field public static final TECNO_TYPE:I = 0x4

.field public static final TWITTER_TYPE:I = 0x3

.field public static final VK_TYPE:I = 0x8


# instance fields
.field public authTicket:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field private thirdToken:Ljava/lang/String;

.field private thirdType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->thirdType:I

    iput-object p2, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->authTicket:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->thirdToken:Ljava/lang/String;

    return-void
.end method

.method public static isFbSupport(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.feature.RU"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isVKSupport(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_language:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "kk-rKZ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "uk-rUA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method


# virtual methods
.method public getThirdToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->thirdToken:Ljava/lang/String;

    return-object p0
.end method

.method public getThirdType()I
    .locals 0

    iget p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->thirdType:I

    return p0
.end method

.method public setThirdToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->thirdToken:Ljava/lang/String;

    return-void
.end method

.method public setThirdType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThird;->thirdType:I

    return-void
.end method
