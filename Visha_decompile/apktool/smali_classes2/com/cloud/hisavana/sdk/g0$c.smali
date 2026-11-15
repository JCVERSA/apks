.class final Lcom/cloud/hisavana/sdk/g0$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/g0;->g(Lwh1;)Ljava/lang/Object;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g0$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/g0$c;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/g0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le74;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "resume"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g0$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/g0$c;->b:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/k0;->a(Ljava/util/List;)Ldnd;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/g0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Lcom/cloud/hisavana/sdk/g0$c$a;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/g0$c;->a:Ljava/lang/String;

    invoke-direct {v4, v3, p0, p1}, Lcom/cloud/hisavana/sdk/g0$c$a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Le74;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/k0;->f(Ljava/lang/String;Ldnd;Ljava/util/concurrent/atomic/AtomicInteger;Lc74;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le74;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/g0$c;->a(Le74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
