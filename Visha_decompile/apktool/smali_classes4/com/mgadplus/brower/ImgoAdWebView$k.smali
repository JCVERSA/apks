.class public Lcom/mgadplus/brower/ImgoAdWebView$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/ImgoAdWebView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/brower/ImgoAdWebView;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/ImgoAdWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/ImgoAdWebView$k;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-object p2, p0, Lcom/mgadplus/brower/ImgoAdWebView$k;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-static {p2}, Lcom/mgadplus/brower/ImgoAdWebView;->p(Lcom/mgadplus/brower/ImgoAdWebView;)Lo7d;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/mgadplus/brower/ImgoAdWebView$k;->b:Lcom/mgadplus/brower/ImgoAdWebView;

    invoke-static {p0}, Lcom/mgadplus/brower/ImgoAdWebView;->p(Lcom/mgadplus/brower/ImgoAdWebView;)Lo7d;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Lo7d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
