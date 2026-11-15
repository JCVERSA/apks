.class Lcom/mgmi/ads/api/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/h;->a(Landroid/content/Context;Lcom/mgmi/model/VASTChannelAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

.field final synthetic b:Lcom/mgmi/ads/api/a/h;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/h;Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/h$1;->b:Lcom/mgmi/ads/api/a/h;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/h$1;->a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BANNER containerLayout onAttachedToWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/ads/api/a/h$1;->a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/h$1;->b:Lcom/mgmi/ads/api/a/h;

    iget-object v1, v0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v1, v0}, Lcom/mgtv/a/b/a/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/h$1;->b:Lcom/mgmi/ads/api/a/h;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a;->d()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BANNER containerLayout onDetachedFromWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/h$1;->a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
