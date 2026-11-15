.class public final Lcom/yandex/div/storage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/storage/DivDataRepository;


# instance fields
.field public final a:Lcom/yandex/div/storage/b;

.field public final b:Lcom/yandex/div/storage/templates/TemplatesContainer;

.field public final c:Lpq4;

.field public final d:Loj8;

.field public final e:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

.field public final f:Ljava/util/Map;

.field public g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/b;Lcom/yandex/div/storage/templates/TemplatesContainer;Lpq4;Lnq4;Loj8;Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)V
    .locals 0

    const-string p4, "divStorage"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "templateContainer"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "histogramRecorder"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "divParsingHistogramProxy"

    invoke-static {p5, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "cardErrorFactory"

    invoke-static {p6, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/a;->a:Lcom/yandex/div/storage/b;

    iput-object p2, p0, Lcom/yandex/div/storage/a;->b:Lcom/yandex/div/storage/templates/TemplatesContainer;

    iput-object p3, p0, Lcom/yandex/div/storage/a;->c:Lpq4;

    iput-object p5, p0, Lcom/yandex/div/storage/a;->d:Loj8;

    iput-object p6, p0, Lcom/yandex/div/storage/a;->e:Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/a;->f:Ljava/util/Map;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/a;->g:Ljava/util/Map;

    return-void
.end method
