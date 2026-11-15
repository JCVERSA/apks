.class public Lcom/transsion/sniffer_load/fragment/MultiWebFragment$a;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/fragment/MultiWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$a;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$a;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->i0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$a;->a:Lcom/transsion/sniffer_load/fragment/MultiWebFragment;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p0()V

    return-void
.end method
