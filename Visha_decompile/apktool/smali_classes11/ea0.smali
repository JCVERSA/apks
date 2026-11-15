.class public final synthetic Lea0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/fragments/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea0;->a:Lcom/transsion/playercommon/fragments/BaseFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lea0;->a:Lcom/transsion/playercommon/fragments/BaseFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->D(Lcom/transsion/playercommon/fragments/BaseFragment;Ljava/lang/Boolean;)V

    return-void
.end method
