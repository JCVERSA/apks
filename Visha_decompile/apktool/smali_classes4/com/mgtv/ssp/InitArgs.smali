.class public Lcom/mgtv/ssp/InitArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cToken:Ljava/lang/String;

.field mid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/InitArgs;->mid:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mgtv/ssp/InitArgs;->cToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/mgtv/ssp/InitArgs;->mid:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/mgtv/ssp/InitArgs;->cToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/mgtv/ssp/InitArgs;->mid:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/mgtv/ssp/InitArgs;->cToken:Ljava/lang/String;

    return-void
.end method
