.class public Lw6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lw6;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw6;-><init>(Lw6$a;)V

    iput-object v0, p0, Lw6$b;->a:Lw6;

    return-void
.end method


# virtual methods
.method public a()Lw6;
    .locals 0

    iget-object p0, p0, Lw6$b;->a:Lw6;

    return-object p0
.end method
