.class public final synthetic Lma2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lww4;


# direct methods
.method public synthetic constructor <init>(Lww4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma2;->b:Lww4;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lma2;->b:Lww4;

    invoke-static {p0, p1}, Lwa2$a;->e(Lww4;Landroid/content/DialogInterface;)V

    return-void
.end method
