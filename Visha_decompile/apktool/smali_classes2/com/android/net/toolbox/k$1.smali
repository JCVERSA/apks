.class final Lcom/android/net/toolbox/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/net/p$b<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/net/toolbox/k;


# direct methods
.method public constructor <init>(Lcom/android/net/toolbox/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/net/toolbox/k$1;->b:Lcom/android/net/toolbox/k;

    iput-object p2, p0, Lcom/android/net/toolbox/k$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/net/toolbox/k$1;->b:Lcom/android/net/toolbox/k;

    iget-object p0, p0, Lcom/android/net/toolbox/k$1;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/net/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/toolbox/k$a;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/net/toolbox/k$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0, v1}, Lcom/android/net/toolbox/k;->a(Ljava/lang/String;Lcom/android/net/toolbox/k$a;)V

    :cond_0
    return-void
.end method
