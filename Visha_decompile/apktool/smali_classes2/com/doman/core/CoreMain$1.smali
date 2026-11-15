.class final Lcom/doman/core/CoreMain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/CoreMain;->onCreate(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Application;

.field final synthetic e:Lcom/doman/core/CoreMain;


# direct methods
.method public constructor <init>(Lcom/doman/core/CoreMain;ZLjava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain$1;->e:Lcom/doman/core/CoreMain;

    iput-boolean p2, p0, Lcom/doman/core/CoreMain$1;->a:Z

    iput-object p3, p0, Lcom/doman/core/CoreMain$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/doman/core/CoreMain$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/doman/core/CoreMain$1;->d:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/doman/core/CoreMain;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/CoreMain$1;->e:Lcom/doman/core/CoreMain;

    invoke-static {v0}, Lcom/doman/core/CoreMain;->a(Lcom/doman/core/CoreMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/doman/core/CoreMain$1;->a:Z

    sput-boolean v0, Lcom/doman/core/CoreMain;->isvip:Z

    iget-object v0, p0, Lcom/doman/core/CoreMain$1;->e:Lcom/doman/core/CoreMain;

    iget-object v1, p0, Lcom/doman/core/CoreMain$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doman/core/CoreMain;->setOAID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/CoreMain$1;->e:Lcom/doman/core/CoreMain;

    iget-object v1, p0, Lcom/doman/core/CoreMain$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doman/core/CoreMain;->setUA(Ljava/lang/String;)V

    invoke-static {}, Lcom/doman/core/d/g;->a()V

    invoke-static {}, Lcom/doman/core/CoreMain;->a()V

    iget-object v0, p0, Lcom/doman/core/CoreMain$1;->e:Lcom/doman/core/CoreMain;

    iget-object v1, p0, Lcom/doman/core/CoreMain$1;->d:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/doman/core/CoreMain;->a(Lcom/doman/core/CoreMain;Landroid/app/Application;)V

    iget-object v0, p0, Lcom/doman/core/CoreMain$1;->d:Landroid/app/Application;

    invoke-static {v0}, Lcom/doman/core/d/m;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/doman/core/CoreMain$1;->e:Lcom/doman/core/CoreMain;

    invoke-static {p0}, Lcom/doman/core/CoreMain;->b(Lcom/doman/core/CoreMain;)Z

    :cond_0
    return-void
.end method
