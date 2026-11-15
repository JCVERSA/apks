.class Lcom/mgtv/a/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/b/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/b/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/b/c$1;->a:Lcom/mgtv/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/b/c$1;->a:Lcom/mgtv/a/b/c;

    invoke-static {p0, p1}, Lcom/mgtv/a/b/c;->a(Lcom/mgtv/a/b/c;Lcom/mgmi/model/r;)V

    return-void
.end method
