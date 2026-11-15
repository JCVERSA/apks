.class Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public athenaTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "athenaTrack -----> eventName = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "  params = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "PersonalCloseAdActivity"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    const/16 v1, 0x223d

    .line 38
    .line 39
    invoke-static {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->P(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public closePage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$b;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public personaliseCallback()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PersonalCloseAdActivity"

    .line 6
    .line 7
    const-string v2, "personaliseCallback"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
