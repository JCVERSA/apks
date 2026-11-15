.class public final synthetic Ldhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhc;->a:Lcom/transsion/sniffer_load/WebActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldhc;->a:Lcom/transsion/sniffer_load/WebActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->s0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/Integer;)V

    return-void
.end method
