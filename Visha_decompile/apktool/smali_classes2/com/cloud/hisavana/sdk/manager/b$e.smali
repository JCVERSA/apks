.class final Lcom/cloud/hisavana/sdk/manager/b$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/b;->c(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlin/Function1;",
        "Lzfb;",
        "resume",
        "a",
        "(Le74;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/b$e;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "resume"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$e;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/b$e$a;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/manager/b$e$a;-><init>(Le74;)V

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/k1;->g(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/b$b;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le74;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/b$e;->a(Le74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
