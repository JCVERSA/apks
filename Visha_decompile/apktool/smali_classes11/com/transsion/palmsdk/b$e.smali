.class public Lcom/transsion/palmsdk/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/b;->h(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/b$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/transsion/palmsdk/b$e;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0, p0}, Lcom/transsion/palmsdk/b;->e(ILjava/lang/String;ZLjava/lang/String;)V

    const-string p0, "login_flow"

    invoke-static {p0}, Lv34;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/transsion/palmsdk/b$e;->a:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/transsion/palmsdk/b;->f(Lcom/transsion/palmsdk/data/PalmAuthResult;ZLjava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->d(Z)V

    const-string p0, "login_flow"

    invoke-static {p0}, Lv34;->d(Ljava/lang/String;)V

    return-void
.end method
