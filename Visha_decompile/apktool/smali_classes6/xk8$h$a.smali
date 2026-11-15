.class public final Lxk8$h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lxk8$h$a;
    .locals 0

    iput p1, p0, Lxk8$h$a;->a:I

    return-object p0
.end method

.method public final b()Lxk8$h;
    .locals 3

    new-instance v0, Lxk8$h;

    iget v1, p0, Lxk8$h$a;->a:I

    iget-boolean p0, p0, Lxk8$h$a;->b:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lxk8$h;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final c(Z)Lxk8$h$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$h$a;->b:Z

    return-object p0
.end method
