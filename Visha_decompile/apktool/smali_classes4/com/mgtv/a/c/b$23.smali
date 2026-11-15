.class Lcom/mgtv/a/c/b$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 2

    iget-object p2, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/mgtv/a/c/b;->a(Lcom/mgtv/a/c/b;Z)Z

    iget-object p2, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    invoke-virtual {p2}, Lcom/mgtv/a/c/a;->e()V

    iget-object p2, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/a/c/a;->a(J)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "comment H5 pageReady"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mgmi/model/ADCreativeInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/ADCreativeInfo;

    iput-object p1, p2, Lcom/mgtv/a/c/b;->G:Lcom/mgmi/model/ADCreativeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p1, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ll4d;->f(Landroid/view/View;I)Z

    iget-object p0, p0, Lcom/mgtv/a/c/b$23;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->d()V

    :cond_1
    return-void
.end method
