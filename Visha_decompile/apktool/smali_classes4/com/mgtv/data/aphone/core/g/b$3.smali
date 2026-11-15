.class Lcom/mgtv/data/aphone/core/g/b$3;
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
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mgtv/data/aphone/core/g/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/g/b;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/g/b$3;->c:Lcom/mgtv/data/aphone/core/g/b;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/g/b$3;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/g/b$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/g/b$3;->c:Lcom/mgtv/data/aphone/core/g/b;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/g/b$3;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/g/b$3;->b:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/mgtv/data/aphone/core/g/b;->a(Lcom/mgtv/data/aphone/core/g/b;Ljava/util/HashMap;Landroid/content/Context;)V

    return-void
.end method
