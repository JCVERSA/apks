.class public final synthetic Ls58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls58;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Ls58;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->A2(Lcom/transsion/audio/fragments/PlayListFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
