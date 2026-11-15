.class public Lcom/mgmi/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/mgmi/c/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/c/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mgmi/c/a/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgmi/c/a/a;->c:Lcom/mgmi/c/a/b;

    iput-object p1, p0, Lcom/mgmi/c/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/c/a/a;)Lcom/mgmi/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/c/a/a;->c:Lcom/mgmi/c/a/b;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgmi/c/a/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/c/a/a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/c/a/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mgmi/c/a/a;->a:Ljava/lang/String;

    new-instance v2, Lcom/mgmi/c/a/a$1;

    invoke-direct {v2, p0}, Lcom/mgmi/c/a/a$1;-><init>(Lcom/mgmi/c/a/a;)V

    invoke-static {v0, v1, v2}, Ley4;->b(Landroid/content/Context;Ljava/lang/String;Lsed;)V

    return-void
.end method
