.class public Lqb9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Z

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqb9$a;->e:Z

    iput-object p1, p0, Lqb9$a;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lqb9$a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lqb9$a;->e:Z

    return p0
.end method

.method public getLeftIcon()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lqb9$a;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getMainText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lqb9$a;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getOriginalData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqb9$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public getRightIcon()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lqb9$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSubText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lqb9$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnableDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lqb9$a;->e:Z

    return-void
.end method

.method public setLeftIcon(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lqb9$a;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMainText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lqb9$a;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public setOriginalData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lqb9$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public setRightIcon(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lqb9$a;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lqb9$a;->b:Ljava/lang/CharSequence;

    return-void
.end method
