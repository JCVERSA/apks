.class Lcom/transsion/json/b/p$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/json/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/transsion/json/b/p;


# direct methods
.method constructor <init>(Lcom/transsion/json/b/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/json/b/p$a;->b:Lcom/transsion/json/b/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/json/b/p$a;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/b/p$a;->a:Z

    .line 2
    .line 3
    return v0
.end method
