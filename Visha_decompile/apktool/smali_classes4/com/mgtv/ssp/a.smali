.class public Lcom/mgtv/ssp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1

    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 12
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b(Ljava/lang/String;)V

    .line 13
    :cond_1
    const-string p0, "fragment"

    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    new-instance p0, Lcom/mgtv/ssp/feed/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/feed/a;-><init>()V

    .line 15
    new-instance v0, Lcom/mgtv/ssp/bean/a;

    invoke-direct {v0}, Lcom/mgtv/ssp/bean/a;-><init>()V

    .line 16
    iput-object p3, v0, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    .line 17
    iput-object p4, v0, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    .line 18
    iput p2, v0, Lcom/mgtv/ssp/bean/a;->a:I

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/feed/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance p0, Lcom/mgtv/ssp/feed/b;

    invoke-direct {p0}, Lcom/mgtv/ssp/feed/b;-><init>()V

    .line 21
    new-instance v0, Lcom/mgtv/ssp/bean/a;

    invoke-direct {v0}, Lcom/mgtv/ssp/bean/a;-><init>()V

    .line 22
    iput-object p3, v0, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    .line 23
    iput-object p4, v0, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    .line 24
    iput p2, v0, Lcom/mgtv/ssp/bean/a;->a:I

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/feed/b;->a(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;ILcom/mgtv/ssp/auth/EntranceInfo;Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b(Ljava/lang/String;)V

    .line 4
    :cond_1
    new-instance p0, Lcom/mgtv/ssp/feed/a;

    invoke-direct {p0}, Lcom/mgtv/ssp/feed/a;-><init>()V

    .line 5
    new-instance v0, Lcom/mgtv/ssp/bean/a;

    invoke-direct {v0}, Lcom/mgtv/ssp/bean/a;-><init>()V

    .line 6
    iput-object p3, v0, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    .line 7
    iput-object p4, v0, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    .line 8
    iput p2, v0, Lcom/mgtv/ssp/bean/a;->a:I

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/ssp/feed/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/mgtv/ssp/auth/EntranceInfo;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 26
    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->b(Ljava/lang/String;)V

    .line 29
    :cond_1
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    if-nez p0, :cond_2

    .line 30
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const-string v0, "id"

    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v0, "contentId"

    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v0, "token"

    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/EntranceInfo;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {p1, p0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 35
    :cond_2
    sget p0, Lcom/mgtv/ssp/R$string;->init_error:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/v;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
