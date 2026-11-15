.class public Lcom/mgmi/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 2
    iput p1, p0, Lcom/mgmi/model/b;->c:I

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lcom/mgmi/model/b;->c:I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgmi/model/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/b;->d:Ljava/lang/String;

    return-void
.end method
