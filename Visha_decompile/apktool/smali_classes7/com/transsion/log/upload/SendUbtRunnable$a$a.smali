.class public final Lcom/transsion/log/upload/SendUbtRunnable$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/upload/SendUbtRunnable$a;->b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/log/upload/SendUbtRunnable;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:[J

.field public final synthetic g:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/transsion/log/upload/SendUbtRunnable;Ljava/lang/String;Ljava/io/File;II[JLjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->a:Lcom/transsion/log/upload/SendUbtRunnable;

    iput-object p2, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->c:Ljava/io/File;

    iput p4, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->d:I

    iput p5, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->e:I

    iput-object p6, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->f:[J

    iput-object p7, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->g:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(ILjava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->d(ILjava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[J)V

    return-void
.end method

.method public static final d(ILjava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[J)V
    .locals 0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, p2, p3, p4, p0}, Lcom/transsion/log/upload/SendUbtRunnable;->access$sendLog$doUpload(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[JI)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V
    .locals 9

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->d:I

    iget v0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->e:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->f:[J

    aget-wide v0, v0, p1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget v4, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->d:I

    iget-object v5, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->g:Ljava/io/File;

    iget-object v6, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->a:Lcom/transsion/log/upload/SendUbtRunnable;

    iget v7, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->e:I

    iget-object v8, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->f:[J

    new-instance p0, Lfc9;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lfc9;-><init>(ILjava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;I[J)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->a:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-static {p0}, Lcom/transsion/log/upload/SendUbtRunnable;->access$getMSendLogCallback$p(Lcom/transsion/log/upload/SendUbtRunnable;)Lec9;

    :goto_0
    return-void
.end method

.method public b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/log/upload/net/RequestManager;->a:Lcom/transsion/log/upload/net/RequestManager;

    new-instance v0, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;

    iget-object v1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->a:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/upload/SendUbtRunnable$a$a$a;-><init>(Ljava/io/File;Lcom/transsion/log/upload/SendUbtRunnable;)V

    iget-object v1, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->a:Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-static {v1}, Lcom/transsion/log/upload/SendUbtRunnable;->access$getMSendAction$p$s346984188(Lcom/transsion/log/upload/SendUbtRunnable;)Lyb9;

    move-result-object v1

    invoke-virtual {v1}, Lyb9;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFeedbackId(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/log/upload/SendUbtRunnable$a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/log/upload/net/RequestManager;->f(Lcs4;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
