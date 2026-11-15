.class public final synthetic Lgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lgs;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->i0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
