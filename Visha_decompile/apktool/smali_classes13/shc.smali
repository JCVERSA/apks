.class public final synthetic Lshc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshc;->b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iput-boolean p2, p0, Lshc;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lshc;->b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iget-boolean p0, p0, Lshc;->c:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->u0(Lcom/transsion/sniffer_load/WebBookmarkActivity;ZLandroid/view/View;)V

    return-void
.end method
