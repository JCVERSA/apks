.class public Lol7$d;
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

    iput-object p1, p0, Lol7$d;->d:Lol7;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lol7$d;->d:Lol7;

    iget-object v0, v0, Lol7;->d:Landroid/app/Activity;

    const-class v1, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lol7$d;->d:Lol7;

    iget-object p0, p0, Lol7;->d:Landroid/app/Activity;

    const/16 v0, 0x2329

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
