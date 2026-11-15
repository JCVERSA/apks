.class final Lcom/mgadplus/mgutil/o$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/mgutil/o;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/mgutil/o$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh2d;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    iget-object p0, p0, Lcom/mgadplus/mgutil/o$1;->a:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/o;->f(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v0, "2"

    iget-object p0, p0, Lcom/mgadplus/mgutil/o$1;->a:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/o;->f(Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method
