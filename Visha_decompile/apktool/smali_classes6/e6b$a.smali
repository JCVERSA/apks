.class public Le6b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6b;->c(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le6b;


# direct methods
.method public constructor <init>(Le6b;)V
    .locals 0

    iput-object p1, p0, Le6b$a;->b:Le6b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Le6b$a;->b:Le6b;

    invoke-static {p2}, Le6b;->a(Le6b;)Le6b$c;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Le6b$a;->b:Le6b;

    invoke-static {p0}, Le6b;->a(Le6b;)Le6b$c;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Le6b$c;->a(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
