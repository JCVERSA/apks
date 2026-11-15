.class public Lcom/lzy/okgo/exception/HttpException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x79c2914329144639L


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private transient response:Lhu8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhu8;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhu8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu8;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/lzy/okgo/exception/HttpException;->getMessage(Lhu8;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lhu8;->b()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/exception/HttpException;->code:I

    .line 4
    invoke-virtual {p1}, Lhu8;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->message:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/lzy/okgo/exception/HttpException;->response:Lhu8;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static COMMON(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;
    .locals 1

    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static NET_ERROR()Lcom/lzy/okgo/exception/HttpException;
    .locals 2

    .line 1
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    const-string v1, "network error! http response code is 404 or 5xx!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static NET_ERROR(I)Lcom/lzy/okgo/exception/HttpException;
    .locals 3

    .line 2
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network error! http response code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMessage(Lhu8;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu8;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "response == null"

    invoke-static {p0, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhu8;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhu8;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public code()I
    .locals 0

    iget p0, p0, Lcom/lzy/okgo/exception/HttpException;->code:I

    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/exception/HttpException;->message:Ljava/lang/String;

    return-object p0
.end method

.method public response()Lhu8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhu8;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lzy/okgo/exception/HttpException;->response:Lhu8;

    return-object p0
.end method
