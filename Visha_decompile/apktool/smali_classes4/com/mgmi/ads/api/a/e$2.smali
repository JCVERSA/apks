.class Lcom/mgmi/ads/api/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/e;->c(Lcom/mgmi/model/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/r;

.field final synthetic b:Lcom/mgmi/ads/api/a/e;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/e;Lcom/mgmi/model/r;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e$2;->b:Lcom/mgmi/ads/api/a/e;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/e$2;->a:Lcom/mgmi/model/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e$2;->b:Lcom/mgmi/ads/api/a/e;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/e;->g:Lcom/mgmi/ads/api/a/e$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e$2;->a:Lcom/mgmi/model/r;

    invoke-interface {v0, p0}, Lcom/mgmi/ads/api/a/e$a;->a(Lcom/mgmi/model/r;)V

    return-void
.end method
