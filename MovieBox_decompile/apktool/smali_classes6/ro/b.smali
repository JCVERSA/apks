.class public final Lro/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private b:Lro/a;

.field private c:Landroid/text/Editable;

.field private d:Lcom/transsion/publish/api/LinkEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lro/b;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lro/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lro/b;->b:Lro/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroid/text/Editable;
    .locals 1

    .line 1
    iget-object v0, p0, Lro/b;->c:Landroid/text/Editable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lro/b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lcom/transsion/publish/api/LinkEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lro/b;->d:Lcom/transsion/publish/api/LinkEntity;

    .line 2
    .line 3
    return-object v0
.end method
