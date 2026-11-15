.class Lcom/mgtv/data/aphone/core/g/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/g/b;->a(Ljava/util/HashMap;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/mgtv/data/aphone/core/g/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/g/b;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/g/b$1;->c:Lcom/mgtv/data/aphone/core/g/b;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/g/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/g/b$1;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/g/b$1;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/g/b$1;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method
