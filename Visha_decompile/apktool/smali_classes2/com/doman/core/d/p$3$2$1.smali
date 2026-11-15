.class final Lcom/doman/core/d/p$3$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/d/p$3$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/doman/core/d/p$3$2;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/p$3$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/p$3$2$1;->b:Lcom/doman/core/d/p$3$2;

    iput-object p2, p0, Lcom/doman/core/d/p$3$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/doman/core/d/p$3$2$1;->b:Lcom/doman/core/d/p$3$2;

    iget-object v0, v0, Lcom/doman/core/d/p$3$2;->c:Lcom/doman/core/d/p$3;

    iget-object v0, v0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/doman/core/d/p$3$2$1;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/doman/core/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
