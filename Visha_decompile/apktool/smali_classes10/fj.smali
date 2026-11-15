.class public final synthetic Lfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

.field public final synthetic c:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;


# direct methods
.method public synthetic constructor <init>(Lorg/greenrobot/eventbus/util/AsyncExecutor;Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfj;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    iput-object p2, p0, Lfj;->c:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfj;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    iget-object p0, p0, Lfj;->c:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    invoke-static {v0, p0}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->a(Lorg/greenrobot/eventbus/util/AsyncExecutor;Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V

    return-void
.end method
