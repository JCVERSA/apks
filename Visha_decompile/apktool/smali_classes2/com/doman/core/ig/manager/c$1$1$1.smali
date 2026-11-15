.class final Lcom/doman/core/ig/manager/c$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/c$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/h;

.field final synthetic b:Lcom/doman/core/ig/manager/c$1$1;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c$1$1;Lcom/doman/core/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$1$1$1;->b:Lcom/doman/core/ig/manager/c$1$1;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$1$1$1;->a:Lcom/doman/core/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1$1$1;->b:Lcom/doman/core/ig/manager/c$1$1;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$1$1;->a:Lcom/doman/core/ig/manager/c$1;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$1$1$1;->a:Lcom/doman/core/a/h;

    invoke-static {v0, p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/h;)V

    sget-object p0, Lcom/doman/core/webview/c;->an:Ljava/lang/String;

    invoke-static {p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
