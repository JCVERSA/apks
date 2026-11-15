.class public final synthetic Lft1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:[Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>([Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lft1;->b:[Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lft1;->b:[Landroid/widget/EditText;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/datepicker/DateSelector;->k([Landroid/widget/EditText;Landroid/view/View;Z)V

    return-void
.end method
