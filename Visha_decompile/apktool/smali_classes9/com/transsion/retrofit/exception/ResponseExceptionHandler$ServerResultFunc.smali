.class public Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/exception/ResponseExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerResultFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/retrofit/reponse/BaseResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lt74;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "visha_response_handler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgu8;)Lcom/transsion/retrofit/reponse/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgu8<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-string p0, ""

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lgu8;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/retrofit/reponse/BaseResponse;

    .line 6
    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Lcom/transsion/retrofit/exception/ServerException;

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/transsion/retrofit/exception/ServerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lcom/transsion/retrofit/exception/ServerException;

    const/16 v0, 0x3ec

    invoke-direct {p1, v0, p0}, Lcom/transsion/retrofit/exception/ServerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p0, Lcom/transsion/retrofit/exception/ServerException;

    invoke-virtual {p1}, Lgu8;->b()I

    move-result v0

    invoke-virtual {p1}, Lgu8;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/retrofit/exception/ServerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p1, Lcom/transsion/retrofit/exception/ServerException;

    const/16 v0, 0x3ed

    invoke-direct {p1, v0, p0}, Lcom/transsion/retrofit/exception/ServerException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lgu8;

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;->apply(Lgu8;)Lcom/transsion/retrofit/reponse/BaseResponse;

    move-result-object p0

    return-object p0
.end method
