.class final Lcom/android/net/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/net/toolbox/NetworkImageView$1;->a(Lcom/android/net/toolbox/k$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/net/toolbox/k$c;

.field final synthetic b:Lcom/android/net/toolbox/NetworkImageView$1;


# direct methods
.method public constructor <init>(Lcom/android/net/toolbox/NetworkImageView$1;Lcom/android/net/toolbox/k$c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/net/toolbox/NetworkImageView$1$1;->b:Lcom/android/net/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/android/net/toolbox/NetworkImageView$1$1;->a:Lcom/android/net/toolbox/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/net/toolbox/NetworkImageView$1$1;->b:Lcom/android/net/toolbox/NetworkImageView$1;

    iget-object p0, p0, Lcom/android/net/toolbox/NetworkImageView$1$1;->a:Lcom/android/net/toolbox/k$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/net/toolbox/NetworkImageView$1;->a(Lcom/android/net/toolbox/k$c;Z)V

    return-void
.end method
