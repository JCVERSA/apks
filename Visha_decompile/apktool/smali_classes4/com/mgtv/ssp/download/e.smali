.class public Lcom/mgtv/ssp/download/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgtv/ssp/download/dao3/c;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/download/dao3/c;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/download/dao3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/ssp/download/e;->a:Lcom/mgtv/ssp/download/dao3/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/ssp/download/e;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/mgtv/ssp/download/dao3/c;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/download/e;->a:Lcom/mgtv/ssp/download/dao3/c;

    return-object p0
.end method
