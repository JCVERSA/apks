.class public Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/BaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$c;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$c;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->x0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;)Lcom/transsion/widgets/RtlViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment$c;->a:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->y0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Z)V

    :cond_0
    return-void
.end method
