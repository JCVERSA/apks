.class public Lcom/transsion/sniffer_load/fragment/SearchFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$a;->b:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "dl_brower_address_input"

    const-wide/16 p1, 0x246c

    const/4 p3, 0x0

    invoke-static {p3, p0, p1, p2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
