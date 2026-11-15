.class public final Lcom/doman/core/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/doman/core/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/doman/core/d/b;->a()Lcom/doman/core/d/b;

    const-string v0, "INIT_CONFIG_BEAN"

    invoke-static {v0}, Lcom/doman/core/d/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doman/core/a/f;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/doman/core/a/f;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/doman/core/a/f;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object v2

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
