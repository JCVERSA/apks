.class final Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;-><init>(Loj8;Lcom/yandex/div/storage/templates/TemplatesContainer;Llx7;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/yandex/div/storage/util/CardErrorTransformer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $externalErrorTransformer:Loj8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loj8;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;


# direct methods
.method public constructor <init>(Loj8;Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loj8;",
            "Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->$externalErrorTransformer:Loj8;

    iput-object p2, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->this$0:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/yandex/div/storage/util/CardErrorTransformer;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->$externalErrorTransformer:Loj8;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lvea;

    iget-object v1, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->this$0:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    invoke-static {v1}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->b(Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)Lcom/yandex/div/storage/templates/TemplatesContainer;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->this$0:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    invoke-static {p0}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->a(Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)Llx7;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lvea;-><init>(Lcom/yandex/div/storage/templates/TemplatesContainer;Llx7;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/yandex/div/storage/util/CardErrorTransformer$a;

    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [Lcom/yandex/div/storage/util/CardErrorTransformer;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "externalErrorTransformer.get()"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 6
    new-instance v0, Lvea;

    iget-object v3, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->this$0:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    invoke-static {v3}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->b(Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)Lcom/yandex/div/storage/templates/TemplatesContainer;

    move-result-object v3

    iget-object p0, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->this$0:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    invoke-static {p0}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->a(Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)Llx7;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lvea;-><init>(Lcom/yandex/div/storage/templates/TemplatesContainer;Llx7;)V

    const/4 p0, 0x1

    aput-object v0, v2, p0

    .line 7
    invoke-direct {v1, v2}, Lcom/yandex/div/storage/util/CardErrorTransformer$a;-><init>([Lcom/yandex/div/storage/util/CardErrorTransformer;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;->invoke()Lcom/yandex/div/storage/util/CardErrorTransformer;

    move-result-object p0

    return-object p0
.end method
