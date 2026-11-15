.class final Lcom/doman/core/ig/manager/c$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/manager/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/manager/c$1;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c$1;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$1$4;->a:Lcom/doman/core/ig/manager/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/u;)V
    .locals 0

    sget-object p1, Lcom/doman/core/webview/c;->ao:Ljava/lang/String;

    invoke-static {p1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$1$4;->a:Lcom/doman/core/ig/manager/c$1;

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;

    move-result-object p0

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->d(Lcom/doman/core/a/i;)V

    return-void
.end method
