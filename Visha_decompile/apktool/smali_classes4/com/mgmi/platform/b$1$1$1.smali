.class Lcom/mgmi/platform/b$1$1$1;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/b$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/netlib/base/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgmi/platform/b$1$1;


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/b$1$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/b$1$1$1;->b:Lcom/mgmi/platform/b$1$1;

    iput-object p2, p0, Lcom/mgmi/platform/b$1$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mgadplus/netlib/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgmi/platform/b$1$1$1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/mgmi/platform/b$1$1$1;->b:Lcom/mgmi/platform/b$1$1;

    iget-object p1, p1, Lcom/mgmi/platform/b$1$1;->a:Lcom/mgmi/platform/b$1;

    iget-object p1, p1, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/mgmi/platform/b$1$1$1;->a:Ljava/lang/String;

    invoke-static {p0}, Lqwd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mgmi_app_store_cache"

    invoke-static {p1, v0, p0}, Lu3d;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
