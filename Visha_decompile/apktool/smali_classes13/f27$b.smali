.class public Lf27$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf27;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf27$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf27$c;

.field public final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lf27$c;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lf27$b;->b:Lf27$c;

    iput-object p2, p0, Lf27$b;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lf27$b;->b:Lf27$c;

    iget-object p0, p0, Lf27$b;->c:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-interface {p2, p0}, Lf27$c;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x0

    sput-object p0, Lf27;->a:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method
