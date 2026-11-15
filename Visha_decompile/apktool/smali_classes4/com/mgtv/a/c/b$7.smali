.class Lcom/mgtv/a/c/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$7;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/c/b$7;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p0, :cond_0

    const-string p1, "0"

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
