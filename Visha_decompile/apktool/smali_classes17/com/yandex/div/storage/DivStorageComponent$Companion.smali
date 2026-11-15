.class public final Lcom/yandex/div/storage/DivStorageComponent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/storage/DivStorageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic a:Lcom/yandex/div/storage/DivStorageComponent$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/storage/DivStorageComponent$Companion;

    invoke-direct {v0}, Lcom/yandex/div/storage/DivStorageComponent$Companion;-><init>()V

    sput-object v0, Lcom/yandex/div/storage/DivStorageComponent$Companion;->a:Lcom/yandex/div/storage/DivStorageComponent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)Lzs1;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/div/storage/DivStorageComponent$Companion;->e(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)Lzs1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/yandex/div/storage/DivStorageComponent$Companion;Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/storage/DivStorageComponent;
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    sget-object v0, Lsq4$a;->a:Lsq4$a;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    sget-object v3, Llx7;->a:Llx7;

    const-string v4, "LOG"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_4

    new-instance v4, Llj5;

    sget-object v5, Lcom/yandex/div/storage/DivStorageComponent$Companion$create$1;->INSTANCE:Lcom/yandex/div/storage/DivStorageComponent$Companion$create$1;

    invoke-direct {v4, v5}, Llj5;-><init>(Lc74;)V

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_5

    const-string v5, ""

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v3

    move-object p7, v2

    move-object p8, v4

    move-object p9, v5

    invoke-virtual/range {p2 .. p9}, Lcom/yandex/div/storage/DivStorageComponent$Companion;->b(Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;)Lcom/yandex/div/storage/DivStorageComponent;

    move-result-object v0

    return-object v0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)Lzs1;
    .locals 7

    const-string v0, "c"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ccb"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ucb"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpb;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lpb;-><init>(Landroid/content/Context;Ljava/lang/String;ILzs1$a;Lzs1$c;)V

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;)Lcom/yandex/div/storage/DivStorageComponent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramReporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorLogger"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsingHistogramReporter"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseNamePrefix"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p7}, Lcom/yandex/div/storage/DivStorageComponent$Companion;->d(Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;)Ll45;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;)Ll45;
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "histogramReporter"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "errorLogger"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parsingHistogramReporter"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "databaseNamePrefix"

    invoke-static {p7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lwq2;

    invoke-direct {p0}, Lwq2;-><init>()V

    new-instance v7, Lcom/yandex/div/storage/DivStorageImpl;

    invoke-direct {v7, p1, p0, p7}, Lcom/yandex/div/storage/DivStorageImpl;-><init>(Landroid/content/Context;Lat1;Ljava/lang/String;)V

    new-instance p0, Llj5;

    new-instance p1, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1;

    invoke-direct {p1, p6}, Lcom/yandex/div/storage/DivStorageComponent$Companion$createInternal$parsingHistogramProxy$1;-><init>(Loj8;)V

    invoke-direct {p0, p1}, Llj5;-><init>(Lc74;)V

    new-instance p1, Lpq4;

    invoke-direct {p1, p2, p3}, Lpq4;-><init>(Lsq4;Lnq4;)V

    new-instance p2, Lcom/yandex/div/storage/templates/TemplatesContainer;

    move-object v0, p2

    move-object v1, v7

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/storage/templates/TemplatesContainer;-><init>(Lcom/yandex/div/storage/b;Llx7;Lpq4;Loj8;Lnq4;)V

    new-instance v6, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;

    invoke-direct {v6, p5, p2, p4}, Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;-><init>(Loj8;Lcom/yandex/div/storage/templates/TemplatesContainer;Llx7;)V

    new-instance p4, Lcom/yandex/div/storage/a;

    move-object v0, p4

    move-object v2, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/storage/a;-><init>(Lcom/yandex/div/storage/b;Lcom/yandex/div/storage/templates/TemplatesContainer;Lpq4;Lnq4;Loj8;Lcom/yandex/div/storage/analytics/CardErrorLoggerFactory;)V

    new-instance p0, Lcom/yandex/div/storage/d;

    invoke-direct {p0, v7}, Lcom/yandex/div/storage/d;-><init>(Lcom/yandex/div/storage/b;)V

    new-instance p1, Ll45;

    invoke-direct {p1, p4, p0, v7}, Ll45;-><init>(Lcom/yandex/div/storage/DivDataRepository;Lcom/yandex/div/storage/c;Lcom/yandex/div/storage/b;)V

    return-object p1
.end method
