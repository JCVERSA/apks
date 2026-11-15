.class Lcom/mgtv/ssp/auth/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/auth/a$1;->b(Lcom/mgtv/ssp/bean/InitBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/auth/a$1;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/auth/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/auth/a$1$1;->a:Lcom/mgtv/ssp/auth/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/auth/a$1$1;->a:Lcom/mgtv/ssp/auth/a$1;

    iget-object v0, v0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgtv/ssp/auth/a;->b(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/mgtv/ssp/auth/a$1$1;->a:Lcom/mgtv/ssp/auth/a$1;

    iget-object p0, p0, Lcom/mgtv/ssp/auth/a$1;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgtv/ssp/auth/a;->a(Landroid/content/Context;)V

    return-void
.end method
