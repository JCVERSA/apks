.class public final Lcom/doman/core/ig/manager/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/manager/b;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/b$1;->a:Lcom/doman/core/ig/manager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/doman/core/ig/manager/b$1;->a:Lcom/doman/core/ig/manager/b;

    invoke-static {v0}, Lcom/doman/core/ig/manager/b;->a(Lcom/doman/core/ig/manager/b;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/doman/core/ig/manager/b$1;->a:Lcom/doman/core/ig/manager/b;

    invoke-static {p0}, Lcom/doman/core/ig/manager/b;->b(Lcom/doman/core/ig/manager/b;)J

    invoke-static {v0, v1}, Lcom/doman/core/ig/manager/b;->a(Lcom/doman/core/ig/manager/b;Ljava/lang/String;)V

    return-void
.end method
