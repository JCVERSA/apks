.class public final Lcom/cloud/hisavana/sdk/E0$a$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/E0$a;->d(Ljava/lang/String;Le74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/E0$a$a;->b:Le74;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "MiniApp"

    const-string v0, "Failed to load mini app icon."

    invoke-virtual {p0, p1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/E0$a$a;->b:Le74;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
