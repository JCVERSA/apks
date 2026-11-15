.class public final Lcom/cloud/hisavana/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/c$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/cloud/hisavana/sdk/c$a;


# instance fields
.field public final a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public b:F

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/c;->d:Lcom/cloud/hisavana/sdk/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const-string v0, "adsDTO"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/w;->a:Lcom/cloud/hisavana/sdk/w$a;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/w$a;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result p0

    return p0
.end method

.method public final b(ZZ)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1, v0}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public final c(F)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/w;->a:Lcom/cloud/hisavana/sdk/w$a;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/w$a;->b(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "0"

    return-object p0

    :cond_0
    new-instance p0, Ljava/text/DecimalFormat;

    const-string v0, "#.0"

    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const v0, 0xf4240

    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x4b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x4d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public final e()F
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/w;->a:Lcom/cloud/hisavana/sdk/w$a;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/w$a;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result p0

    return p0
.end method

.method public final f(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_download:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_score:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final g()I
    .locals 8

    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object v0

    invoke-virtual {v0}, Lcgc;->l()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/c;->e()F

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/c;->b:F

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreCount()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/c;->a()I

    move-result v4

    iput v4, p0, Lcom/cloud/hisavana/sdk/c;->c:I

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadCount()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/cloud/hisavana/sdk/c;->b(ZZ)I

    move-result v1

    invoke-static {}, Lr6;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "score: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/cloud/hisavana/sdk/c;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", \ndownloadCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/cloud/hisavana/sdk/c;->c:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", \nX: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreCount()F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", \nY: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", \nweightOld: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getOldStyle()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", \nweightScore: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getScoreStyle()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", \nweightDownload: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getDownloadStyle()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", \nrandomStyle: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BannerStyleHelper"

    invoke-virtual {v2, v0, p0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public final h(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/cloud/hisavana/sdk/c;->c:I

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/c;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/cloud/hisavana/sdk/c;->b:F

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/c;->c(F)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
