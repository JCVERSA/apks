.class Lcom/transsion/http/impl/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/StringCallback;->m(I[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/transsion/http/impl/StringCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/StringCallback;[BILjava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/o;->a:[B

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/http/impl/o;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/http/impl/o;->c:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/http/impl/o;->a:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    :try_start_1
    invoke-static {v0, v1}, Lcom/transsion/http/impl/StringCallback;->w([BLjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    .line 10
    .line 11
    new-instance v2, Lcom/transsion/http/impl/m;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Lcom/transsion/http/impl/m;-><init>(Lcom/transsion/http/impl/o;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    .line 22
    .line 23
    new-instance v2, Lcom/transsion/http/impl/n;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/transsion/http/impl/n;-><init>(Lcom/transsion/http/impl/o;Ljava/io/UnsupportedEncodingException;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
