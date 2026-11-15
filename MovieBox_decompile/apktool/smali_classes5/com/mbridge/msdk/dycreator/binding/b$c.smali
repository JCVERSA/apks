.class Lcom/mbridge/msdk/dycreator/binding/b$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/viewobserver/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/dycreator/binding/b;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mbridge/msdk/dycreator/binding/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/binding/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b$c;->b:Lcom/mbridge/msdk/dycreator/binding/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$c;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$c;->a:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/binding/b$c;->b:Lcom/mbridge/msdk/dycreator/binding/b;

    .line 8
    .line 9
    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    .line 10
    .line 11
    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/dycreator/binding/b;->c(Lcom/mbridge/msdk/dycreator/binding/b;Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "MBDataBinding"

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method
