.class final Lcom/doman/core/ig/manager/WebService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/WebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/manager/WebService;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/WebService;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/WebService$3;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ltod;)V
    .locals 0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/doman/core/ig/manager/WebService$3;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {p0, p2}, Lcom/doman/core/ig/manager/WebService;->a(Lcom/doman/core/ig/manager/WebService;Ltod;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    :try_start_0
    sget-object p1, Lcom/doman/core/webview/c;->af:Ljava/lang/String;

    invoke-static {p1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/doman/core/ig/manager/WebService$3;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {p0}, Lcom/doman/core/ig/manager/WebService;->a(Lcom/doman/core/ig/manager/WebService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Lyad;)V
    .locals 0

    .line 1
    return-void
.end method
