.class public final synthetic Lvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp;->b:Landroid/content/Context;

    iput-object p2, p0, Lvp;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lvp;->b:Landroid/content/Context;

    iget-object p0, p0, Lvp;->c:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1, p2}, Lyp;->f(Landroid/content/Context;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
