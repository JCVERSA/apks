.class Lcom/mgmi/platform/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/b/b;->a(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mgmi/platform/b/b;


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/b/b;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/b/b$1;->c:Lcom/mgmi/platform/b/b;

    iput-object p2, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    iput-object p3, p0, Lcom/mgmi/platform/b/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/platform/b/b$1;->c:Lcom/mgmi/platform/b/b;

    iget-object v1, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/mgmi/platform/b/b;->a(Lcom/mgmi/platform/b/b;Landroid/app/Application;)V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/mgmi/platform/b/b$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/platform/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/platform/b/b$1;->c:Lcom/mgmi/platform/b/b;

    iget-object v1, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/mgmi/platform/b/b;->a(Lcom/mgmi/platform/b/b;Landroid/content/Context;)V

    invoke-static {}, Lcom/mgmi/d/a;->a()Lcom/mgmi/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/mgmi/d/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-static {v0}, Lmpd;->D(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-static {v0}, Lx1d;->a(Landroid/content/Context;)Lx1d;

    move-result-object v0

    invoke-virtual {v0}, Lx1d;->c()V

    iget-object p0, p0, Lcom/mgmi/platform/b/b$1;->a:Landroid/app/Application;

    invoke-static {p0}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    return-void
.end method
