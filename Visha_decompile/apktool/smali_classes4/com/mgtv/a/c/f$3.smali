.class Lcom/mgtv/a/c/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/f;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/f$3;->a:Lcom/mgtv/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    iget-object p0, p0, Lcom/mgtv/a/c/f$3;->a:Lcom/mgtv/a/c/f;

    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    const v1, 0x497cd

    const-string v2, ""

    invoke-interface {v0, p0, v1, v2}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
