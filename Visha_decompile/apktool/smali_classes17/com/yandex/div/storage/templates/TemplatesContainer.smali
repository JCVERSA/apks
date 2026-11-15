.class public Lcom/yandex/div/storage/templates/TemplatesContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/storage/b;

.field public final b:Llx7;

.field public final c:Lpq4;

.field public final d:Loj8;

.field public final e:Ljava/lang/String;

.field public final f:Lma1;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/Map;

.field public final i:Lyi5;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/b;Llx7;Lpq4;Loj8;Lnq4;)V
    .locals 6

    const-string p5, "divStorage"

    invoke-static {p1, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "errorLogger"

    invoke-static {p2, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "histogramRecorder"

    invoke-static {p3, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "parsingHistogramProxy"

    invoke-static {p4, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->a:Lcom/yandex/div/storage/b;

    iput-object p2, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->b:Llx7;

    iput-object p3, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->c:Lpq4;

    iput-object p4, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->d:Loj8;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->e:Ljava/lang/String;

    new-instance p5, Lma1;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lma1;-><init>(Lcom/yandex/div/storage/b;Llx7;Ljava/lang/String;Lpq4;Loj8;)V

    iput-object p5, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->f:Lma1;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->h:Ljava/util/Map;

    new-instance p1, Lcom/yandex/div/storage/templates/TemplatesContainer$messageDigest$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/storage/templates/TemplatesContainer$messageDigest$2;-><init>(Lcom/yandex/div/storage/templates/TemplatesContainer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->i:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/storage/templates/TemplatesContainer;)Llx7;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/storage/templates/TemplatesContainer;->b:Llx7;

    return-object p0
.end method
