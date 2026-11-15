.class Lcom/hunantv/imgo/log/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/log/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/log/b/e;


# direct methods
.method private constructor <init>(Lcom/hunantv/imgo/log/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/b/e$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/e$a;-><init>(Lcom/hunantv/imgo/log/b/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {v0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_0
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget v0, v0, Lcom/hunantv/imgo/b/c;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/log/b/c;->a()Lcom/hunantv/imgo/log/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/b/c;->b()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/log/b/c;->a()Lcom/hunantv/imgo/log/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/b/c;->c()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ReportRequestHandler"

    if-eqz v0, :cond_8

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {v2}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {v0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)Lokhttp3/Response;

    move-result-object v0

    const/16 v2, 0x12c

    const/16 v3, 0xc8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    if-lt v4, v3, :cond_2

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    if-lt v4, v2, :cond_3

    :cond_2
    const-string v0, "request report failed and immediately retry once"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {v0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)Lokhttp3/Response;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    if-lt v4, v3, :cond_6

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    if-lt v3, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {v2, v0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "request report success and delete zip file"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {p0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/log/b/e;->c(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    invoke-static {}, Lcom/hunantv/imgo/log/b/c;->a()Lcom/hunantv/imgo/log/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/b/c;->d()V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {p0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/log/b/e;->b(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    goto :goto_5

    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request report failed and return http code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_7

    const/4 v0, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/imgo/log/b/e$a;->a:Lcom/hunantv/imgo/log/b/e;

    invoke-static {p0}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/log/b/e;->b(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    goto :goto_5

    :cond_8
    :goto_3
    const-string p0, "request report log zip File is null"

    invoke-static {v1, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    return-void
.end method
