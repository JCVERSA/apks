.class public Lbz/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/sdk/oneid/data/GroupFpInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbz/g;->a:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lbz/i;
    .locals 3

    .line 1
    invoke-static {}, Lbz/l;->d()Lbz/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbz/l;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lbz/g;->a:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Lbz/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lbz/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
