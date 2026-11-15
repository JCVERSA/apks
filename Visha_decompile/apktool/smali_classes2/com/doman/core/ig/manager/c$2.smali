.class final Lcom/doman/core/ig/manager/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/g;

.field final synthetic b:Lcom/doman/core/c/c;

.field final synthetic c:Lcom/doman/core/ig/manager/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Lcom/doman/core/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$2;->c:Lcom/doman/core/ig/manager/c;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$2;->a:Lcom/doman/core/a/g;

    iput-object p3, p0, Lcom/doman/core/ig/manager/c$2;->b:Lcom/doman/core/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$2;->c:Lcom/doman/core/ig/manager/c;

    iget-object v1, p0, Lcom/doman/core/ig/manager/c$2;->a:Lcom/doman/core/a/g;

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$2;->b:Lcom/doman/core/c/c;

    invoke-static {v0, v1, p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Lcom/doman/core/c/c;)V

    return-void
.end method
