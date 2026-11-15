.class public final synthetic Lfc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Lcom/transsion/log/upload/SendUbtRunnable;

.field public final synthetic e:I

.field public final synthetic f:[J


# direct methods
.method public synthetic constructor <init>(ILjava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfc9;->b:I

    iput-object p2, p0, Lfc9;->c:Ljava/io/File;

    iput-object p3, p0, Lfc9;->d:Lcom/transsion/log/upload/SendUbtRunnable;

    iput p4, p0, Lfc9;->e:I

    iput-object p5, p0, Lfc9;->f:[J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lfc9;->b:I

    iget-object v1, p0, Lfc9;->c:Ljava/io/File;

    iget-object v2, p0, Lfc9;->d:Lcom/transsion/log/upload/SendUbtRunnable;

    iget v3, p0, Lfc9;->e:I

    iget-object p0, p0, Lfc9;->f:[J

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->c(ILjava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[J)V

    return-void
.end method
