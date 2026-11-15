.class public Lcom/hunantv/imgo/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/hunantv/imgo/b/b;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/imgo/b/b$b;->a:Lcom/hunantv/imgo/b/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/b/b$b;->a:Lcom/hunantv/imgo/b/b;

    invoke-static {v0}, Lcom/hunantv/imgo/b/b;->a(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/imgo/b/b$b;->a:Lcom/hunantv/imgo/b/b;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/b/b$b;->a:Lcom/hunantv/imgo/b/b;

    invoke-static {v0}, Lcom/hunantv/imgo/b/b;->a(Landroid/app/Dialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/imgo/b/b$b;->a:Lcom/hunantv/imgo/b/b;

    return-void
.end method
