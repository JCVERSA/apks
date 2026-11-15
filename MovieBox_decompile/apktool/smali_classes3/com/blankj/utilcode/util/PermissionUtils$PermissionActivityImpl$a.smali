.class Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "TYPE"

    .line 2
    .line 3
    iget v1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;->a:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivityImpl$a;->a(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
