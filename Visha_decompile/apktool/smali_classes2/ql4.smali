.class public final synthetic Lql4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Ltl4;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ltl4;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lql4;->b:Ltl4;

    iput-object p2, p0, Lql4;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lql4;->b:Ltl4;

    iget-object p0, p0, Lql4;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Ltl4;->a(Ltl4;Landroid/content/Context;)V

    return-void
.end method
