.class Lcom/mgtv/a/c/b$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$13;->b:Lcom/mgtv/a/c/b;

    iput-object p2, p0, Lcom/mgtv/a/c/b$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/a/c/b$13;->b:Lcom/mgtv/a/c/b;

    invoke-static {v0}, Lcom/mgtv/a/c/b;->b(Lcom/mgtv/a/c/b;)V

    invoke-static {}, Lcom/mgmi/e/d;->a()Lcom/mgmi/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/c/b$13;->b:Lcom/mgtv/a/c/b;

    iget-object v1, v1, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    iget-object p0, p0, Lcom/mgtv/a/c/b$13;->a:Ljava/lang/String;

    const-string v2, "\u52a0\u8f7d\u5728\u7ebfwebp\u5931\u8d25"

    const v3, 0x497ce

    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/m;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
