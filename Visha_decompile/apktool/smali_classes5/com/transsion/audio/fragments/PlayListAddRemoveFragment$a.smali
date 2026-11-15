.class public Lcom/transsion/audio/fragments/PlayListAddRemoveFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->initTitleBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment$a;->b:Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment$a;->b:Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->O1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    return-void
.end method
