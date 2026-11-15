.class public Lcom/squareup/moshi/e$a;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/e;->serializeNulls()Lcom/squareup/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/squareup/moshi/e;

.field public final synthetic b:Lcom/squareup/moshi/e;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/e;Lcom/squareup/moshi/e;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/e$a;->b:Lcom/squareup/moshi/e;

    iput-object p2, p0, Lcom/squareup/moshi/e$a;->a:Lcom/squareup/moshi/e;

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/e$a;->a:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isLenient()Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/e$a;->a:Lcom/squareup/moshi/e;

    invoke-virtual {p0}, Lcom/squareup/moshi/e;->isLenient()Z

    move-result p0

    return p0
.end method

.method public toJson(Lrc5;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lrc5;->n()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lrc5;->M(Z)V

    :try_start_0
    iget-object p0, p0, Lcom/squareup/moshi/e$a;->a:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lrc5;->M(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Lrc5;->M(Z)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/squareup/moshi/e$a;->a:Lcom/squareup/moshi/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".serializeNulls()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
