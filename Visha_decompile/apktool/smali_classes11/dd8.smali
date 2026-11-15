.class public final synthetic Ldd8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lfd8;


# direct methods
.method public synthetic constructor <init>(Lfd8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd8;->b:Lfd8;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Ldd8;->b:Lfd8;

    invoke-static {p0}, Lfd8;->b(Lfd8;)V

    return-void
.end method
