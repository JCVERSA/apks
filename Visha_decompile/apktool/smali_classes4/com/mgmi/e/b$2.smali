.class Lcom/mgmi/e/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/e/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mgmi/e/b;


# direct methods
.method public constructor <init>(Lcom/mgmi/e/b;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iput-object p2, p0, Lcom/mgmi/e/b$2;->a:Lcom/mgmi/e/c;

    iput-object p3, p0, Lcom/mgmi/e/b$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgmi/e/b$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mgmi/e/b$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/e/b$2;->a:Lcom/mgmi/e/c;

    sget-object v1, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_START:Lcom/mgmi/e/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/e/e;

    iget-object v2, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iget-object v3, p0, Lcom/mgmi/e/b$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgmi/e/b$2;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgmi/e/b$2;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/e/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iget-object v3, p0, Lcom/mgmi/e/b$2;->a:Lcom/mgmi/e/c;

    invoke-static {v2, v1, v3}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_COMPLETE:Lcom/mgmi/e/c;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/e/e;

    iget-object v2, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iget-object v3, p0, Lcom/mgmi/e/b$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgmi/e/b$2;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/mgmi/e/b;->b(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgmi/e/b$2;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/mgmi/e/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iget-object v3, p0, Lcom/mgmi/e/b$2;->a:Lcom/mgmi/e/c;

    invoke-static {v2, v1, v3}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/mgmi/e/c;->CONVERTION_TYPE_START_INSTALL:Lcom/mgmi/e/c;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/mgmi/e/b$2;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/e/e;

    invoke-virtual {v1}, Lcom/mgmi/e/e;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mgmi/e/b$2;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mgmi/e/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iget-object v3, p0, Lcom/mgmi/e/b$2;->a:Lcom/mgmi/e/c;

    invoke-static {v2, v1, v3}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/mgmi/e/c;->CONVERTION_TYPE_INSTALL_COMPLETE:Lcom/mgmi/e/c;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    invoke-static {v0}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/e/e;

    invoke-virtual {v1}, Lcom/mgmi/e/e;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/mgmi/e/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgmi/e/b$2;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mgmi/e/b$2;->e:Lcom/mgmi/e/b;

    iget-object v3, p0, Lcom/mgmi/e/b$2;->a:Lcom/mgmi/e/c;

    invoke-static {v2, v1, v3}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_7
    return-void
.end method
