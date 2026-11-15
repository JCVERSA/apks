.class public Lcom/app/hubert/guide/lifecycle/ListenerFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field public b:Lq54;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq54;)V
    .locals 0

    iput-object p1, p0, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->b:Lq54;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const-string v0, "onDestroy: "

    invoke-static {v0}, Ldq5;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->b:Lq54;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lq54;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object p0, p0, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->b:Lq54;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lq54;->a()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v0, "onStart: "

    invoke-static {v0}, Ldq5;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->b:Lq54;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lq54;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object p0, p0, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->b:Lq54;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lq54;->onStop()V

    :cond_0
    return-void
.end method
