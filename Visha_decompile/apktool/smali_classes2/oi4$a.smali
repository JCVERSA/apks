.class public final Loi4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lwx9;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Loi4$a;->a:Lwx9;

    return-void
.end method


# virtual methods
.method public a()Loi4;
    .locals 1

    new-instance v0, Loi4;

    iget-object p0, p0, Loi4$a;->a:Lwx9;

    invoke-direct {v0, p0}, Loi4;-><init>(Lwx9;)V

    return-object v0
.end method

.method public b(Lwx9;)Loi4$a;
    .locals 0

    iput-object p1, p0, Loi4$a;->a:Lwx9;

    return-object p0
.end method
