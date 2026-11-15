.class public final Lbr2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbr2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbr2;

    invoke-direct {v0}, Lbr2;-><init>()V

    sput-object v0, Lbr2;->a:Lbr2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/histogram/DivParsingHistogramReporter;)Lcom/yandex/div/histogram/DivParsingHistogramReporter;
    .locals 0

    invoke-static {p0}, Lbr2;->c(Lcom/yandex/div/histogram/DivParsingHistogramReporter;)Lcom/yandex/div/histogram/DivParsingHistogramReporter;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/yandex/div/histogram/DivParsingHistogramReporter;)Lcom/yandex/div/histogram/DivParsingHistogramReporter;
    .locals 1

    const-string v0, "$parsingHistogramReporter"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final b(Ljk3;Landroid/content/Context;Lsq4;Lcom/yandex/div/histogram/DivParsingHistogramReporter;)Lcom/yandex/div/storage/DivStorageComponent;
    .locals 10

    const-string p0, "externalDivStorageComponent"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "histogramReporterDelegate"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parsingHistogramReporter"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljk3;->b()Lns7;

    move-result-object p0

    invoke-virtual {p0}, Lns7;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljk3;->b()Lns7;

    move-result-object p0

    invoke-virtual {p0}, Lns7;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/storage/DivStorageComponent;

    return-object p0

    :cond_0
    sget-object v0, Lcom/yandex/div/storage/DivStorageComponent;->a:Lcom/yandex/div/storage/DivStorageComponent$Companion;

    new-instance v6, Lar2;

    invoke-direct {v6, p4}, Lar2;-><init>(Lcom/yandex/div/histogram/DivParsingHistogramReporter;)V

    const/16 v8, 0x5c

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v9}, Lcom/yandex/div/storage/DivStorageComponent$Companion;->c(Lcom/yandex/div/storage/DivStorageComponent$Companion;Landroid/content/Context;Lsq4;Lnq4;Llx7;Loj8;Loj8;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/storage/DivStorageComponent;

    move-result-object p0

    return-object p0
.end method
