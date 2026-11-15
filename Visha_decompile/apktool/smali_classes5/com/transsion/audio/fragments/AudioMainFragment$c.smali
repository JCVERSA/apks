.class public Lcom/transsion/audio/fragments/AudioMainFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioMainFragment;->startEditMode(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$c;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$c;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, p1, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->C0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$c;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->x0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->selectAll(Z)V

    return-void
.end method
