.class public Lcom/transsion/palmsdk/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/b;->E(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/b$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/palmsdk/b$d;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/palmsdk/b;->b:Lcom/transsion/dbdata/beans/VishaPalmUserInfo;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/transsion/dbdata/beans/VishaPalmUserInfo;->access_token:Ljava/lang/String;

    invoke-static {p1}, Lzdc;->q(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/palmsdk/b$d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/palmsdk/b$d;->b:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/b$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/b$d;->b(Ljava/lang/String;)V

    return-void
.end method
