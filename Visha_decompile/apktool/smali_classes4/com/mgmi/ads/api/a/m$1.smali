.class Lcom/mgmi/ads/api/a/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/m;->b(Lcom/mgmi/ads/api/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/m;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/m$1;->a:Lcom/mgmi/ads/api/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m$1;->a:Lcom/mgmi/ads/api/a/m;

    const/4 v0, 0x0

    const v1, 0xaae61

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a/m;->a(ZI)V

    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/m$1;->a:Lcom/mgmi/ads/api/a/m;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/m;->a(Lcom/mgmi/model/r;)V

    return-void
.end method
