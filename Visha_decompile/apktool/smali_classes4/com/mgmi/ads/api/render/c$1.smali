.class Lcom/mgmi/ads/api/render/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/render/c;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/render/c;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/render/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/c$1;->a:Lcom/mgmi/ads/api/render/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgmi/ads/api/render/c$1;->a:Lcom/mgmi/ads/api/render/c;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/render/c;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mgmi/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/render/c$1;->a:Lcom/mgmi/ads/api/render/c;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/render/c;->b()V

    return-void
.end method
