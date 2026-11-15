.class public final synthetic Lthc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lthc;->b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iput-object p2, p0, Lthc;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lthc;->b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iget-object p0, p0, Lthc;->c:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->z0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
