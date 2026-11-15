.class public final synthetic Lg7/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lg7/i;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lg7/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg7/f;->a:Lg7/i;

    .line 5
    .line 6
    iput-object p2, p0, Lg7/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg7/f;->a:Lg7/i;

    .line 2
    .line 3
    iget-object v1, p0, Lg7/f;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg7/i;->a(Lg7/i;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
