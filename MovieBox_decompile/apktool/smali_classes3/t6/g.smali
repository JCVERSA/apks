.class public Lt6/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private b:Lr6/g;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lt6/g;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lt6/g;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt6/g;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lt6/g;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lt6/g;->e:I

    .line 11
    .line 12
    if-gt p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lt6/g;->b:Lr6/g;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lr6/g;->a()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lr6/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt6/g;->b:Lr6/g;

    .line 2
    .line 3
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt6/g;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt6/g;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt6/g;->d:Z

    .line 2
    .line 3
    return-void
.end method
