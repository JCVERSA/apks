.class public final Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/commercialization/pslink/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;->a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "callBackName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "param"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "callBackCommon: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;->a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;->access$getMItemInfo$p(Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;)Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;->a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    .line 68
    .line 69
    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;->access$dealWithCallBack(Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method
