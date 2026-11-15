.class public Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;
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
    name = "HttpResultFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt74;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;->apply(Ljava/lang/Throwable;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Throwable;)Lmc7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lmc7<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/transsion/retrofit/exception/ExceptionEngine;->handleException(Ljava/lang/Throwable;)Lcom/transsion/retrofit/exception/ApiException;

    move-result-object p0

    invoke-static {p0}, Lmc7;->s(Ljava/lang/Throwable;)Lmc7;

    move-result-object p0

    return-object p0
.end method
