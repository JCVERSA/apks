.class public Lcom/mgadplus/netlib/base/e;
.super Lcgd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgd;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcgd;-><init>()V

    iput-object p1, p0, Lcom/mgadplus/netlib/base/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgadplus/netlib/base/e;->b:I

    return p0
.end method

.method public a(I)Lcom/mgadplus/netlib/base/e;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgadplus/netlib/base/e;->b:I

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/e;->a:Ljava/lang/String;

    return-object p0
.end method
