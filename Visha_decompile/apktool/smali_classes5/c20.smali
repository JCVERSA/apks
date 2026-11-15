.class public final synthetic Lc20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc20;->a:Lcom/transsion/audio/fragments/AudiosFragment;

    return-void
.end method


# virtual methods
.method public final canChildScrollUp(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lc20;->a:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/fragments/AudiosFragment;->j2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
