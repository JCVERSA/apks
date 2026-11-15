.class public Lcom/transsion/palmsdk/exception/PalmServerException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/transsion/palmsdk/exception/PalmServerException;->errorCode:I

    iput-object p2, p0, Lcom/transsion/palmsdk/exception/PalmServerException;->errorMessage:Ljava/lang/String;

    return-void
.end method
