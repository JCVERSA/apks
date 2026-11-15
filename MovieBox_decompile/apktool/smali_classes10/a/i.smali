.class public final La/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:La/k;


# direct methods
.method public constructor <init>(La/k;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/i;->a:La/k;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 441
    iget-object p1, p0, La/i;->a:La/k;

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p1, La/k;->f:Z

    return-void
.end method
