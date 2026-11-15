.class public Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final MANGO:I = 0x1

.field public static final PAY_TYPE_FREE:I = 0x0

.field public static final PAY_TYPE_PAY:I = 0x1


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public flag:Z

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public imgX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgX"
    .end annotation
.end field

.field public imgY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgY"
    .end annotation
.end field

.field public isPay:I

.field public serialId:Ljava/lang/String;

.field public tag:I

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->flag:Z

    return-void
.end method

.method public static convert(Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;)Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->id:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_x()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->imgX:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->imgY:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static convert(Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;)Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->id:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->imgX:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->imgX:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->imgY:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->imgY:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->title:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->serialId:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->imps:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Imps;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->arg1:Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->clks:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Clks;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->arg2:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->isFree()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->isPay:I

    .line 15
    iput v2, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->tag:I

    .line 16
    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->global:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Global;

    if-eqz v4, :cond_8

    .line 19
    const-string v4, "zh"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v5, "cn"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v6

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tw"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 21
    :cond_2
    const-string v3, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x6

    goto :goto_0

    .line 22
    :cond_3
    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v1, 0x12

    goto :goto_0

    .line 23
    :cond_4
    const-string v3, "vi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v1, 0x13

    goto :goto_0

    .line 24
    :cond_5
    const-string v3, "th"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x17

    goto :goto_0

    :cond_6
    const/16 v1, 0xa

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result;->global:[Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Global;

    array-length v3, p0

    :goto_1
    if-ge v6, v3, :cond_8

    aget-object v4, p0, v6

    .line 26
    iget v5, v4, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Global;->abroad:I

    if-ne v5, v1, :cond_7

    .line 27
    iget-object p0, v4, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult$Result$Global;->name:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->title:Ljava/lang/String;

    .line 28
    iput-boolean v2, v0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->flag:Z

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public showVipLogo()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;->isPay:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
