.class public Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->b:Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
    .locals 1

    .line 17
    const-string v0, "errorDesc"

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
    .locals 4

    if-nez p2, :cond_0

    .line 3
    const-string p2, "null"

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "empty"

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_2

    .line 6
    const-string p2, "value is too long"

    .line 7
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->c:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ":"

    if-eqz v0, :cond_3

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->b:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->c:Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->b:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "____"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 11
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 14
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 16
    const-string p1, "errorMessage"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public a()Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;
    .locals 1

    .line 18
    new-instance v0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;-><init>(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a:Ljava/lang/String;

    return-object p0
.end method
