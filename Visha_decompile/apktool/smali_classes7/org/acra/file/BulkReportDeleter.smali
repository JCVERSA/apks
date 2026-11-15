.class public final Lorg/acra/file/BulkReportDeleter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/acra/file/ReportLocator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/acra/file/ReportLocator;

    invoke-direct {v0, p1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/file/BulkReportDeleter;->a:Lorg/acra/file/ReportLocator;

    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 5

    iget-object p0, p0, Lorg/acra/file/BulkReportDeleter;->a:Lorg/acra/file/ReportLocator;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->b()[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->d()[Ljava/io/File;

    move-result-object p0

    :goto_0
    new-instance p1, Lorg/acra/file/BulkReportDeleter$deleteReports$$inlined$sortedBy$1;

    invoke-direct {p1}, Lorg/acra/file/BulkReportDeleter$deleteReports$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lhi;->L0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete report : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
