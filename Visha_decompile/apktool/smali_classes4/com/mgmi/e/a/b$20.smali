.class Lcom/mgmi/e/a/b$20;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/e/a/b;->e(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/VASTAd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mgmi/e/a/b;


# direct methods
.method public constructor <init>(Lcom/mgmi/e/a/b;Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/e/a/b$20;->c:Lcom/mgmi/e/a/b;

    iput-object p2, p0, Lcom/mgmi/e/a/b$20;->a:Lcom/mgmi/model/VASTAd;

    iput-object p3, p0, Lcom/mgmi/e/a/b$20;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mgadplus/netlib/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/mgmi/e/a/b$20;->c:Lcom/mgmi/e/a/b;

    iget-object p4, p0, Lcom/mgmi/e/a/b$20;->a:Lcom/mgmi/model/VASTAd;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "701."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/mgmi/e/a/b$20;->b:Ljava/lang/String;

    invoke-virtual {p1, p4, p2, p0, p3}, Lcom/mgmi/e/a/b;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
