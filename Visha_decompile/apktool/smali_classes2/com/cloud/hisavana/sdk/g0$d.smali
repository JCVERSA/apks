.class final Lcom/cloud/hisavana/sdk/g0$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/g0;->r(Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lnt1;
    c = "com.cloud.hisavana.sdk.manager.DefaultAdManager"
    f = "DefaultAdManager.kt"
    l = {
        0xbf
    }
    m = "requestDefaultData"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/cloud/hisavana/sdk/g0;

.field c:I


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/g0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/hisavana/sdk/g0;",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/g0$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g0$d;->b:Lcom/cloud/hisavana/sdk/g0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g0$d;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/cloud/hisavana/sdk/g0$d;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cloud/hisavana/sdk/g0$d;->c:I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g0$d;->b:Lcom/cloud/hisavana/sdk/g0;

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/g0;->s(Lcom/cloud/hisavana/sdk/g0;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
