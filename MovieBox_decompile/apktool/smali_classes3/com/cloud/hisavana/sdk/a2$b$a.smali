.class Lcom/cloud/hisavana/sdk/a2$b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a2$b;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/a2$b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a2$b$a;->a:Lcom/cloud/hisavana/sdk/a2$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a2$b$a;->a:Lcom/cloud/hisavana/sdk/a2$b;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/a2$b;->c:Lcom/cloud/hisavana/sdk/a2;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a2;->g(Lcom/cloud/hisavana/sdk/a2;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a2$b$a;->a:Lcom/cloud/hisavana/sdk/a2$b;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/a2$b;->c:Lcom/cloud/hisavana/sdk/a2;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/a2;->i(Lcom/cloud/hisavana/sdk/a2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
