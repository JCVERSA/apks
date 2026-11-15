.class Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->b:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->f(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/J0;->i(Ljava/lang/String;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->c(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->c:Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/os/Handler;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iput v2, v3, Landroid/os/Message;->what:I

    .line 91
    .line 92
    new-instance v2, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "load_runnable_data"

    .line 98
    .line 99
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_2
    return-void
.end method
