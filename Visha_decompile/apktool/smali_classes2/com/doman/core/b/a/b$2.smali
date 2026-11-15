.class final Lcom/doman/core/b/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/b/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/doman/core/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/e;


# direct methods
.method public constructor <init>(Lcom/doman/core/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/b/a/b$2;->a:Lcom/doman/core/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/u;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/b/a/b$2;->a:Lcom/doman/core/a/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/doman/core/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/net/u;->a:Lcom/android/net/k;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/net/k;->a:I

    iget-object p0, p0, Lcom/doman/core/b/a/b$2;->a:Lcom/doman/core/a/e;

    invoke-static {p1, v0, p0}, Lcom/doman/core/b/a/b;->a(ILjava/lang/String;Lcom/doman/core/a/e;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/doman/core/b/a/b$2;->a:Lcom/doman/core/a/e;

    const/16 p1, 0x2710

    invoke-static {p1, v0, p0}, Lcom/doman/core/b/a/b;->a(ILjava/lang/String;Lcom/doman/core/a/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
