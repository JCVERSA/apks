.class public Lcom/mgmi/db/dao3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->a:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lcom/mgmi/db/dao3/e;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/mgmi/db/dao3/e;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/mgmi/db/dao3/e;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/mgmi/db/dao3/e;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/mgmi/db/dao3/e;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/mgmi/db/dao3/e;->g:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/mgmi/db/dao3/e;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->a:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/e;->d:Ljava/lang/String;

    return-object p0
.end method
