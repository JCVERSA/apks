.class Lcom/mgmi/ads/api/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/platform/view/a;

.field final synthetic b:Lcom/mgmi/ads/api/c/a;

.field final synthetic c:Lcom/mgtv/a/b/c$a;

.field final synthetic d:Lcom/mgmi/g/a;

.field final synthetic e:Lh4d;

.field final synthetic f:Lcom/mgmi/ads/api/a/i;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/i;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/i$1;->f:Lcom/mgmi/ads/api/a/i;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/i$1;->a:Lcom/mgmi/platform/view/a;

    iput-object p3, p0, Lcom/mgmi/ads/api/a/i$1;->b:Lcom/mgmi/ads/api/c/a;

    iput-object p4, p0, Lcom/mgmi/ads/api/a/i$1;->c:Lcom/mgtv/a/b/c$a;

    iput-object p5, p0, Lcom/mgmi/ads/api/a/i$1;->d:Lcom/mgmi/g/a;

    iput-object p6, p0, Lcom/mgmi/ads/api/a/i$1;->e:Lh4d;

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
    .locals 8

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/i$1;->f:Lcom/mgmi/ads/api/a/i;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/ads/api/a/i;Ljava/util/List;)Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/mgmi/b/b;->a()Lcom/mgmi/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/a/i$1;->a:Lcom/mgmi/platform/view/a;

    invoke-virtual {v0, v1, p1}, Lcom/mgmi/b/b;->a(Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V

    .line 4
    iget-object v2, p0, Lcom/mgmi/ads/api/a/i$1;->f:Lcom/mgmi/ads/api/a/i;

    iget-object v3, p0, Lcom/mgmi/ads/api/a/i$1;->a:Lcom/mgmi/platform/view/a;

    iget-object v4, p0, Lcom/mgmi/ads/api/a/i$1;->b:Lcom/mgmi/ads/api/c/a;

    iget-object v5, p0, Lcom/mgmi/ads/api/a/i$1;->c:Lcom/mgtv/a/b/c$a;

    iget-object v6, p0, Lcom/mgmi/ads/api/a/i$1;->d:Lcom/mgmi/g/a;

    iget-object v7, p0, Lcom/mgmi/ads/api/a/i$1;->e:Lh4d;

    invoke-static/range {v2 .. v7}, Lcom/mgmi/ads/api/a/i;->a(Lcom/mgmi/ads/api/a/i;Lcom/mgmi/platform/view/a;Lcom/mgmi/ads/api/c/a;Lcom/mgtv/a/b/c$a;Lcom/mgmi/g/a;Lh4d;)V

    :cond_0
    return-void
.end method
