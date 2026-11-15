.class Lcom/app/hubert/guide/core/Controller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/hubert/guide/core/Controller;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/hubert/guide/core/Controller;

.field final synthetic val$showed:I


# direct methods
.method public constructor <init>(Lcom/app/hubert/guide/core/Controller;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    iput p2, p0, Lcom/app/hubert/guide/core/Controller$1;->val$showed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->a(Lcom/app/hubert/guide/core/Controller;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->a(Lcom/app/hubert/guide/core/Controller;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/app/hubert/guide/core/Controller;->b(Lcom/app/hubert/guide/core/Controller;I)I

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->c(Lcom/app/hubert/guide/core/Controller;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->d(Lcom/app/hubert/guide/core/Controller;)Lse7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->d(Lcom/app/hubert/guide/core/Controller;)Lse7;

    move-result-object v0

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-interface {v0, v1}, Lse7;->a(Lcom/app/hubert/guide/core/Controller;)V

    :cond_0
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->e(Lcom/app/hubert/guide/core/Controller;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v0}, Lcom/app/hubert/guide/core/Controller;->g(Lcom/app/hubert/guide/core/Controller;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller$1;->this$0:Lcom/app/hubert/guide/core/Controller;

    invoke-static {v1}, Lcom/app/hubert/guide/core/Controller;->f(Lcom/app/hubert/guide/core/Controller;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/app/hubert/guide/core/Controller$1;->val$showed:I

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "there is no guide to show!! Please add at least one Page."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
