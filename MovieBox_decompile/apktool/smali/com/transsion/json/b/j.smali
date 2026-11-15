.class public Lcom/transsion/json/b/j;
.super Lcom/transsion/json/b/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/json/b/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "null"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/transsion/json/h;->r(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
