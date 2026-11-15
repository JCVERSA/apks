.class public final synthetic Lga0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/BaseFragment;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga0;->b:Lcom/transsion/playercommon/fragments/BaseFragment;

    iput-object p2, p0, Lga0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lga0;->b:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object p0, p0, Lga0;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->F(Lcom/transsion/playercommon/fragments/BaseFragment;Landroid/view/View;)V

    return-void
.end method
