.class public Lcom/mgmi/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/e/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mgmi/model/VASTAd;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mgmi/e/a/c;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field b:Lcom/mgmi/model/VASTAd;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/e/a/b;->c:J

    iput-object p1, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/mgmi/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/e/a;->getResult()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[AUCTION_LOSS]"

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {p1}, Lcom/mgmi/e/a;->getWinECPM()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/mgmi/e/a;->getWinECPM()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lwrd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    const-string v0, "[AUCTION_PRICE]"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/e/a;->getSecondECPM()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/mgmi/e/a;->getSecondECPM()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lwrd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string v0, "[HIGHEST_LOSS_PRICE]"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object p2, p0

    .line 173
    invoke-virtual {p1}, Lcom/mgmi/e/a;->getBidWinner()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 174
    const-string p0, "[AUCTION_SEAT_ID]"

    invoke-virtual {p1}, Lcom/mgmi/e/a;->getBidWinner()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method private a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;
    .locals 9

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p2}, Lcom/mgmi/e/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[STATUS]"

    const-string v2, "-1"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/mgmi/e/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/mgmi/e/g;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TIME]"

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/mgmi/e/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_1
    invoke-virtual {p2}, Lcom/mgmi/e/g;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CLICK_STATUS]"

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/mgmi/e/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_2
    invoke-virtual {p2}, Lcom/mgmi/e/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DPLINK]"

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/mgmi/e/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_3
    invoke-virtual {p2}, Lcom/mgmi/e/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgmi/e/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn=\\d"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    const-string v1, "[CE_D_Y]"

    const-string v2, "[CE_D_X]"

    const-string v3, "[CE_A_Y]"

    const-string v4, "[CE_A_X]"

    const-string v5, "[CS_D_Y]"

    const-string v6, "[CS_D_X]"

    const-string v7, "[CS_A_Y]"

    const-string v8, "[CS_A_X]"

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->j()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->k()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->d()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->i()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->j()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->k()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->d()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->i()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 25
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CLICK_POS]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 26
    :cond_5
    const-string v0, "-999"

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 34
    :cond_6
    :goto_4
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->a()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__WIDTH__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->c()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__HEIGHT__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->j()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DOWN_X__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->k()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DOWN_Y__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->j()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__UP_X__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    invoke-virtual {v0}, Ldkd;->k()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__UP_Y__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_7
    invoke-virtual {p2}, Lcom/mgmi/e/g;->b()Ldkd;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 42
    const-string v0, "[CLICK_ASSIS]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 43
    sget v1, Ljed;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoClickHelper.tkct"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ljed;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fanfansss"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    sput v0, Ljed;->a:I

    .line 46
    invoke-virtual {p2}, Lcom/mgmi/e/g;->h()Lcom/mgmi/e/a;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 47
    invoke-direct {p0, p2, p1}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/e/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method private a(Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/net/bean/BootDataItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v2, :cond_0

    .line 117
    const-string v3, "boot"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private b(Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/net/bean/BootDataItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v2, :cond_0

    .line 37
    const-string v3, "boot"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->impression:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 38
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private b(Lcom/mgmi/model/VASTAd;)Z
    .locals 0

    .line 1
    const-string p0, "paster"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private c(Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/net/bean/BootDataItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->ad_list:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v2, :cond_0

    .line 28
    const-string v3, "boot"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3"

    iget-object v4, v2, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->close:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private c(Lcom/mgmi/model/VASTAd;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object p0

    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result p0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(ILcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 5

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p2, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/c;

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v2}, Lcom/mgmi/net/bean/c;->a()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/mgmi/net/bean/c;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v2, v1}, Lcom/mgmi/net/bean/c;->a(Z)V

    .line 84
    invoke-virtual {v2}, Lcom/mgmi/net/bean/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v3, Lcom/mgmi/net/a/a;

    invoke-direct {v3}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 86
    invoke-virtual {v2, v3}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v2

    .line 87
    new-instance v3, Lcom/mgmi/e/a/b$17;

    invoke-direct {v3, p0}, Lcom/mgmi/e/a/b$17;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v2, v3}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/net/bean/c;

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v2}, Lcom/mgmi/net/bean/c;->a()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {v2}, Lcom/mgmi/net/bean/c;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v2, v1}, Lcom/mgmi/net/bean/c;->a(Z)V

    .line 95
    invoke-virtual {v2}, Lcom/mgmi/net/bean/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(ILcom/mgmi/model/i;Lcom/mgmi/e/g;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 310
    invoke-virtual {p2}, Lcom/mgmi/model/i;->m()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x1

    if-nez p1, :cond_2

    .line 311
    invoke-virtual {p2}, Lcom/mgmi/model/i;->b()Ljava/util/List;

    move-result-object p1

    .line 312
    invoke-virtual {p2, p3}, Lcom/mgmi/model/i;->a(Z)V

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    .line 313
    invoke-virtual {p2}, Lcom/mgmi/model/i;->c()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p3, 0x2

    if-ne p1, p3, :cond_4

    .line 314
    invoke-virtual {p2}, Lcom/mgmi/model/i;->d()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 315
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mgmi/e/a/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 10

    .line 254
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 257
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "&suuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "&z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "&from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "&vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    const-string v1, "&adinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 269
    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    .line 270
    new-instance v0, Lcom/mgmi/e/a/b$9;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/b$9;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;IIZ)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    .line 227
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    .line 228
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_b

    .line 229
    invoke-virtual {v3}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 230
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    if-nez v1, :cond_3

    .line 232
    invoke-virtual {v3}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object v4, v2

    move/from16 v9, p2

    invoke-static/range {v4 .. v11}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 233
    :cond_3
    const-string v4, ""

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 234
    invoke-virtual {v3}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg4d;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    array-length v3, v1

    if-lt v3, v5, :cond_4

    .line 236
    aget-object v1, v1, v13

    move-object v8, v1

    goto :goto_1

    :cond_4
    move-object v8, v4

    :goto_1
    const/4 v11, 0x0

    .line 237
    iget-object v12, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "127.0.0.1"

    const/4 v9, 0x3

    move-object v4, v2

    move/from16 v10, p2

    invoke-static/range {v4 .. v12}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    .line 238
    invoke-virtual {v3}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg4d;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    array-length v3, v1

    if-lt v3, v5, :cond_6

    .line 240
    aget-object v1, v1, v13

    move-object v8, v1

    goto :goto_2

    :cond_6
    move-object v8, v4

    :goto_2
    const/4 v11, 0x0

    .line 241
    iget-object v12, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "local_file"

    const/4 v9, 0x3

    move-object v4, v2

    move/from16 v10, p2

    invoke-static/range {v4 .. v12}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    .line 242
    :cond_7
    :goto_3
    const-string v1, "front"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "paster"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getShow_type()I

    move-result v1

    if-ne v1, v13, :cond_9

    :cond_8
    const/4 v1, 0x4

    move/from16 v3, p2

    if-ne v3, v1, :cond_9

    if-nez p4, :cond_9

    .line 243
    const-string v1, "&type="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_9
    const-string v1, "&suuid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "&z="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "&from="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "&vid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 249
    const-string v1, "&adinfo="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Lcom/mgmi/net/a/a;

    invoke-direct {v2}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v2, v13}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v1

    iget-object v2, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 252
    invoke-virtual {v1, v2}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v1

    .line 253
    new-instance v2, Lcom/mgmi/e/a/b$8;

    invoke-direct {v2, p0}, Lcom/mgmi/e/a/b$8;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v1, v2}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;ILjava/lang/String;JLcom/mgmi/e/g;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdlosturl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdlosturl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 120
    const-string p3, ""

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdlosturl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[LOSTID]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[TPN]"

    .line 122
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[LOSTTIME]"

    .line 123
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1, p6}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    new-instance p2, Lcom/mgmi/net/a/a;

    invoke-direct {p2}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 126
    invoke-virtual {p1, p2}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    .line 127
    new-instance p2, Lcom/mgmi/e/a/b$3;

    invoke-direct {p2, p0}, Lcom/mgmi/e/a/b$3;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {p1, p2}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_2
    return-void

    .line 128
    :cond_3
    :goto_0
    const-string p0, "mgmi"

    const-string p1, "report adlost but error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 8

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->hasFireImpressions()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/mgmi/e/a/b;->b:Lcom/mgmi/model/VASTAd;

    .line 50
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getImpression()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    const-string v2, "0"

    const-string v3, "[CT_USE]"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAdExpose-----url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "zhengfeng"

    invoke-static {v6, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v4, Lcom/mgmi/net/a/a;

    invoke-direct {v4}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v4, v5}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v4

    iget-object v6, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v4

    .line 58
    new-instance v6, Lcom/mgmi/e/a/b$1;

    invoke-direct {v6, p0, p1, v5}, Lcom/mgmi/e/a/b$1;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getImpression(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mgmi/e/a/b;->c:J

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 66
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    .line 68
    :cond_4
    const-string p2, "banner"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "ai_implant"

    .line 69
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "mid"

    .line 70
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "focus-head"

    .line 71
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "progress"

    .line 72
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "el"

    .line 73
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 74
    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/model/VASTAd;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->c(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 75
    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setHasFireImpressions(Z)V

    :cond_5
    return-void

    .line 76
    :cond_6
    :goto_2
    const-string p0, "ReporterBase"

    const-string p1, "reportImpression error-----------------"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v2, p4

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object v3

    .line 176
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v4, :cond_0

    :goto_0
    move-object v10, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-eqz v10, :cond_8

    .line 177
    invoke-virtual {v10}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v10}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    .line 178
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    .line 180
    const-string v14, "302000"

    if-nez v2, :cond_3

    .line 181
    invoke-virtual {v10}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    iget-object v9, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const v3, 0x493e0

    const/4 v4, -0x1

    move-object v2, v12

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v10}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v14, v2, v11}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v6, 0x3

    .line 183
    iget-object v9, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const v3, 0x493e0

    const/4 v4, -0x1

    const-string v5, "127.0.0.1"

    move-object v2, v12

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    .line 184
    const-string v2, "127.0.0.1"

    invoke-virtual {p0, v1, v14, v2, v11}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 185
    invoke-virtual {v10}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg4d;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 186
    array-length v4, v2

    if-lt v4, v3, :cond_5

    .line 187
    aget-object v2, v2, v13

    :goto_2
    move-object v6, v2

    goto :goto_3

    .line 188
    :cond_5
    const-string v2, ""

    goto :goto_2

    :goto_3
    const/4 v7, 0x3

    .line 189
    iget-object v10, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const v3, 0x493e0

    const/4 v4, -0x1

    const-string v5, "local_file"

    move-object v2, v12

    move/from16 v8, p3

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v10}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "local_file"

    invoke-virtual {p0, v1, v14, v2, v11}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_6
    :goto_4
    const-string v2, "&suuid="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "&z="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, "&from="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, "&vid="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 196
    const-string v2, "&adinfo="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/mgmi/net/a/a;

    invoke-direct {v2}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v2, v13}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v1

    iget-object v2, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 199
    invoke-virtual {v1, v2}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/mgmi/e/a/b$6;

    invoke-direct {v2, p0}, Lcom/mgmi/e/a/b$6;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v1, v2}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 272
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportErrors url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mgmi"

    invoke-static {v4, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, "null"

    if-nez p2, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    const-string v5, "[ERRORCODE]"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-nez p4, :cond_2

    move-object v4, v3

    goto :goto_2

    .line 277
    :cond_2
    invoke-static {p4}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v5, "[ERRORMSG]"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_3

    goto :goto_3

    .line 278
    :cond_3
    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v4, "[ERRORURL]"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrorReportType()I

    move-result v3

    if-eqz v3, :cond_4

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrorReportType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[CT_INDEX]"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 284
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 286
    new-instance p3, Lcom/mgmi/net/a/a;

    invoke-direct {p3}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p2

    iget-object p3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 287
    invoke-virtual {p2, p3}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p2

    .line 288
    new-instance p3, Lcom/mgmi/e/a/b$10;

    invoke-direct {p3, p0}, Lcom/mgmi/e/a/b$10;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {p2, p3}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 6

    if-eqz p1, :cond_e

    .line 129
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lcom/mgmi/net/bean/BootDataItem;->hasExposed:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    .line 130
    :cond_0
    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->impression:Ljava/util/List;

    .line 131
    invoke-direct {p0, v0}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    :cond_1
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v0, v0, Lcom/mgmi/net/bean/BootBaseReport;->sdk:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_5

    .line 135
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->bidResult:Lcom/mgmi/e/a;

    if-eqz v1, :cond_d

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    .line 140
    invoke-direct {p0, v0, v3}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/e/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_3
    iget-object v5, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/mgadplus/netlib/a/e;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 142
    iget-object v5, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v5, v5, Lcom/mgmi/net/bean/BootBaseReport;->mk:I

    if-ne v5, v2, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    invoke-static {v3, v5}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_9

    .line 143
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->bidResult:Lcom/mgmi/e/a;

    if-eqz v1, :cond_d

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0, v0, v3}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/e/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    :cond_7
    iget-object v5, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/mgadplus/netlib/a/e;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 150
    iget-object v5, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v5, v5, Lcom/mgmi/net/bean/BootBaseReport;->mk:I

    if-ne v5, v2, :cond_8

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v4

    :goto_3
    invoke-static {v3, v5}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_2

    .line 151
    :cond_9
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->bidResult:Lcom/mgmi/e/a;

    if-eqz v1, :cond_d

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 156
    iget-object v4, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-boolean v4, v4, Lcom/mgmi/net/bean/BootDataItem;->isBackUp:Z

    const-string v5, "[CT_USE]"

    if-eqz v4, :cond_b

    .line 157
    const-string v4, "1"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 158
    :cond_b
    const-string v4, "0"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v0, :cond_c

    .line 159
    invoke-direct {p0, v0, v3}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/e/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    :cond_c
    new-instance v4, Lcom/mgmi/net/a/a;

    invoke-direct {v4}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v4, v2}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 161
    invoke-virtual {v4, v5}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v4

    .line 162
    new-instance v5, Lcom/mgmi/e/a/b$4;

    invoke-direct {v5, p0, p1, v3}, Lcom/mgmi/e/a/b$4;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/net/bean/BootAdBean;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_4

    .line 163
    :cond_d
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-boolean v2, p0, Lcom/mgmi/net/bean/BootDataItem;->hasExposed:Z

    return-void

    .line 164
    :cond_e
    :goto_6
    const-string p0, "ReporterBase"

    const-string p1, "reportImpression error-----------------"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/e/g;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 298
    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-nez p1, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->close:Ljava/util/List;

    .line 300
    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->c(Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 302
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v0, :cond_3

    .line 303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 305
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    new-instance v1, Lcom/mgmi/net/a/a;

    invoke-direct {v1}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 308
    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v0

    .line 309
    new-instance v1, Lcom/mgmi/e/a/b$13;

    invoke-direct {v1, p0}, Lcom/mgmi/e/a/b$13;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v0, v1}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 289
    :try_start_0
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->err:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->err:Ljava/lang/String;

    const-string v0, "[ERRORCODE]"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 291
    const-string p2, "[ERRORMSG]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "null"

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 292
    const-string p2, "[ERRORURL]"

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 295
    new-instance p2, Lcom/mgmi/net/a/a;

    invoke-direct {p2}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 296
    invoke-virtual {p1, p2}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    .line 297
    new-instance p2, Lcom/mgmi/e/a/b$12;

    invoke-direct {p2, p0}, Lcom/mgmi/e/a/b$12;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {p1, p2}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootDataItem;Lcom/mgmi/e/g;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v15, v1, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/net/bean/BootDataItem;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 100
    invoke-interface {v15, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_1
    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v2

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/e/g;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/mgmi/net/bean/BootDataItem;->dlSt:Ljava/util/List;

    iget-object v8, v1, Lcom/mgmi/net/bean/BootDataItem;->dlFin:Ljava/util/List;

    iget-object v9, v1, Lcom/mgmi/net/bean/BootDataItem;->insSt:Ljava/util/List;

    iget-object v10, v1, Lcom/mgmi/net/bean/BootDataItem;->insFin:Ljava/util/List;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    .line 103
    invoke-virtual/range {v2 .. v15}, Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 104
    iget v2, v1, Lcom/mgmi/net/bean/BootDataItem;->tkct:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v17, :cond_6

    .line 105
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 106
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 107
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, p2

    invoke-direct {v0, v6, v7}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v6

    .line 109
    iget-object v8, v1, Lcom/mgmi/net/bean/BootDataItem;->clk_trac_macro:Ljava/lang/String;

    iget-object v9, v1, Lcom/mgmi/net/bean/BootDataItem;->clk_trac_value:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-boolean v10, v1, Lcom/mgmi/net/bean/BootDataItem;->isFromCAClick:Z

    if-eqz v10, :cond_5

    move v10, v4

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_3
    invoke-static {v6, v8, v9, v10}, Lbld;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 110
    new-instance v8, Lcom/mgmi/net/a/a;

    invoke-direct {v8}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v8, v4}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v6

    iget-object v8, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 111
    invoke-virtual {v6, v8}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v6

    .line 112
    new-instance v8, Lcom/mgmi/e/a/b$2;

    invoke-direct {v8, v0}, Lcom/mgmi/e/a/b$2;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v6, v8}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 9

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-static {}, Lcom/mgmi/platform/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    .line 203
    const-string p2, "unkown url"

    :cond_0
    if-nez p3, :cond_1

    const/4 v6, 0x0

    .line 204
    iget-object v7, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v0, v8

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 205
    iget-object v7, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v0, v8

    move v1, p3

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    .line 206
    :goto_0
    const-string v0, "&suuid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, "&z="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v0, "&from="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/ads/api/j;->a()Lcom/mgmi/ads/api/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v0, "&vid="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, ""

    const-string v1, "&adinfo="

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/mgmi/model/VASTAd;

    if-eqz v2, :cond_3

    .line 211
    move-object v2, p1

    check-cast v2, Lcom/mgmi/model/VASTAd;

    .line 212
    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getResInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 215
    instance-of v2, p1, Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v2, :cond_4

    .line 216
    move-object v2, p1

    check-cast v2, Lcom/mgmi/net/bean/BootAdBean;

    .line 217
    iget-object v3, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/mgmi/net/bean/BootDataItem;->resInfo:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootDataItem;->resInfo:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-eq p4, v1, :cond_5

    .line 219
    const-string v1, "&cache="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 221
    new-instance v1, Lcom/mgmi/net/a/a;

    invoke-direct {v1}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p4

    iget-object v1, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 222
    invoke-virtual {p4, v1}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p4

    .line 223
    new-instance v1, Lcom/mgmi/e/a/b$7;

    invoke-direct {v1, p0}, Lcom/mgmi/e/a/b$7;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {p4, v1}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    if-eqz p3, :cond_6

    const p4, 0x49bb1

    if-eq p4, p3, :cond_6

    if-eqz p1, :cond_6

    .line 224
    instance-of p4, p1, Lcom/mgmi/model/VASTAd;

    if-eqz p4, :cond_6

    .line 225
    check-cast p1, Lcom/mgmi/model/VASTAd;

    .line 226
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/mgmi/net/a/a;

    invoke-direct {v0}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 325
    invoke-virtual {p1, v0}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object p1

    .line 326
    new-instance v0, Lcom/mgmi/e/a/b$15;

    invoke-direct {v0, p0}, Lcom/mgmi/e/a/b$15;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 316
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 318
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 320
    new-instance v1, Lcom/mgmi/net/a/a;

    invoke-direct {v1}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 321
    invoke-virtual {v0, v1}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/mgmi/e/a/b$14;

    invoke-direct {v1, p0}, Lcom/mgmi/e/a/b$14;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v0, v1}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v3}, Lcom/mgmi/model/Clicks;->getClickTracking()Ljava/util/List;

    move-result-object v18

    .line 7
    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v4

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/e/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlStart()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlFinish()Ljava/util/List;

    move-result-object v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlInstall()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlComplete()Ljava/util/List;

    move-result-object v12

    .line 10
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mgmi/model/Clicks;->getClickTracking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 11
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlStart(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 12
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlFinish(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 13
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlInstall(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 14
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlComplete(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v8, v18

    .line 15
    invoke-virtual/range {v4 .. v17}, Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz v18, :cond_4

    .line 16
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 17
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 18
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-direct {v0, v5, v2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_macro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lbld;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 22
    new-instance v6, Lcom/mgmi/net/a/a;

    invoke-direct {v6}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v6, v5}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v6

    iget-object v7, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v6

    .line 23
    new-instance v7, Lcom/mgmi/e/a/b$11;

    invoke-direct {v7, v0, v1, v5}, Lcom/mgmi/e/a/b$11;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    .line 24
    :cond_4
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgmi/model/Clicks;->getClickTracking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/mgmi/e/a/b;->c:J

    .line 28
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 30
    invoke-direct {v0, v4, v2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_macro()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lbld;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/mgmi/e/f;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public b(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    .line 39
    iget-object v2, v1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-eqz v2, :cond_7

    iget-boolean v2, v2, Lcom/mgmi/net/bean/a;->a:Z

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/mgmi/net/bean/BootDataItem;->creativeTrack:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 41
    iget-object v2, v1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-wide v3, v2, Lcom/mgmi/net/bean/a;->b:J

    .line 42
    iget-wide v5, v2, Lcom/mgmi/net/bean/a;->c:J

    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-ltz v2, :cond_7

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    add-long v7, v3, v5

    .line 43
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v7, v1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/mgmi/net/bean/a;->a:Z

    .line 45
    iget-object v9, v7, Lcom/mgmi/net/bean/a;->h:Ljava/lang/String;

    .line 46
    iget-object v10, v7, Lcom/mgmi/net/bean/a;->d:Ljava/lang/String;

    .line 47
    iget-object v11, v7, Lcom/mgmi/net/bean/a;->e:Ljava/lang/String;

    .line 48
    iget-object v12, v7, Lcom/mgmi/net/bean/a;->g:Ljava/lang/String;

    .line 49
    iget-object v7, v7, Lcom/mgmi/net/bean/a;->f:Ljava/lang/String;

    .line 50
    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootDataItem;->creativeTrack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 53
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 54
    const-string v14, "[CMS]"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 55
    const-string v14, "[AD_REQ_MS]"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 56
    const-string v14, "[AD_TOTAL_MS]"

    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 57
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 58
    const-string v14, "[AD_TYPE]"

    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 59
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 60
    const-string v14, "[AD_URL]"

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 61
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 62
    const-string v14, "[AD_STATUS]"

    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 63
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 64
    const-string v14, "[REC_TYPE]"

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 65
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 66
    const-string v14, "[PAGE_STATUS]"

    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 67
    :cond_5
    new-instance v14, Lcom/mgmi/net/a/a;

    invoke-direct {v14}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v14, v8}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v14

    iget-object v15, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 68
    invoke-virtual {v14, v15}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v14

    .line 69
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "ReporterBasereportCreativeTrack"

    invoke-static {v13, v8}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v8, Lcom/mgmi/e/a/b$16;

    invoke-direct {v8, v0}, Lcom/mgmi/e/a/b$16;-><init>(Lcom/mgmi/e/a/b;)V

    invoke-static {v14, v8}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method public c(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->hasSendThirdQuartileTrackings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventThird()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    const-string p0, "mgmisdkreport"

    const-string p1, "reportThirdQuartileTracking error no url-----------------"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventThird()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    new-instance v3, Lcom/mgmi/net/a/a;

    invoke-direct {v3}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v3, v4}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v3

    .line 12
    new-instance v4, Lcom/mgmi/e/a/b$18;

    invoke-direct {v4, p0, p1, v2}, Lcom/mgmi/e/a/b$18;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventThird(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 16
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    .line 19
    :cond_4
    const-string p2, "mid"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "focus-head"

    .line 20
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "banner"

    .line 21
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 22
    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 23
    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setHasSendThirdQuartileTrackings(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public d(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->hasSendMidpointTrackings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventMid()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/mgmi/net/a/a;

    invoke-direct {v3}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v3

    new-instance v4, Lcom/mgmi/e/a/b$19;

    invoke-direct {v4, p0, p1, v2}, Lcom/mgmi/e/a/b$19;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventMid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string p2, "mid"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "focus-head"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "banner"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setHasSendMidpointTrackings(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public e(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->hasSendStartTrackings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventStart()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/mgmi/net/a/a;

    invoke-direct {v3}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v3

    new-instance v4, Lcom/mgmi/e/a/b$20;

    invoke-direct {v4, p0, p1, v2}, Lcom/mgmi/e/a/b$20;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventStart(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string p2, "mid"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "focus-head"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "banner"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setHasSendStartTrackings(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public f(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->hasSendFirstQuartileTrackings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventFirst()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/mgmi/net/a/a;

    invoke-direct {v3}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v3

    new-instance v4, Lcom/mgmi/e/a/b$21;

    invoke-direct {v4, p0, p1, v2}, Lcom/mgmi/e/a/b$21;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventFirst(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string p2, "mid"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "focus-head"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "banner"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setHasSendfirstQuartileTrackings(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public g(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/mgmi/model/Clicks;->getClickTracking()Ljava/util/List;

    move-result-object v18

    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v4

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/e/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlStart()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlFinish()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlInstall()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlComplete()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/mgmi/model/Clicks;->getClickTracking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlStart(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlFinish(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlInstall(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mgmi/model/VASTAd;->getTrackingEventDlComplete(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v8, v18

    invoke-virtual/range {v4 .. v17}, Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v5, v2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_macro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lbld;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Lcom/mgmi/net/a/a;

    invoke-direct {v6}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v6

    iget-object v7, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v6

    new-instance v7, Lcom/mgmi/e/a/b$22;

    invoke-direct {v7, v0, v1, v5}, Lcom/mgmi/e/a/b$22;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgmi/model/Clicks;->getClickTracking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/mgmi/e/a/b;->c:J

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v4, v2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_macro()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->getClk_trac_value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lbld;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/mgmi/e/f;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public h(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->hasSendCompleteTrackings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTrackingEventComplete()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/mgmi/net/a/a;

    invoke-direct {v3}, Lcom/mgmi/net/a/a;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v3

    new-instance v4, Lcom/mgmi/e/a/b$23;

    invoke-direct {v4, p0, p1, v2}, Lcom/mgmi/e/a/b$23;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventComplete(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string p2, "mid"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "focus-head"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "banner"

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/mgmi/e/a/b;->b(Lcom/mgmi/model/VASTAd;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->setHasSendCompleteTrackings(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public i(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
    .locals 4
    .param p2    # Lcom/mgmi/e/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventClose(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/mgmi/net/a/a;

    invoke-direct {v2}, Lcom/mgmi/net/a/a;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mgmi/net/a/a;->a(I)Lcom/mgmi/net/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;)Lcom/mgmi/net/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mgmi/net/a/a;->a(Landroid/content/Context;)Lcom/mgmi/net/a/a;

    move-result-object v2

    new-instance v3, Lcom/mgmi/e/a/b$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/mgmi/e/a/b$5;-><init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/mgadplus/netlib/a/e;->a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventClose(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/a/b;->a(Ljava/lang/String;Lcom/mgmi/e/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgmi/e/a/b;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMk()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/mgmi/e/f;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method
