.class public Lcom/transsion/palmsdk/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/b;->i(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/b$g;->a:Z

    iput-object p2, p0, Lcom/transsion/palmsdk/b$g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/palmsdk/b$g;->a:Z

    iget-object p0, p0, Lcom/transsion/palmsdk/b$g;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0, p0}, Lcom/transsion/palmsdk/b;->e(ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/palmsdk/b$g;->a:Z

    iget-object p0, p0, Lcom/transsion/palmsdk/b$g;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/transsion/palmsdk/b;->f(Lcom/transsion/palmsdk/data/PalmAuthResult;ZLjava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/b$g;->a:Z

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->d(Z)V

    return-void
.end method
