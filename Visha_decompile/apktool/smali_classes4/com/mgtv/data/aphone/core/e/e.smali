.class public Lcom/mgtv/data/aphone/core/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/d/b;


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field private static c:Lcom/mgtv/data/aphone/core/e/e;


# instance fields
.field private d:Z

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mgtv/data/aphone/core/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/data/aphone/core/e/e;->d:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/e/e;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/mgtv/data/aphone/core/e/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/data/aphone/core/e/e;->c:Lcom/mgtv/data/aphone/core/e/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mgtv/data/aphone/core/e/e;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/e/e;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/e/e;->c:Lcom/mgtv/data/aphone/core/e/e;

    .line 3
    :cond_0
    sget-object v0, Lcom/mgtv/data/aphone/core/e/e;->c:Lcom/mgtv/data/aphone/core/e/e;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/mgtv/data/aphone/core/a/b;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/a/b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 5
    invoke-static {}, Lcom/mgtv/data/aphone/core/e/a;->a()Lcom/mgtv/data/aphone/core/e/a;

    move-result-object p0

    sget-object v0, Lcom/mgtv/data/aphone/core/e/e;->c:Lcom/mgtv/data/aphone/core/e/e;

    invoke-virtual {p0, v0}, Lcom/mgtv/data/aphone/core/e/a;->a(Lcom/mgtv/data/aphone/core/d/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 6
    const-string p0, "big_data_sdk"

    const-string p1, "@@@@@@@@@@@@@@@@@ onActivityStarted "

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 7
    const-string p0, "big_data_sdk"

    const-string p1, "@@@@@@@@@@@@@@@@@ onActivityCreated "

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "big_data_sdk"

    const-string v1, "@@@@@@@@@@@@@@@@@ onActivityResumed "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/e/e;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/mgtv/data/aphone/core/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/b/a;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/mgtv/data/aphone/core/b/a;->a(Landroid/app/Activity;)V

    .line 5
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/e;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 6
    const-string p0, "big_data_sdk"

    const-string p1, "@@@@@@@@@@@@@@@@@ onActivitySaveInstanceState "

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "big_data_sdk"

    const-string v1, "@@@@@@@@@@@@@@@@@ onActivityPaused "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/e;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/b/a;->a()V

    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "big_data_sdk"

    const-string v1, "@@@@@@@@@@@@@@@@@ onActivityDestroyed "

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/data/aphone/core/e/e;->d:Z

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/e/e;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/b/a;->b()V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/e;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "big_data_sdk"

    const-string p1, "@@@@@@@@@@@@@@@@@ onActivityStopped "

    invoke-static {p0, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
