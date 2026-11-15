.class public Lcom/transsion/audio/fragments/PlayListFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFragment;->h4(Lcom/transsion/dbdata/beans/media/AudioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic c:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/PlayListFragment;->P2(Lcom/transsion/audio/fragments/PlayListFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p0}, Lcom/transsion/audio/fragments/PlayListFragment;->U2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/PlayListFragment;->O2(Lcom/transsion/audio/fragments/PlayListFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p0}, Lcom/transsion/audio/fragments/PlayListFragment;->R2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-boolean p2, p1, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p0}, Lcom/transsion/audio/fragments/PlayListFragment;->S2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_2
    const-string p1, "vd_vmore_remove_cl_check"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkz5;->g(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$d;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p0}, Lcom/transsion/audio/fragments/PlayListFragment;->T2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_0
    return-void
.end method
