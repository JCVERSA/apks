.class public Lcom/transsion/sniffer_load/WebActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$b;->b:Lcom/transsion/sniffer_load/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity$b;->b:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 p0, 0x1

    const-string p1, "vd_dl_net_set_cl"

    invoke-static {p0, p1}, Ldz5;->b(ILjava/lang/String;)V

    return-void
.end method
