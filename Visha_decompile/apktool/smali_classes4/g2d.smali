.class public Lg2d;
.super Lwed;
.source "SourceFile"


# instance fields
.field public e:Lr7d;

.field public f:Lcom/mgmi/db/dao3/c;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/mgmi/db/dao3/c;)V
    .locals 0

    invoke-direct {p0}, Lwed;-><init>()V

    iput-object p1, p0, Lg2d;->f:Lcom/mgmi/db/dao3/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg2d;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lr7d;)V
    .locals 0

    iput-object p1, p0, Lg2d;->e:Lr7d;

    return-void
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lg2d;->g:Z

    return p0
.end method

.method public e()Lr7d;
    .locals 0

    iget-object p0, p0, Lg2d;->e:Lr7d;

    return-object p0
.end method

.method public f()Lcom/mgmi/db/dao3/c;
    .locals 0

    iget-object p0, p0, Lg2d;->f:Lcom/mgmi/db/dao3/c;

    return-object p0
.end method
