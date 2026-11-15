.class public Lcom/transsion/tools/covert/fragments/ConverterMainFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->R0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$e;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$e;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->p0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Lcom/transsion/widgets/RtlViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$e;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->selectAll(Z)V

    :cond_0
    return-void
.end method
