.class public Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz9d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;->b:Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lued;

    invoke-direct {v0}, Lued;-><init>()V

    iget-object v1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lued;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lued;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c$a;->b:Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;->a:Lcom/mgadplus/brower/jsbridge/BridgeWebView;

    invoke-static {p0, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->e(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Lued;)V

    return-void
.end method
