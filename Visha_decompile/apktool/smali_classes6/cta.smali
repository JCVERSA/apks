.class public final synthetic Lcta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcta;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iput-object p2, p0, Lcta;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcta;->b:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    iget-object p0, p0, Lcta;->c:Ljava/util/Set;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->a0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method
