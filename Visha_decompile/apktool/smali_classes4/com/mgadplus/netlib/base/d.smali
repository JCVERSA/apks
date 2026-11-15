.class public Lcom/mgadplus/netlib/base/d;
.super Lwed;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/mgadplus/netlib/base/c;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mgadplus/netlib/base/c;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgadplus/netlib/base/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lwed;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/netlib/base/d;->c:I

    iput v0, p0, Lcom/mgadplus/netlib/base/d;->d:I

    iput-object p1, p0, Lcom/mgadplus/netlib/base/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgadplus/netlib/base/d;->b:Lcom/mgadplus/netlib/base/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgadplus/netlib/base/d;->c:I

    return p0
.end method

.method public a(I)Lcom/mgadplus/netlib/base/d;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgadplus/netlib/base/d;->c:I

    return-object p0
.end method

.method public b(I)Lcom/mgadplus/netlib/base/d;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgadplus/netlib/base/d;->d:I

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/netlib/base/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/mgadplus/netlib/base/d;->d:I

    return p0
.end method
