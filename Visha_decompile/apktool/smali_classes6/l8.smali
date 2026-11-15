.class public final synthetic Ll8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8;->b:Landroidx/fragment/app/DialogFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Ll8;->b:Landroidx/fragment/app/DialogFragment;

    invoke-static {p0, p1}, Lm8;->d(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
