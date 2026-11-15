.class public Lcom/mgtv/data/aphone/core/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/data/aphone/core/b/a$a;,
        Lcom/mgtv/data/aphone/core/b/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mgtv/data/aphone/core/b/a$b;

.field private c:Lcom/mgtv/data/aphone/core/b/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/b/a;->b:Lcom/mgtv/data/aphone/core/b/a$b;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/mgtv/data/aphone/core/b/a$b;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/b/a;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/b/a;->c:Lcom/mgtv/data/aphone/core/b/a$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/data/aphone/core/b/a$a;->a()V

    :cond_0
    return-void
.end method
