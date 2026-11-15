.class Lcom/mgtv/a/c/b$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$31;->c:Lcom/mgtv/a/c/b;

    iput-object p2, p0, Lcom/mgtv/a/c/b$31;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mgtv/a/c/b$31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/b$31;->c:Lcom/mgtv/a/c/b;

    iget-object v1, p0, Lcom/mgtv/a/c/b$31;->a:Ljava/lang/String;

    iget p0, p0, Lcom/mgtv/a/c/b$31;->b:I

    invoke-static {v0, v1, p0}, Lcom/mgtv/a/c/b;->a(Lcom/mgtv/a/c/b;Ljava/lang/String;I)V

    return-void
.end method
