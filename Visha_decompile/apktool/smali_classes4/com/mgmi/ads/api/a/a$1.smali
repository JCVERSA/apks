.class Lcom/mgmi/ads/api/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/a;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/a$a;

.field final synthetic b:Lcom/mgmi/ads/api/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/a;Lcom/mgmi/ads/api/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/a$1;->b:Lcom/mgmi/ads/api/a/a;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/a$1;->a:Lcom/mgmi/ads/api/a/a$a;

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
    iget-object p0, p0, Lcom/mgmi/ads/api/a/a$1;->a:Lcom/mgmi/ads/api/a/a$a;

    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/a$a;->a(Lcom/mgmi/model/r;)V

    return-void
.end method
