.class public Lcom/transsion/onlinevideo/home/OnlineHomeFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$c;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$c;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->scrollToTop()V

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method
