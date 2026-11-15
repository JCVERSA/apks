.class public final Lcom/transsion/subroom/deeplink/d$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/deeplink/d;->e(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/subroom/deeplink/d;

.field final synthetic e:Landroid/net/Uri;

.field final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/deeplink/d$b;->d:Lcom/transsion/subroom/deeplink/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subroom/deeplink/d$b;->e:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subroom/deeplink/d$b;->f:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/subroom/deeplink/d$b;->d:Lcom/transsion/subroom/deeplink/d;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/subroom/deeplink/d$b;->e:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/transsion/subroom/deeplink/d$b;->f:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-static {p1, p2, p2, v0, v1}, Lcom/transsion/subroom/deeplink/d;->d(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/subroom/deeplink/ILaunchApi$UrlBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/subroom/deeplink/d$b;->e(Lcom/transsion/subroom/deeplink/ILaunchApi$UrlBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/subroom/deeplink/ILaunchApi$UrlBean;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/subroom/deeplink/ILaunchApi$UrlBean;->getUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    const-string p1, ""

    .line 16
    .line 17
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/subroom/deeplink/d$b;->d:Lcom/transsion/subroom/deeplink/d;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/subroom/deeplink/d$b;->e:Landroid/net/Uri;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/transsion/subroom/deeplink/d$b;->f:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    invoke-static {p1, v0, v0, v1, v2}, Lcom/transsion/subroom/deeplink/d;->d(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/transsion/subroom/deeplink/d$b;->d:Lcom/transsion/subroom/deeplink/d;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/transsion/subroom/deeplink/d$b;->e:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v3, p0, Lcom/transsion/subroom/deeplink/d$b;->f:Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    invoke-static {v0, v2, p1, v1, v3}, Lcom/transsion/subroom/deeplink/d;->d(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_2
    return-void
.end method
