.class public Lcom/transsion/retrofit/exception/ServerException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final code:I

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/transsion/retrofit/exception/ServerException;->code:I

    iput-object p2, p0, Lcom/transsion/retrofit/exception/ServerException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/exception/ServerException;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/exception/ServerException;->msg:Ljava/lang/String;

    return-object p0
.end method
