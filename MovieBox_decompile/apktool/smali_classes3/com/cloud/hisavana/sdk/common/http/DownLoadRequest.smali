.class public Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
.super Lcom/cloud/hisavana/sdk/common/http/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;
    }
.end annotation


# static fields
.field public static q:Z = false


# instance fields
.field c:J

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c:J

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->e:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g:I

    .line 19
    .line 20
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k:Z

    .line 25
    .line 26
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    .line 27
    .line 28
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m:I

    .line 29
    .line 30
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o:Z

    .line 33
    .line 34
    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 1

    .line 1
    invoke-static {p7}, Lcom/cloud/hisavana/sdk/J0;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p8, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 10
    .line 11
    const/16 p1, 0xbc8

    .line 12
    .line 13
    const-string p2, "main image is too large."

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p8, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    if-eqz p7, :cond_2

    .line 23
    .line 24
    invoke-virtual {p7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p7

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string p7, ""

    .line 30
    .line 31
    :goto_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->v(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p8}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->u(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->w(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, p3, p7}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->r(Ljava/lang/Boolean;ILjava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, p5}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->s(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->t(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, p6}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->b()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    move v3, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :goto_1
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x3

    .line 14
    move-object v1, p0

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    move-object v8, p1

    .line 18
    move-object v9, p4

    .line 19
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    move v3, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :goto_1
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v2, 0x3

    .line 14
    const/16 v4, 0xa

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    move v5, p2

    .line 18
    move-object v8, p1

    .line 19
    move-object v9, p3

    .line 20
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 19
    .line 20
    const/16 p1, 0xbc8

    .line 21
    .line 22
    const-string p3, "main image is too large."

    .line 23
    .line 24
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 32
    .line 33
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    .line 34
    .line 35
    invoke-direct {v1, p1, p0, p2, p3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 43
    .line 44
    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 45
    .line 46
    const/16 p1, 0xbbf

    .line 47
    .line 48
    const-string p3, "filePath == null or imageView == null."

    .line 49
    .line 50
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public static o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 19
    .line 20
    const/16 p1, 0xbc8

    .line 21
    .line 22
    const-string p2, "main image is too large."

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 32
    .line 33
    new-instance v7, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    .line 34
    .line 35
    move-object v1, v7

    .line 36
    move-object v2, p1

    .line 37
    move-object v3, p0

    .line 38
    move v4, p2

    .line 39
    move-object v5, p4

    .line 40
    move-object v6, p3

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v7}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 49
    .line 50
    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 51
    .line 52
    const/16 p1, 0xbbf

    .line 53
    .line 54
    const-string p2, "url == null."

    .line 55
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    return-void
.end method

.method private static p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 5
    .line 6
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static q(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 10

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    move v3, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :goto_1
    new-instance v9, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;

    .line 12
    .line 13
    invoke-direct {v9, p4, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v1, p0

    .line 21
    move v4, p3

    .line 22
    move-object v8, p2

    .line 23
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lc7/b;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    return v1

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x4

    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p1, v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 p1, 0x5

    .line 35
    if-ne p0, p1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return v1

    .line 39
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 40
    return p0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lcom/cloud/hisavana/net/RequestParams;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j:Z

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->m(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/net/RequestParams;->o(Z)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->k(I)V

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->l(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->j(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->e:J

    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v3, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;-><init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v1, v3}, Lcom/cloud/hisavana/net/HttpRequest;->c(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 66
    .line 67
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_UNKNOWN:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const/16 v0, 0x65

    .line 73
    .line 74
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f:I

    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "ssp"

    .line 25
    .line 26
    const-string v2, "url is empty"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->a()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public m(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Ljava/lang/Boolean;ILjava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k:Z

    .line 6
    .line 7
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public s(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
