.class public final synthetic Lhy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhy2;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-boolean p0, p0, Lhy2;->b:Z

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->k0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
