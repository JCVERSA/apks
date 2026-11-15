.class public final synthetic Lj20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudiosFragment;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj20;->a:Lcom/transsion/audio/fragments/AudiosFragment;

    iput-object p2, p0, Lj20;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lj20;->a:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object p0, p0, Lj20;->b:Landroid/view/ViewGroup;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/audio/fragments/AudiosFragment;->n2(Lcom/transsion/audio/fragments/AudiosFragment;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
