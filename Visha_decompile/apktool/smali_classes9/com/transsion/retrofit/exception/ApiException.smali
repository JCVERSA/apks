.class public Lcom/transsion/retrofit/exception/ApiException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private code:I

.field private displayMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/transsion/retrofit/exception/ApiException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/exception/ApiException;->code:I

    return p0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/exception/ApiException;->displayMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/exception/ApiException;->displayMessage:Ljava/lang/String;

    return-void
.end method
