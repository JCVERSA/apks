.class public Lcom/mgtv/ssp/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/module/ModuleInterface;


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .line 111
    :try_start_0
    const-string v0, "temp_offline_type"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mgtv/ssp/bean/InitBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/InitBean;

    if-eqz v0, :cond_a

    .line 114
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    if-eqz v1, :cond_a

    .line 115
    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result v1

    if-nez v1, :cond_9

    .line 116
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/auth/b;->a(I)V

    .line 117
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    iget-object v3, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1, v3}, Lcom/mgtv/ssp/auth/b;->a(Lcom/mgtv/ssp/bean/config/SspSdkConfig;)V

    .line 118
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCxid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->h(Ljava/lang/String;)V

    .line 119
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getRtype()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->k(Ljava/lang/String;)V

    .line 120
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getRender()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->c(Z)V

    .line 121
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getSupportVip()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->d(Z)V

    .line 122
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getVipVideoHint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->s(Ljava/lang/String;)V

    .line 123
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getVodSoundOff()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->g(Z)V

    .line 124
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getVodInfMerge()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->h(Z)V

    .line 125
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCardInfMerge()I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->j(Z)V

    .line 126
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getImmersionInfMerge()I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->i(Z)V

    .line 127
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getDetailInfMerge()I

    move-result v1

    if-ne v1, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v2}, Lcom/hunantv/imgo/util/b;->k(Z)V

    .line 128
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 129
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 130
    :cond_8
    :goto_6
    :try_start_1
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLmFrontPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->r(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :catchall_1
    :try_start_2
    invoke-static {}, Lcom/mgtv/thirdsdk/config/ConfigManager;->b()V

    .line 132
    invoke-static {}, Lcom/mgtv/thirdsdk/config/c;->b()V

    .line 133
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getTokenA()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getPdata()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/thirdsdk/config/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/d;->a()Lcom/mgtv/ssp/apkDownload/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/apkDownload/d;->b()V

    .line 135
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getQmSdk()I

    move-result v1

    invoke-static {v1}, Lcom/mgtv/ssp/e;->a(I)V

    .line 136
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/ssp/e;->a(Landroid/content/Context;)V

    .line 137
    :cond_9
    iget-object v1, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getTokenA()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getPdata()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/thirdsdk/config/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/d;->a()Lcom/mgtv/ssp/apkDownload/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/apkDownload/d;->b()V

    .line 139
    iget-object v0, v0, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getQmSdk()I

    move-result v0

    invoke-static {v0}, Lcom/mgtv/ssp/e;->a(I)V

    .line 140
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/ssp/e;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 141
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init cdata error  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    :goto_8
    return-void
.end method

.method private a(JZLcom/hunantv/imgo/data/ErrorData;)V
    .locals 0

    .line 108
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(JZLcom/hunantv/imgo/data/ErrorData;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 98
    const-string v0, "configPlayer"

    const/4 v1, 0x1

    const-string v2, "INIT"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 99
    invoke-static {p0}, Lcom/mgtv/thirdsdk/config/c;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/config/c;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mgtv/ssp/bean/InitBean;Lcom/mgtv/ssp/MgSspInitCallback;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 6

    if-eqz p3, :cond_10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const v3, 0x186a0

    .line 25
    :try_start_0
    iget-object v4, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    and-int/2addr v2, v5

    const-string v5, ""

    if-eqz v2, :cond_e

    .line 26
    :try_start_1
    invoke-virtual {v4}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result v2

    if-nez v2, :cond_c

    .line 27
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    invoke-virtual {p6, v0}, Lcom/mgtv/ssp/auth/b;->a(I)V

    .line 28
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    iget-object v2, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6, v2}, Lcom/mgtv/ssp/auth/b;->a(Lcom/mgtv/ssp/bean/config/SspSdkConfig;)V

    .line 29
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCxid()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->h(Ljava/lang/String;)V

    .line 30
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getRtype()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->k(Ljava/lang/String;)V

    .line 31
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getRender()I

    move-result p6

    if-ne p6, v1, :cond_2

    move p6, v1

    goto :goto_2

    :cond_2
    move p6, v0

    :goto_2
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->c(Z)V

    .line 32
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getSupportVip()I

    move-result p6

    if-ne p6, v1, :cond_3

    move p6, v1

    goto :goto_3

    :cond_3
    move p6, v0

    :goto_3
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->d(Z)V

    .line 33
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getVipVideoHint()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->s(Ljava/lang/String;)V

    .line 34
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getVodSoundOff()I

    move-result p6

    if-ne p6, v1, :cond_4

    move p6, v1

    goto :goto_4

    :cond_4
    move p6, v0

    :goto_4
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->g(Z)V

    .line 35
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getVodInfMerge()I

    move-result p6

    if-ne p6, v1, :cond_5

    move p6, v1

    goto :goto_5

    :cond_5
    move p6, v0

    :goto_5
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->h(Z)V

    .line 36
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCardInfMerge()I

    move-result p6

    if-ne p6, v1, :cond_6

    move p6, v1

    goto :goto_6

    :cond_6
    move p6, v0

    :goto_6
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->j(Z)V

    .line 37
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getImmersionInfMerge()I

    move-result p6

    if-ne p6, v1, :cond_7

    move p6, v1

    goto :goto_7

    :cond_7
    move p6, v0

    :goto_7
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->i(Z)V

    .line 38
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getDetailInfMerge()I

    move-result p6

    if-ne p6, v1, :cond_8

    move p6, v1

    goto :goto_8

    :cond_8
    move p6, v0

    :goto_8
    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->k(Z)V

    .line 39
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    invoke-virtual {p6}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object p6

    if-eqz p6, :cond_9

    .line 40
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    invoke-virtual {p6}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object p6

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->p(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    goto/16 :goto_d

    .line 41
    :cond_9
    :goto_9
    :try_start_2
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getLmFrontPid()I

    move-result p6

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/hunantv/imgo/util/b;->r(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :catchall_0
    :try_start_3
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getTokenA()Ljava/lang/String;

    move-result-object p6

    iget-object v2, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getPdata()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2}, Lcom/mgtv/thirdsdk/config/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getSaveBreakPoint()I

    move-result p6

    if-ne p6, v1, :cond_a

    move p6, v1

    goto :goto_a

    :cond_a
    move p6, v0

    :goto_a
    invoke-static {p6}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Z)V

    .line 44
    const-string p6, "SDKCONFIG_SWITCH"

    iget-object v2, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getApiRetry()I

    move-result v2

    invoke-static {p6, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->putInt(Ljava/lang/String;I)Z

    .line 45
    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getApiRetry()I

    move-result p6

    if-ne p6, v1, :cond_b

    iget-object p6, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p6}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getApiRetryDomain()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_b

    .line 46
    const-string p6, "SDKCONFIG_RETRY_DOMAIN"

    iget-object v2, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getApiRetryDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    :cond_b
    const-string p6, "success"

    invoke-interface {p3, v0, p6}, Lcom/mgtv/ssp/MgSspInitCallback;->onResult(ILjava/lang/String;)V

    const/4 p6, 0x0

    .line 48
    invoke-direct {p0, p4, p5, v1, p6}, Lcom/mgtv/ssp/auth/a;->a(JZLcom/hunantv/imgo/data/ErrorData;)V

    .line 49
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/d;->a()Lcom/mgtv/ssp/apkDownload/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/apkDownload/d;->b()V

    .line 50
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getQmSdk()I

    move-result p0

    invoke-static {p0}, Lcom/mgtv/ssp/e;->a(I)V

    .line 51
    invoke-static {p1}, Lcom/mgtv/ssp/e;->a(Landroid/content/Context;)V

    .line 52
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getGlobalConf()Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    move-result-object p0

    sput-object p0, Lcom/hunantv/imgo/net/a;->e:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    .line 53
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getDownloadServerConfig()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/e;->c(Ljava/lang/String;)V

    .line 54
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getMaxDownloadTaskNum()I

    move-result p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/e;->a(I)V

    .line 55
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getDownloadUrlHls()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/e;->a(Ljava/lang/String;)V

    .line 56
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getDownloadUrlMp4()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/e;->b(Ljava/lang/String;)V

    .line 57
    iget-object p0, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getMaxOfflineDownloadSpeedKB()I

    move-result p0

    invoke-static {p0}, Lcom/mgtv/ssp/utils/e;->b(I)V

    .line 58
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Z()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setSupportVip(Z)V

    goto/16 :goto_e

    .line 59
    :cond_c
    iget-object p1, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p3, p1, v5}, Lcom/mgtv/ssp/MgSspInitCallback;->onResult(ILjava/lang/String;)V

    .line 60
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 61
    invoke-static {v1}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {v2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 63
    const-string v1, "code is wrong"

    invoke-virtual {p1, v1}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    if-nez p6, :cond_d

    goto :goto_b

    .line 64
    :cond_d
    invoke-virtual {p6}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v5

    :goto_b
    invoke-virtual {p1, v5}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p4, p5, v0, p1}, Lcom/mgtv/ssp/auth/a;->a(JZLcom/hunantv/imgo/data/ErrorData;)V

    .line 66
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "init initBean.data.getStatus() = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/mgtv/ssp/bean/InitBean;->data:Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    invoke-virtual {p2}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/mgtv/ssp/auth/a;->b()V

    goto :goto_e

    :cond_e
    const p1, 0x186a3

    .line 68
    invoke-interface {p3, p1, v5}, Lcom/mgtv/ssp/MgSspInitCallback;->onResult(ILjava/lang/String;)V

    .line 69
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 70
    invoke-static {v1}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 71
    const-string p2, "100003"

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 72
    const-string p2, "data is null"

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    if-nez p6, :cond_f

    goto :goto_c

    .line 73
    :cond_f
    invoke-virtual {p6}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v5

    :goto_c
    invoke-virtual {p1, v5}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p4, p5, v0, p1}, Lcom/mgtv/ssp/auth/a;->a(JZLcom/hunantv/imgo/data/ErrorData;)V

    .line 75
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "init data is null "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_e

    .line 76
    :goto_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    const-string p1, "data error"

    invoke-interface {p3, v3, p1}, Lcom/mgtv/ssp/MgSspInitCallback;->onResult(ILjava/lang/String;)V

    .line 78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init data error  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    :goto_e
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 4

    .line 100
    const-string v0, "initNetworkModule"

    const/4 v1, 0x1

    const-string v2, "INIT"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 101
    new-instance v0, Lcom/mgtv/task/http/d$a;

    invoke-direct {v0}, Lcom/mgtv/task/http/d$a;-><init>()V

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v2, "_support"

    const-string v3, "10100001"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/d$a;->a(Ljava/util/HashMap;)Lcom/mgtv/task/http/d$a;

    .line 105
    invoke-virtual {v0, p1}, Lcom/mgtv/task/http/d$a;->a(Z)V

    .line 106
    new-instance v1, Lcom/mgtv/ssp/auth/a$2;

    invoke-direct {v1, p1}, Lcom/mgtv/ssp/auth/a$2;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/d$a;->a(Lokhttp3/Interceptor;)Lcom/mgtv/task/http/d$a;

    .line 107
    invoke-static {p0, v0}, Lcom/mgtv/task/http/d;->a(Landroid/content/Context;Lcom/mgtv/task/http/d$a;)V

    return-void
.end method

.method private a(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 109
    :try_start_0
    instance-of p0, p1, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_0

    .line 110
    const-string p0, "temp_offline_type"

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/auth/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/auth/a;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/auth/a;JZLcom/hunantv/imgo/data/ErrorData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/ssp/auth/a;->a(JZLcom/hunantv/imgo/data/ErrorData;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/InitBean;Lcom/mgtv/ssp/MgSspInitCallback;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/bean/InitBean;Lcom/mgtv/ssp/MgSspInitCallback;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/auth/a;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/auth/a;->a(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)Z
    .locals 4

    .line 20
    sget v0, Lcom/mgtv/ssp/auth/a;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SDKCONFIG_SWITCH"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 21
    sget v0, Lcom/mgtv/ssp/auth/a;->b:I

    add-int/2addr v0, v2

    sput v0, Lcom/mgtv/ssp/auth/a;->b:I

    .line 22
    invoke-static {}, Lcom/hunantv/imgo/net/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/sdkConfig"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)V

    return v2

    :cond_0
    return v1
.end method

.method public static synthetic a(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 1

    .line 5
    :try_start_0
    const-string p0, "temp_offline_type"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "initConfig"

    const/4 v1, 0x1

    const-string v2, "INIT"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2
    invoke-static {p0}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a()V

    .line 3
    invoke-static {p0}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/config/ConfigManager;->c()V

    .line 4
    invoke-static {p0}, Lcom/mgtv/thirdsdk/config/b;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/config/b;->a()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/mgtv/ssp/utils/language/c;->a()Lcom/mgtv/ssp/utils/language/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/utils/language/c;->a(Landroid/content/Context;)V

    const-string p0, "initArea"

    const/4 v0, 0x1

    const-string v1, "INIT"

    invoke-static {v1, p0, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 8

    const-string v0, "initReport"

    const/4 v1, 0x1

    const-string v2, "INIT"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgtv/data/aphone/a/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->t()V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/a/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v3

    const-string p0, "PREF_GPS_MSG"

    const-string v4, ""

    invoke-static {p0, v4}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v7}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "initMgmi"

    const/4 v1, 0x1

    const-string v2, "INIT"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Application;

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/mgmi/ssp/MGTVAdFactory;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;)V
    .locals 1

    .line 79
    sget-boolean p0, Lcom/mgtv/ssp/auth/a;->a:Z

    if-eqz p0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/mgtv/ssp/auth/a;->c(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p2}, Lcom/mgtv/ssp/bean/config/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->i(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lcom/mgtv/ssp/bean/config/a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->j(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/g;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->c(Ljava/lang/String;)V

    .line 84
    const-string p0, "android_videounion"

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/g;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->b(Ljava/lang/String;)V

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "imgotv-aplsdk-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->d(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setUuid(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setOaid(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setDid(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setAreaCode(I)V

    .line 91
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/MGTVAdFactory;->setIsOverSea(I)V

    .line 92
    invoke-virtual {p2}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/mgtv/thirdsdk/config/a;->d()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Z)V

    .line 94
    invoke-static {p1}, Lcom/mgtv/ssp/auth/a;->e(Landroid/content/Context;)V

    .line 95
    invoke-static {p1}, Lcom/mgtv/ssp/auth/a;->d(Landroid/content/Context;)V

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "version:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "INIT"

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 97
    sput-boolean p2, Lcom/mgtv/ssp/auth/a;->a:Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    if-nez v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/module/ModuleManager;->setModuleSsp(Lcom/mgtv/ssp/module/ModuleInterface;)V

    .line 8
    invoke-virtual {p0, p1, v3}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;)V

    .line 9
    new-instance v0, Lcom/mgtv/task/m;

    invoke-direct {v0, p1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mgtv/ssp/auth/b;->a(Lcom/mgtv/ssp/bean/config/a;)V

    .line 11
    invoke-static/range {p3 .. p3}, Lcom/mgtv/ssp/net/a;->a(Lcom/mgtv/ssp/bean/config/a;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object v9

    .line 12
    const-string v4, "pkg"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid"

    invoke-virtual {v9, v5, v4}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 14
    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    const-string v4, "paySupport"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 16
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 17
    sput v4, Lcom/mgtv/ssp/auth/a;->b:I

    .line 18
    invoke-static {v5}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_0

    :cond_2
    move-object v10, p2

    .line 19
    :goto_0
    invoke-virtual {v0, v5}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v11

    new-instance v12, Lcom/mgtv/ssp/auth/a$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move-object v6, v9

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/ssp/auth/a$1;-><init>(Lcom/mgtv/ssp/auth/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/config/a;Lcom/mgtv/ssp/MgSspInitCallback;Ljava/lang/String;Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;J)V

    invoke-virtual {v11, v10, v9, v12}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public getModuleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Module getModuleData "

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, "INIT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/auth/a;->a()V

    :cond_0
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs noticeModule(I[Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 p0, 0x0

    aget-object v1, p2, p0

    const/4 p0, 0x1

    aget-object v2, p2, p0

    const-string v3, ""

    const/4 p0, 0x2

    aget-object v4, p2, p0

    const/4 p0, 0x3

    aget-object v5, p2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
