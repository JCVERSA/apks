.class Lcom/cloud/hisavana/sdk/Y0$a;
.super Lcom/cloud/hisavana/sdk/manager/g$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/Y0;->g(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

.field final synthetic b:Lcom/cloud/hisavana/sdk/manager/g$b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/Y0$a;->b:Lcom/cloud/hisavana/sdk/manager/g$b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g$c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$a;->a()Lcom/cloud/hisavana/sdk/manager/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Y0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/manager/g;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$a;->b:Lcom/cloud/hisavana/sdk/manager/g$b;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$b;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/16 v0, 0x1e0

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/Y0$a;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$a;->a()Lcom/cloud/hisavana/sdk/manager/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/Y0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/g;->d(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$a;->b:Lcom/cloud/hisavana/sdk/manager/g$b;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$b;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
