.class Lcom/cloud/hisavana/sdk/r$c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/r$c;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/r$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/r$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/r$c$a;->a:Lcom/cloud/hisavana/sdk/r$c;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/r$c$a;->a:Lcom/cloud/hisavana/sdk/r$c;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/hisavana/sdk/r$c;->d:Lcom/cloud/hisavana/sdk/r;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/r$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/r;->j(Lcom/cloud/hisavana/sdk/r;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
