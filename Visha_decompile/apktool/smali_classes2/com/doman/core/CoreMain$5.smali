.class final Lcom/doman/core/CoreMain$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/CoreMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/net/p$b<",
        "Lcom/doman/core/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/doman/core/CoreMain;


# direct methods
.method public constructor <init>(Lcom/doman/core/CoreMain;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain$5;->b:Lcom/doman/core/CoreMain;

    iput-object p2, p0, Lcom/doman/core/CoreMain$5;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/doman/core/a/f;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {p1}, Lcom/doman/core/manager/a;->a(Lcom/doman/core/a/f;)V

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/doman/core/a/f;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    iget-object p1, p0, Lcom/doman/core/CoreMain$5;->b:Lcom/doman/core/CoreMain;

    iget-object v0, p0, Lcom/doman/core/CoreMain$5;->a:Landroid/app/Application;

    invoke-static {p1, v0}, Lcom/doman/core/CoreMain;->b(Lcom/doman/core/CoreMain;Landroid/app/Application;)V

    iget-object p1, p0, Lcom/doman/core/CoreMain$5;->b:Lcom/doman/core/CoreMain;

    invoke-static {p1}, Lcom/doman/core/CoreMain;->d(Lcom/doman/core/CoreMain;)V

    iget-object p0, p0, Lcom/doman/core/CoreMain$5;->b:Lcom/doman/core/CoreMain;

    invoke-static {p0}, Lcom/doman/core/CoreMain;->e(Lcom/doman/core/CoreMain;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
