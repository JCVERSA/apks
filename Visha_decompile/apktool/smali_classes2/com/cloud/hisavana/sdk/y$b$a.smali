.class final Lcom/cloud/hisavana/sdk/y$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/y$b;->a(Lcom/cloud/sdk/commonutil/util/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "a",
        "()V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/sdk/commonutil/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/sdk/commonutil/util/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/sdk/commonutil/util/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/sdk/commonutil/util/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/y$b$a;->a:Lcom/cloud/sdk/commonutil/util/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/y$b$a;->a:Lcom/cloud/sdk/commonutil/util/a;

    check-cast p0, Lcom/cloud/sdk/commonutil/util/a$b;

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/a$b;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Triple;

    invoke-virtual {p0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/y;->o(Lcom/cloud/hisavana/sdk/y;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y$b$a;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
