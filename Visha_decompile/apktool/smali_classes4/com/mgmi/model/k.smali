.class public Lcom/mgmi/model/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/mgmi/model/e;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/k;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/mgmi/model/e;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/k;->c:Lcom/mgmi/model/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/k;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/k;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/model/k;->d:Ljava/lang/String;

    return-void
.end method
