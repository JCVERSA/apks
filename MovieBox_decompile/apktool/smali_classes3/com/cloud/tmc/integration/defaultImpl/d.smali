.class public final synthetic Lcom/cloud/tmc/integration/defaultImpl/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/kernel/node/Node;

.field public final synthetic b:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lcom/cloud/tmc/kernel/engine/IEngine;

.field public final synthetic e:Lcom/cloud/tmc/kernel/model/CreateParams;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic i:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic m:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->a:Lcom/cloud/tmc/kernel/node/Node;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->b:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->c:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->d:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->e:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->g:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->i:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->j:Lkotlin/jvm/internal/Ref$LongRef;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->k:Lkotlin/jvm/internal/Ref$LongRef;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->l:Lkotlin/jvm/internal/Ref$LongRef;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->m:Landroid/os/Bundle;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->a:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->b:Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->d:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->e:Lcom/cloud/tmc/kernel/model/CreateParams;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->g:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->i:Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->j:Lkotlin/jvm/internal/Ref$LongRef;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->k:Lkotlin/jvm/internal/Ref$LongRef;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->l:Lkotlin/jvm/internal/Ref$LongRef;

    .line 24
    .line 25
    iget-object v12, p0, Lcom/cloud/tmc/integration/defaultImpl/d;->m:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-static/range {v0 .. v12}, Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;->a(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/defaultImpl/RenderFactory;Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
