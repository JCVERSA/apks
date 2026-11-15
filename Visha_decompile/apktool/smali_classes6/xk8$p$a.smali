.class public final Lxk8$p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lxk8$p;
    .locals 3

    new-instance v0, Lxk8$p;

    iget-object v1, p0, Lxk8$p$a;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lxk8$p$a;->b:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lxk8$p;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final b(Z)Lxk8$p$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$p$a;->b:Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lxk8$p$a;
    .locals 0

    iput-object p1, p0, Lxk8$p$a;->a:Ljava/lang/String;

    return-object p0
.end method
