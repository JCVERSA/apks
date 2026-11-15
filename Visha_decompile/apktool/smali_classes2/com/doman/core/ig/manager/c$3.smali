.class final Lcom/doman/core/ig/manager/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/doman/core/c/a;


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

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/doman/core/ig/manager/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c;Lcom/doman/core/a/g;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$3;->e:Lcom/doman/core/ig/manager/c;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iput-object p3, p0, Lcom/doman/core/ig/manager/c$3;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/doman/core/ig/manager/c$3;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/doman/core/ig/manager/c$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v1, Lcom/doman/core/ig/manager/c$3$1;

    invoke-direct {v1, p0}, Lcom/doman/core/ig/manager/c$3$1;-><init>(Lcom/doman/core/ig/manager/c$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
