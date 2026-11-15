.class public Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/storage/templates/TemplatesContainer;

.field public final b:Llx7;

.field public final c:Loj8;


# direct methods
.method public constructor <init>(Loj8;Lcom/yandex/div/storage/templates/TemplatesContainer;Llx7;)V
    .locals 1

    const-string v0, "templateContainer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsingErrorLogger"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->a:Lcom/yandex/div/storage/templates/TemplatesContainer;

    iput-object p3, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->b:Llx7;

    new-instance p2, Llj5;

    new-instance p3, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;

    invoke-direct {p3, p1, p0}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory$errorTransformer$1;-><init>(Loj8;Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)V

    invoke-direct {p2, p3}, Llj5;-><init>(Lc74;)V

    iput-object p2, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->c:Loj8;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)Llx7;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->b:Llx7;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)Lcom/yandex/div/storage/templates/TemplatesContainer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;->a:Lcom/yandex/div/storage/templates/TemplatesContainer;

    return-object p0
.end method
