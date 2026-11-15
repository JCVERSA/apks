.class public Lol7$e;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lol7;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lol7;


# direct methods
.method public constructor <init>(Lol7;)V
    .locals 0

    iput-object p1, p0, Lol7$e;->d:Lol7;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lol7$e;->d:Lol7;

    iget-object p1, p1, Lol7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lol7$e;->d:Lol7;

    invoke-virtual {p0}, Lol7;->e()V

    return-void
.end method
