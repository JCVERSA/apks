.class public Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->D0()V
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

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p1, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    instance-of v1, p1, Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-virtual {p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->P0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->H2()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;->b:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-static {p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Z)V

    :goto_0
    return-void
.end method
