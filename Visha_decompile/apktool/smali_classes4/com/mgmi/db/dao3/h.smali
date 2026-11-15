.class public Lcom/mgmi/db/dao3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mgmi/db/dao3/h;->a:Ljava/lang/Long;

    .line 4
    iput p2, p0, Lcom/mgmi/db/dao3/h;->b:I

    .line 5
    iput-object p3, p0, Lcom/mgmi/db/dao3/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/db/dao3/h;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/db/dao3/h;->b:I

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/db/dao3/h;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgmi/db/dao3/h;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/mgmi/db/dao3/h;->b:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/h;->c:Ljava/lang/String;

    return-object p0
.end method
