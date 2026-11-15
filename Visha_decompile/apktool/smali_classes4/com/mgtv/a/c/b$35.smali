.class Lcom/mgtv/a/c/b$35;
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

    iput-object p1, p0, Lcom/mgtv/a/c/b$35;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 2

    iget-object p2, p0, Lcom/mgtv/a/c/b$35;->a:Lcom/mgtv/a/c/b;

    iget-object v0, p2, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/mgtv/a/c/b;->s:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-interface {v0, p2, v1, p1}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/b$35;->a:Lcom/mgtv/a/c/b;

    invoke-static {p0}, Lcom/mgtv/a/c/b;->b(Lcom/mgtv/a/c/b;)V

    return-void
.end method
