.class public Lcom/mgadplus/brower/ImgoAdWebView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/ImgoAdWebView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mgadplus/brower/ImgoAdWebView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/ImgoAdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView$h;->a:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/brower/ImgoAdWebView$h;->a:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-static {v0}, Lcom/mgadplus/brower/ImgoAdWebView;->r(Lcom/mgadplus/brower/ImgoAdWebView;)Ly9d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView$h;->a:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-static {p0}, Lcom/mgadplus/brower/ImgoAdWebView;->r(Lcom/mgadplus/brower/ImgoAdWebView;)Ly9d;

    move-result-object p0

    invoke-virtual {p0, p1}, Ly9d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lz9d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
