.class public final synthetic Ln01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln01;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln01;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->q1(Lcom/transsion/cloud/fragment/CloudFragment;Ljava/lang/Boolean;)V

    return-void
.end method
