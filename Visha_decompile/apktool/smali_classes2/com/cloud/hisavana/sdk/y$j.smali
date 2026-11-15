.class final Lcom/cloud/hisavana/sdk/y$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/y;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0008\u001a\u00020\u00072.\u0010\u0006\u001a*\u0012&\u0012$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "Lcom/cloud/sdk/commonutil/util/a;",
        "Lkotlin/Pair;",
        "",
        "",
        "",
        "",
        "result",
        "Lzfb;",
        "a",
        "(Lcom/cloud/sdk/commonutil/util/a;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/y$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/y$j;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/y$j;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/y$j;->a:Lcom/cloud/hisavana/sdk/y$j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/sdk/commonutil/util/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/sdk/commonutil/util/a;",
            ")V"
        }
    .end annotation

    const-string p0, "result"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/cloud/sdk/commonutil/util/a$b;

    const-string v0, "AttrDataManager"

    if-eqz p0, :cond_1

    invoke-static {}, Likd;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realClick success result value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Lcom/cloud/sdk/commonutil/util/a$b;

    invoke-virtual {v2}, Lcom/cloud/sdk/commonutil/util/a$b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    move-object v3, p1

    check-cast v3, Lcom/cloud/sdk/commonutil/util/a$b;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/y;->n(Lcom/cloud/hisavana/sdk/y;Lcom/cloud/sdk/commonutil/util/a$b;ILc74;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/cloud/sdk/commonutil/util/a$a;

    if-eqz p0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realClick error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/cloud/sdk/commonutil/util/a$a;

    invoke-virtual {p1}, Lcom/cloud/sdk/commonutil/util/a$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/sdk/commonutil/util/a;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/y$j;->a(Lcom/cloud/sdk/commonutil/util/a;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
