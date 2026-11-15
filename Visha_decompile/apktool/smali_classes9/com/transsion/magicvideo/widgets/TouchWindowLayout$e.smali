.class public Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/TouchWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->c:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->d:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->b:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->c:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->d:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->e:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->d:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;->a:Z

    return-void
.end method
