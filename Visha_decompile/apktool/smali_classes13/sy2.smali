.class public final synthetic Lsy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lsy2;->b:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
