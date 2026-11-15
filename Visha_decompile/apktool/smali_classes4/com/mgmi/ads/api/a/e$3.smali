.class Lcom/mgmi/ads/api/a/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/e;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/e;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e$3;->a:Lcom/mgmi/ads/api/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e$3;->a:Lcom/mgmi/ads/api/a/e;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->g:Lcom/mgmi/ads/api/a/e$a;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/e$a;->a()V

    return-void
.end method
