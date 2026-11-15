.class public final synthetic Laf/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/d;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Laf/f;->a:Lcom/journeyapps/barcodescanner/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laf/f;->a:Lcom/journeyapps/barcodescanner/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/d;->b(Lcom/journeyapps/barcodescanner/d;Landroid/content/DialogInterface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
