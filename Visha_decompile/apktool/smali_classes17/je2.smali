.class public final synthetic Lje2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lje2;->b:Le74;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lje2;->b:Le74;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->e(Le74;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
