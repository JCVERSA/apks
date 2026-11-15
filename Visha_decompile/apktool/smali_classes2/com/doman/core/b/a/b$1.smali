.class final Lcom/doman/core/b/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/b/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/doman/core/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/net/p$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/e;


# direct methods
.method public constructor <init>(Lcom/doman/core/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/b/a/b$1;->a:Lcom/doman/core/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/b/a/b$1;->a:Lcom/doman/core/a/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/doman/core/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/b/a/b$1;->a:Lcom/doman/core/a/e;

    const/16 v0, 0xc8

    invoke-static {v0, p1, p0}, Lcom/doman/core/b/a/b;->a(ILjava/lang/String;Lcom/doman/core/a/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
