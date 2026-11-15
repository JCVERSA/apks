.class public abstract Lbcc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbcc;->a:Ljava/util/List;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lbcc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static b(Landroid/app/Application;)V
    .locals 2

    new-instance v0, Lex9;

    invoke-direct {v0, p0}, Lex9;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/transsion/exposure/R$id;->mark:I

    invoke-virtual {v0, p0}, Lex9;->f(I)Lex9;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lex9;->d(J)Lex9;

    move-result-object p0

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lex9;->g(I)Lex9;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lex9;->c(Z)Lex9;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lex9;->b(Z)Lex9;

    move-result-object p0

    invoke-virtual {p0, v0}, Lex9;->e(Z)Lex9;

    move-result-object p0

    new-instance v0, Lbcc$a;

    invoke-direct {v0}, Lbcc$a;-><init>()V

    invoke-virtual {p0, v0}, Lex9;->h(Lcl4$e;)Lex9;

    move-result-object p0

    invoke-virtual {p0}, Lex9;->a()V

    return-void
.end method
